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
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace MusiXTests
{
    public class ProfileTests
    {
        private readonly ProfileController controller;
        private readonly UserRepository userRepository;
        private string MainId { get; set; }

        public ProfileTests()
        {
            var config = ConfigurationUtil.CreateConfiguration();
            var mapperConfig = new MapperConfiguration(cfg => cfg.AddProfile<ProfileMapper>());

            userRepository = new UserRepository(config);
            var commentRepository = new CommentRepository(config);
            var mailService = new MailService(config);
            var mapper = mapperConfig.CreateMapper();
            var userManager = DatabaseUtil.CreateUserManager("profile");
            var profileService = new ProfileService(userRepository, commentRepository, mailService, mapper);
            var userService = new UserService(userRepository, mailService, userManager, mapper);

            controller = new ProfileController(profileService, userService);

            SetupUsers().Wait();
        }

        private async Task SetupUsers()
        {
            var mainUser = new User() { Name = "main", Email = "main@gmail.com" };
            var profileUser = new User() { Name = "profile", Email = "profile@gmail.com" };

            MainId = mainUser.Id;

            await userRepository.AddUserModel(mainUser);
            await userRepository.AddUserModel(profileUser);
        }

        [Fact]
        public async Task GetProfileById()
        {
            var result = (ObjectResult)await controller.GetProfileById(MainId);
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task NoGivenSearchQuery()
        {
            var result = (ObjectResult)await controller.GetProfilesBySearchQuery(null);
            var response = (ApiResponse)result.Value;

            Assert.Equal(400, result.StatusCode);
            Assert.False(response.Success);
            Assert.Equal("No Given Search String", response.Message);
        }

        [Fact]
        public async Task GetProfilesBySearchQuery()
        {
            var result = (ObjectResult)await controller.GetProfilesBySearchQuery("main");
            var response = (ApiResponse)result.Value;
            response.Data.TryGetValue("profiles", out var profiles);

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
            Assert.Contains(((List<UserProfileModel>)profiles), profile => profile.Id == MainId);
        }
    }
}
