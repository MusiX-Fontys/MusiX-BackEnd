using API.Models;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Microsoft.Extensions.Configuration;
using NHibernate;
using NHibernate.Linq;
using NHibernate.Tool.hbm2ddl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.DataAccess.Repositories
{
    public class ScrobbleRepository
    {
        private readonly string connectionString;
        private readonly ISessionFactory sessionFactory;

        public ScrobbleRepository(IConfiguration configuration)
        {
            if (configuration["ReleaseType"] == "debug")
                connectionString = configuration.GetConnectionString("LocalDatabaseConnection");
            else
                connectionString = configuration.GetConnectionString("LiveDatabaseConnection");

            sessionFactory = GetSessionFactory();
        }

        public async Task<Scrobble> GetLastScrobbleByUserId(string userId)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<Scrobble>().Where(i => i.UserId == userId).OrderByDescending(i => i.PlayedAt).FirstOrDefaultAsync();
        }

        public async Task<List<Scrobble>> GetScrobblesByUserInTimePeriod(string userId, long from, long to)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<Scrobble>().Where(i => i.UserId == userId && i.PlayedAt >= from && i.PlayedAt <= to).ToListAsync();
        }

        public async Task<List<Scrobble>> GetScrobblesInTimePeriod(long from, long to)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<Scrobble>().Where(i => i.PlayedAt >= from && i.PlayedAt <= to).ToListAsync();
        }

        public async Task AddScrobble(Scrobble scrobble)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.SaveAsync(scrobble);
            await transaction.CommitAsync();
        }

        private ISessionFactory GetSessionFactory()
        {
            try
            {
                return Fluently
                       .Configure()
                       .Database(MySQLConfiguration.Standard.ConnectionString(connectionString))
                       .Mappings(m => m.FluentMappings.AddFromAssemblyOf<DatabaseModel>())
                       .ExposeConfiguration(config => new SchemaUpdate(config).Execute(true, true))
                       .BuildConfiguration()
                       .BuildSessionFactory();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }
    }
}
