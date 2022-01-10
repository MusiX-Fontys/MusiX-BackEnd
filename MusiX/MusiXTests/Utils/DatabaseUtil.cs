using API.DataAccess;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Moq;
using Microsoft.Extensions.Options;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authentication;
using System.Security.Claims;

namespace MusiXTests.Utils
{
    public static class DatabaseUtil
    {
        private static IdentityDatabaseContext CreateDbContext(string db)  
            => new IdentityDatabaseContext(new DbContextOptionsBuilder<IdentityDatabaseContext>().UseInMemoryDatabase(databaseName: db).Options);

        //Official aspnetcore documentation: https://github.com/dotnet/aspnetcore/blob/main/src/Identity/test/Shared/MockHelpers.cs
        public static UserManager<IdentityUser> CreateUserManager(string db)
        {
            var store = new UserStore<IdentityUser>(CreateDbContext(db));
            var options = new Mock<IOptions<IdentityOptions>>();
            var idOptions = new IdentityOptions();
            idOptions.Lockout.AllowedForNewUsers = false;
            options.Setup(o => o.Value).Returns(idOptions);
            var userValidators = new List<IUserValidator<IdentityUser>>();
            var validator = new Mock<IUserValidator<IdentityUser>>();
            userValidators.Add(validator.Object);
            var pwdValidators = new List<PasswordValidator<IdentityUser>>();
            pwdValidators.Add(new PasswordValidator<IdentityUser>());
            var userManager = new UserManager<IdentityUser>(store, options.Object, new PasswordHasher<IdentityUser>(),
                userValidators, pwdValidators, MockLookupNormalizer(),
                new IdentityErrorDescriber(), null,
                new Mock<ILogger<UserManager<IdentityUser>>>().Object);
            validator.Setup(v => v.ValidateAsync(userManager, It.IsAny<IdentityUser>()))
                .Returns(Task.FromResult(IdentityResult.Success)).Verifiable();
            return userManager;
        }

        public static RoleManager<IdentityRole> CreateRoleManager(string db)
        {
            var store = new RoleStore<IdentityRole>(CreateDbContext(db));
            var roles = new List<IRoleValidator<IdentityRole>>();
            roles.Add(new RoleValidator<IdentityRole>());
            return new RoleManager<IdentityRole>(store, roles,
                MockLookupNormalizer(),
                new IdentityErrorDescriber(),
                null);
        }

        public static SignInManager<IdentityUser> CreateSignInManager(UserManager<IdentityUser> userManager)
        {
            var context = new DefaultHttpContext();
            var auth = new Mock<IAuthenticationService>();
            auth.Setup(a => a.SignInAsync(context, IdentityConstants.ApplicationScheme,
                It.IsAny<ClaimsPrincipal>(),
                It.IsAny<AuthenticationProperties>())).Returns(Task.FromResult(0)).Verifiable();
            var contextAccessor = new Mock<IHttpContextAccessor>();
            contextAccessor.Setup(a => a.HttpContext).Returns(context);
            var options = new Mock<IOptions<IdentityOptions>>();
            var idOptions = new IdentityOptions();
            idOptions.Lockout.AllowedForNewUsers = false;
            options.Setup(o => o.Value).Returns(idOptions);
            return new SignInManager<IdentityUser>(userManager,
                 contextAccessor.Object,
                 new Mock<IUserClaimsPrincipalFactory<IdentityUser>>().Object,
                 options.Object,
                 new Mock<ILogger<SignInManager<IdentityUser>>>().Object,
                 new Mock<IAuthenticationSchemeProvider>().Object,
                 new Mock<IUserConfirmation<IdentityUser>>().Object);
        }

        private static ILookupNormalizer MockLookupNormalizer()
        {
            var normalizerFunc = new Func<string, string>(i =>
            {
                if (i == null)
                    return null;
                else
                    return Convert.ToBase64String(Encoding.UTF8.GetBytes(i)).ToUpperInvariant();
            });
            var lookupNormalizer = new Mock<ILookupNormalizer>();
            lookupNormalizer.Setup(i => i.NormalizeName(It.IsAny<string>())).Returns(normalizerFunc);
            lookupNormalizer.Setup(i => i.NormalizeEmail(It.IsAny<string>())).Returns(normalizerFunc);
            return lookupNormalizer.Object;
        }
    }
}
