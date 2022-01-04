using API.DataTransferObjects.MusiX;
using API.Utils;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using Xunit;

namespace MusiXTests
{
    public class JwtConfigurationTests
    {
        private string token;

        private static IConfiguration CreateConfiguration()
        {
            var config = new Dictionary<string, string>
            {
                {"JwtKey", Guid.NewGuid().ToString()},
                {"JwtIssuer", "issuer"}
            };

            return new ConfigurationBuilder()
                .AddInMemoryCollection(config)
                .Build();
        }

        public JwtConfigurationTests()
        {
            JwtConfiguration.Init(CreateConfiguration());
        }


        [Fact]
        public void GenerateValidatedJWT()
        {
            var user = new IdentityUser
            {
                Id = Guid.NewGuid().ToString(),
                UserName = "test",
                Email = "test@gmail.com"
            };
            var role = "general";
            token = JwtConfiguration.GenerateJWT(user, role);
            Assert.True(new JwtSecurityTokenHandler().CanReadToken(token));
        }

        [Fact]
        public void AreAllClaimsSetCorrectly()
        {
            GenerateValidatedJWT();

            var securityToken = new JwtSecurityTokenHandler().ReadJwtToken(token);
            Assert.Equal("issuer", securityToken.Issuer);
            Assert.Equal("test", securityToken.Claims.FirstOrDefault(i => i.Type == "name").Value);
            Assert.Equal("test@gmail.com", securityToken.Claims.FirstOrDefault(i => i.Type == "email").Value);
            Assert.Equal("general", securityToken.Claims.FirstOrDefault(i => i.Type == "role").Value);
        }
    }
}
