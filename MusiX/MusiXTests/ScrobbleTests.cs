using API.Controllers;
using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using API.Services;
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
    public class ScrobbleTests
    {
        private readonly ScrobbleController controller;
        private string UserId { get; set; }

        public ScrobbleTests()
        {
            var scrobbleRepository = new ScrobbleRepository(ConfigurationUtil.CreateConfiguration());
            var scrobbleService = new ScrobbleService(scrobbleRepository);

            controller = new ScrobbleController(scrobbleService);

            SetupUser().Wait();
        }

        private async Task SetupUser()
        {
            var userRepository = new UserRepository(ConfigurationUtil.CreateConfiguration());
            var user = new User() { Name = "test", Email = "test@gmail.com" };
            UserId = user.Id;
            await userRepository.AddUserModel(user);
        }

        [Fact]
        public async Task GetMostPopularArtists()
        {
            var result = (ObjectResult)await controller.GetMostPopularArtists();
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task GetMostPopularAlbums()
        {
            var result = (ObjectResult)await controller.GetMostPopularAlbums();
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task GetMostPopularTracks()
        {
            var result = (ObjectResult)await controller.GetMostPopularTracks();
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task GetUserScrobbledArtists()
        {
            var result = (ObjectResult)await controller.GetUserScrobbledArtists(UserId, "2021-01-01", "2022-01-01");
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task GetUserScrobbledAlbums()
        {
            var result = (ObjectResult)await controller.GetUserScrobbledAlbums(UserId, "2021-01-01", "2022-01-01");
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }

        [Fact]
        public async Task GetUserScrobbledTracks()
        {
            var result = (ObjectResult)await controller.GetUserScrobbledTracks(UserId, "2021-01-01", "2022-01-01");
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }
    }
}
