using API.Controllers;
using API.DataAccess;
using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Services;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MusiXTests.Utils;
using System.Collections.Generic;
using System.Configuration;
using System.Threading.Tasks;
using Xunit;

namespace MusiXTests
{
    public class RegistrationTests
    {
        private readonly RegistrationController controller;
        private readonly UserManager<IdentityUser> userManager;

        public RegistrationTests()
        {
            var config = ConfigurationUtil.CreateConfiguration();
            var mapperConfig = new MapperConfiguration(cfg => cfg.AddProfile<ProfileMapper>());

            var userRepository = new UserRepository(config);
            var mailService = new MailService(config);
            userManager = DatabaseUtil.CreateUserManager("registration");
            var mapper = mapperConfig.CreateMapper();
            var userService = new UserService(userRepository, mailService, userManager, mapper);
            var registrationService = new RegistrationService(userManager, userService, mailService, mapper);

            controller = new RegistrationController(registrationService);

            CreateRoles().Wait();
        }

        [Fact]
        public async Task InvalidEmail()
        {
            var model = new RegisterModel()
            {
                Email = "invalid",
                UserName = "test"
            };

            var result = (ObjectResult)await controller.Registrate(model);
            var response = (ApiResponse)result.Value;

            Assert.Equal(400, result.StatusCode);
            Assert.False(response.Success);
            Assert.Equal("Not valid email submitted.", response.Message);
        }

        [Fact]
        public async Task UsedEmail()
        {
            var model = new RegisterModel()
            {
                Email = "test@gmail.com",
                UserName = "test"
            };

            await userManager.CreateAsync(new IdentityUser() { Email = model.Email, UserName = model.UserName });

            var result = (ObjectResult)await controller.Registrate(model);
            var response = (ApiResponse)result.Value;

            Assert.Equal(400, result.StatusCode);
            Assert.False(response.Success);
            Assert.Equal("There already exists an account with this email.", response.Message);
        }

        [Fact]
        public async Task UsedName()
        {
            var model = new RegisterModel()
            {
                Email = "test@gmail.com",
                UserName = "test"
            };

            await userManager.CreateAsync(new IdentityUser() { Email = "new@gmail.com", UserName = model.UserName });

            var result = (ObjectResult)await controller.Registrate(model);
            var response = (ApiResponse)result.Value;

            Assert.Equal(400, result.StatusCode);
            Assert.False(response.Success);
            Assert.Equal("There already exists an account with this username.", response.Message);
        }

        [Fact]
        public async Task AddUserSuccessfully()
        {
            var model = new RegisterModel()
            {
                Email = "success@gmail.com",
                UserName = "success"
            };

            var result = (ObjectResult)await controller.Registrate(model);
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        private static async Task CreateRoles()
        {
            var roleManager = DatabaseUtil.CreateRoleManager("registration");
            await roleManager.CreateAsync(new IdentityRole("general"));
            await roleManager.CreateAsync(new IdentityRole("administrator"));
        }
    }
}
