using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Pomelo.EntityFrameworkCore.MySql.Infrastructure;
using Microsoft.OpenApi.Models;
using API.DataAccess;
using API.Services;
using API.DataAccess.Repositories;

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
            // Connection strings for the Identity en MusiX database
#if DEBUG
            IdentityDatabaseConnectionString = Configuration.GetConnectionString("LocalIdentityDatabaseConnection");
#else
            IdentityDatabaseConnectionString = Configuration.GetConnectionString("LiveIdentityDatabaseConnection");
#endif

            /// Allow cors
            services.AddCors(options =>
            {
                options.AddPolicy("CorsPolicy",
                builder => builder.AllowAnyOrigin()
                                  .AllowAnyMethod()
                                  .AllowAnyHeader());
            });

            /// Database connection for identity
            services.AddDbContext<IdentityDatabaseContext>(options => options.UseMySql(IdentityDatabaseConnectionString, 
                ServerVersion.AutoDetect(IdentityDatabaseConnectionString)));

            /// Default identity user
            services.AddIdentity<IdentityUser, IdentityRole>(options =>
            {
                /// Paswword must be atleast 8 characters long
                /// must contain a digit, uppercase, lowercase and 1 special character
                options.Password.RequiredLength = 8;
                options.Password.RequireDigit = true;
                options.Password.RequireUppercase = true;
                options.Password.RequiredUniqueChars = 1;
                options.Password.RequireLowercase = true;
            }).AddEntityFrameworkStores<IdentityDatabaseContext>()
               .AddDefaultTokenProviders();

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "API", Version = "v1" });
            });

            //Services
            services.AddTransient<RegistrationService>();

            services.AddTransient<MailService>();

            //Repositories
            services.AddTransient<RegistrationRepository>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
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
        }
    }
}
