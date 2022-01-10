using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusiXTests.Utils
{
    public static class ConfigurationUtil
    {
        public static IConfiguration CreateConfiguration()
        {
            var config = new Dictionary<string, string>
            {
                {"JwtKey", Guid.NewGuid().ToString()},
                {"JwtIssuer", "issuer"},
                {"ConnectionStrings:MusiXDatabaseConnection", "server=db4free.net;port=3306;database=musix_db;uid=musix_db;password=AbC1@DeF;SslMode=none"},
                {"MusiXMailPassword", "!&3zRSaw&WBuHeBy"}
            };

            return new ConfigurationBuilder()
                .AddInMemoryCollection(config)
                .Build();
        }
    }
}
