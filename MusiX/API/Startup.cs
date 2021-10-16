using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using API.DataAccess;
using API.Services;
using API.DataAccess.Repositories;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using API.Utils;
using System.Threading.Tasks;
using API.Models;

namespace API
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }
        public string IdentityDatabaseConnectionString { get; set; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Connection strings for the Identity database
#if DEBUG
            IdentityDatabaseConnectionString = Configuration.GetConnectionString("LocalIdentityDatabaseConnection");
#else
            IdentityDatabaseConnectionString = Configuration.GetConnectionString("LiveIdentityDatabaseConnection");
#endif

            // Allow cors
            services.AddCors(options =>
            {
                options.AddPolicy("CorsPolicy",
                builder => builder.AllowAnyOrigin()
                                  .AllowAnyMethod()
                                  .AllowAnyHeader());
            });

            // Database connection for identity
            services.AddDbContext<IdentityDatabaseContext>(options => options.UseMySql(IdentityDatabaseConnectionString, 
                ServerVersion.AutoDetect(IdentityDatabaseConnectionString)));

            // Default identity user
            services.AddIdentity<IdentityUser, IdentityRole>(options =>
            {
                // Paswword must be atleast 8 characters long
                // must contain a digit, uppercase, lowercase and 1 special character
                options.Password.RequiredLength = 8;
                options.Password.RequireDigit = true;
                options.Password.RequireUppercase = true;
                options.Password.RequiredUniqueChars = 1;
                options.Password.RequireLowercase = true;
            }).AddEntityFrameworkStores<IdentityDatabaseContext>()
               .AddDefaultTokenProviders();

            // JWT setup
            services.AddAuthentication(x => {
                x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            }).AddJwtBearer(x => {
                x.RequireHttpsMetadata = false;
                x.SaveToken = true;
                x.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(Configuration["JwtKey"])),
                    ValidateIssuer = false,
                    ValidateAudience = false
                };
            });

            // JWT Configuration
            JwtConfiguration.Init(Configuration);

            services.AddControllers()
                .AddNewtonsoftJson(options =>
                {
                    options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                });

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "API", Version = "v1" });
            });

            //Services
            services.AddTransient<RegistrationService>();
            services.AddTransient<AuthenticationService>();

            services.AddTransient<MailService>();

            //Repositories
            services.AddTransient<RegistrationRepository>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IServiceProvider serviceProvider)
        {
            app.UseCors("CorsPolicy");

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "API v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthentication();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            Init(serviceProvider).Wait();
        }

        private static async Task Init(IServiceProvider serviceProvider)
        {
            var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
            var userManager = serviceProvider.GetRequiredService<UserManager<IdentityUser>>();
            var database = serviceProvider.GetRequiredService<RegistrationRepository>();

            // Add general role
            if (!await roleManager.RoleExistsAsync("general"))
                await roleManager.CreateAsync(new IdentityRole("general"));

            // Add administrator role
            if (!await roleManager.RoleExistsAsync("administrator"))
                await roleManager.CreateAsync(new IdentityRole("administrator"));

            // Create admin identity user
            if (await userManager.FindByNameAsync("admin") == null)
            {
                var user = new IdentityUser
                {
                    Email = "fontys.musix@gmail.com",
                    UserName = "admin"
                };

                await userManager.CreateAsync(user, password: "AbC1@DeF");

                // Add admin identity user to administrator role
                await userManager.AddToRoleAsync(user, "administrator");
            }

            // Create admin musix user
            if (await database.GetUserModelByUsername("admin") == null)
            {
                await database.AddUserModel(new UserModel
                {
                    CreationDate = DateTime.Now,
                    UserName = "admin",
                    Email = "fontys.musix@gmail.com"
                });
            }
        }
    }
}
