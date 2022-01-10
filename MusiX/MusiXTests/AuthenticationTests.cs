using API.Controllers;
using API.DataAccess;
using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Services;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MusiXTests.Utils;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Threading.Tasks;
using Xunit;

namespace MusiXTests
{
    public class AuthenticationTests
    {
        private readonly AuthenticationController controller;
        private readonly UserManager<IdentityUser> userManager;
        private readonly SignInManager<IdentityUser> signInManager;

        public AuthenticationTests()
        {
            userManager = DatabaseUtil.CreateUserManager("authentication");
            signInManager = DatabaseUtil.CreateSignInManager(userManager);
            var authenticationService = new AuthenticationService(userManager, signInManager);

            controller = new AuthenticationController(authenticationService);
        }

        [Fact]
        public async Task AuthenticateUser()
        {
            Assert.NotNull(signInManager);

            await CreateUser();
            var user = await userManager.FindByNameAsync("test");
            Assert.NotNull(user);
            var result = await signInManager.PasswordSignInAsync(user, "Test123!", false, false);
            Assert.NotNull(result);
            //var model = new LoginModel()
            //{
            //    Email = "test@gmail.com",
            //    Password = "Test123!"
            //};

            //var result = (ObjectResult)await controller.Authenticate(model);
            //var response = (ApiResponse)result.Value;

            //Assert.Equal(response, ApiResponse.Ok());
        }

        private async Task CreateUser()
        {
            var user = new IdentityUser() 
            {
                Email = "test@gmail.com",
                UserName = "test",
                SecurityStamp = Guid.NewGuid().ToString()
            };

            await userManager.CreateAsync(user, "Test123!");
        }
    }
}
