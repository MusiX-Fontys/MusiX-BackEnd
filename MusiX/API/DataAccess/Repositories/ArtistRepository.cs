using API.Models;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Microsoft.Extensions.Configuration;
using NHibernate;
using NHibernate.Linq;
using NHibernate.Tool.hbm2ddl;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace API.DataAccess.Repositories
{
    public class ArtistRepository
    {
        private readonly string connectionString;
        private readonly ISessionFactory sessionFactory;

        public ArtistRepository(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("MusiXDatabaseConnection");
            sessionFactory = GetSessionFactory();
        }

        public async Task<List<Artist>> GetArtists()
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<Artist>().ToListAsync();
        }

        public async Task UpdateArtistModel(Artist artist)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.UpdateAsync(artist);
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
