using API.Controllers;
using API.DataAccess;
using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using API.Services;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MusiXTests.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace MusiXTests
{
    public class UserManagementTests
    {
        private readonly UserManagmentController controller;
        private readonly UserRepository userRepository;
        private readonly UserManager<IdentityUser> userManager;
        private readonly IMapper mapper;
        private string UserId { get; set; }

        public UserManagementTests()
        {
            var config = ConfigurationUtil.CreateConfiguration();
            var mapperConfig = new MapperConfiguration(cfg => cfg.AddProfile<ProfileMapper>());

            userRepository = new UserRepository(config);
            var mailService = new MailService(config);
            userManager = DatabaseUtil.CreateUserManager("user_management");
            mapper = mapperConfig.CreateMapper();
            var userService = new UserService(userRepository, mailService, userManager, mapper);

            controller = new UserManagmentController(userService);

            SetupUser().Wait();
        }

        private async Task SetupUser()
        {
            var roleManager = DatabaseUtil.CreateRoleManager("user_management");
            await roleManager.CreateAsync(new IdentityRole("general"));
            await roleManager.CreateAsync(new IdentityRole("administrator"));

            var user = new IdentityUser() { UserName = "test", Email = "test@gmail.com" };

            await userManager.CreateAsync(user, "Test123!");
            await userManager.AddToRoleAsync(user, "general");
            await userRepository.AddUserModel(mapper.Map(user, new User()));

            UserId = user.Id;
        }

        [Fact]
        public async Task GetUsers()
        {
            var result = (ObjectResult)await controller.GetUsers();
            var response = (ApiResponse)result.Value;
            response.Data.TryGetValue("users", out var users);

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
            Assert.Contains(((List<UserProfileModel>)users), users => users.Id == UserId);
        }

        [Fact]
        public async Task GetUsersByRole()
        {
            var result = (ObjectResult)await controller.GetUsers("general");
            var response = (ApiResponse)result.Value;
            response.Data.TryGetValue("users", out var users);

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
            Assert.Contains(((List<UserProfileModel>)users), users => users.Id == UserId);
        }

        [Fact]
        public async Task GetUsersBySearch()
        {
            var result = (ObjectResult)await controller.GetUsers("general", "test");
            var response = (ApiResponse)result.Value;
            response.Data.TryGetValue("users", out var users);

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
            Assert.Contains(((List<UserProfileModel>)users), users => users.Id == UserId);
        }
    }
}
