using API.Utils;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using MusiXTests.Utils;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using Xunit;

namespace MusiXTests
{
    public class JwtConfigurationTests
    {
        public JwtConfigurationTests()
        {
            JwtConfiguration.Init(ConfigurationUtil.CreateConfiguration());
        }


        [Fact]
        public string GenerateValidatedJWT()
        {
            var user = new IdentityUser
            {
                Id = Guid.NewGuid().ToString(),
                UserName = "test",
                Email = "test@gmail.com"
            };
            var role = "general";

            var token = JwtConfiguration.GenerateJWT(user, role);

            Assert.True(new JwtSecurityTokenHandler().CanReadToken(token));

            return token;
        }

        [Fact]
        public void AreAllClaimsSetCorrectly()
        {
            var token = new JwtSecurityTokenHandler().ReadJwtToken(GenerateValidatedJWT());

            Assert.Equal("issuer", token.Issuer);
            Assert.Equal("test", token.Claims.FirstOrDefault(i => i.Type == "name").Value);
            Assert.Equal("test@gmail.com", token.Claims.FirstOrDefault(i => i.Type == "email").Value);
            Assert.Equal("general", token.Claims.FirstOrDefault(i => i.Type == "role").Value);
        }
    }
}
