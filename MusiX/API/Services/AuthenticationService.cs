using API.DataTransferObjects;
using API.Utils;
using Microsoft.AspNetCore.Identity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class AuthenticationService
    {
        private readonly UserManager<IdentityUser> userManager;
        private readonly SignInManager<IdentityUser> signInManager;

        public AuthenticationService(UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
        }

        public async Task<bool> DoesEmailExist(string email)
        {
            if (await userManager.FindByEmailAsync(email) != null)
                return true;
            return false;
        }

        public async Task<bool> IsPasswordCorrect(LoginModel model)
        {
            var user = await userManager.FindByEmailAsync(model.Email);
            var result = await signInManager.CheckPasswordSignInAsync(user, model.Password, false);

            return result.Succeeded;
        }

        public async Task<string> Authenticate(LoginModel model)
        {
            var user = await userManager.FindByEmailAsync(model.Email);
            var roles = await userManager.GetRolesAsync(user);
            var result = await signInManager.PasswordSignInAsync(user, model.Password, false, false);

            if (result.Succeeded)
                return JwtConfiguration.GenerateJWT(user, roles[0]);

            return null;
        }
    }
}
