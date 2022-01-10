using API.Models;
using API.Utils;
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
        private readonly ISessionFactory sessionFactory;

        public ArtistRepository(IConfiguration configuration)
        {
            sessionFactory = DatabaseUtil.GetSessionFactory(configuration.GetConnectionString("MusiXDatabaseConnection"));
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
    }
}
