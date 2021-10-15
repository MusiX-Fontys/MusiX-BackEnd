using API.DataAccess.Repositories;
using API.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class RegistrationService
    {
        private readonly UserManager<IdentityUser> userManager;
        private readonly RegistrationRepository registrationRepository;
        private readonly MailService mailService;

        private readonly PasswordOptions passwordOptions = new()
        {
            RequiredLength = 8,
            RequiredUniqueChars = 4,
            RequireDigit = true,
            RequireLowercase = true,
            RequireNonAlphanumeric = true,
            RequireUppercase = true,
        };

        public RegistrationService(UserManager<IdentityUser> userManager, RegistrationRepository registrationRepository, MailService mailService)
        {
            this.userManager = userManager;
            this.registrationRepository = registrationRepository;
            this.mailService = mailService;
        }

        public async Task<bool> DoesEmailExist(string email)
        {
            if (await userManager.FindByEmailAsync(email) != null)
                return true;
            return false;
        }

        public async Task<bool> DoesUsernameExist(string username)
        {
            if (await userManager.FindByNameAsync(username) != null)
                return true;
            return false;
        }

        public async Task<bool> CreateIdentityAccount(IdentityUser user)
        {
            var password = GenerateRandomPassword();
            var result = await userManager.CreateAsync(user, password);

            if (result.Succeeded)
            {
                await registrationRepository.AddUserModel(new UserModel { CreationDate = DateTime.Now, UserName = user.UserName, Email = user.Email });
                mailService.SendUserCreatedMail(user.UserName, user.Email, password);
                return true;
            }
            return false;
        }

        //Stole this from stackoverflow (https://stackoverflow.com/questions/28480167/asp-net-identity-generate-random-password)
        private string GenerateRandomPassword()
        {
            string[] randomChars = new[] {
            "ABCDEFGHJKLMNOPQRSTUVWXYZ",    // uppercase 
            "abcdefghijkmnopqrstuvwxyz",    // lowercase
            "0123456789",                   // digits
            "!@$?_-"                        // non-alphanumeric
        };

            var rand = new Random(Environment.TickCount);
            List<char> chars = new();

            if (passwordOptions.RequireUppercase)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[0][rand.Next(0, randomChars[0].Length)]);

            if (passwordOptions.RequireLowercase)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[1][rand.Next(0, randomChars[1].Length)]);

            if (passwordOptions.RequireDigit)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[2][rand.Next(0, randomChars[2].Length)]);

            if (passwordOptions.RequireNonAlphanumeric)
                chars.Insert(rand.Next(0, chars.Count),
                    randomChars[3][rand.Next(0, randomChars[3].Length)]);

            for (int i = chars.Count; i < passwordOptions.RequiredLength
                || chars.Distinct().Count() < passwordOptions.RequiredUniqueChars; i++)
            {
                string rcs = randomChars[rand.Next(0, randomChars.Length)];
                chars.Insert(rand.Next(0, chars.Count),
                    rcs[rand.Next(0, rcs.Length)]);
            }

            return new string(chars.ToArray());
        }
    }
}
