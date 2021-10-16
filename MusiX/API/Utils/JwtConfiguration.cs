using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Identity;

namespace API.Utils
{
    public static class JwtConfiguration
    {
        private static string JWTKey { get; set; } = string.Empty;
        private static string JWTIssuer { get; set; } = string.Empty;
        private const double JWTExpiringDate = 7;

        public static void Init(IConfiguration configuration)
        {
            JWTKey = configuration["JwtKey"];
#if DEBUG
            JWTIssuer = configuration["JwtIssuerDev"];
#else
            JWTIssuer = configuration["JwtIssuer"];
#endif
        }

        public static string GenerateJWT(IdentityUser user, string role)
        {
            var token = new JwtSecurityToken(
                issuer: JWTIssuer,
                audience: JWTIssuer,
                claims: CreateClaims(user, role),
                expires: DateTime.Now.AddDays(JWTExpiringDate),
                signingCredentials: CreateCredentials()
            );

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        private static List<Claim> CreateClaims(IdentityUser user, string role)
        {
            return new List<Claim> {
                new Claim(JwtRegisteredClaimNames.Jti, GenerateJTI()),
                new Claim("sub", user.Id),
                new Claim("name", user.UserName),
                new Claim("email", user.Email),
                new Claim("role", role)
            };
        }

        private static string GenerateJTI()
        {
            return Guid.NewGuid().ToString();
        }

        private static SigningCredentials CreateCredentials()
        {
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(JWTKey));
            return new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
        }
    }
}
