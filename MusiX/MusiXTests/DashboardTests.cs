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
    public class DashboardTests
    {
        private readonly DashboardController controller;

        public DashboardTests()
        {
            var config = ConfigurationUtil.CreateConfiguration();

            var userRepository = new UserRepository(config);
            var scrobbleRepository = new ScrobbleRepository(config);
            var dashboardService = new DashboardService(scrobbleRepository, userRepository);

            controller = new DashboardController(dashboardService);
        }

        [Fact]
        public async Task GetDashboard()
        {
            var result = (ObjectResult)await controller.GetDashboard();
            var response = (ApiResponse)result.Value;

            Assert.Equal(200, result.StatusCode);
            Assert.True(response.Success);
        }
    }
}
