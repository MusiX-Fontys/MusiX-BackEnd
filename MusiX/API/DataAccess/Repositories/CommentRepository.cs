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
using System.Linq;
using System.Threading.Tasks;

namespace API.DataAccess.Repositories
{
    public class CommentRepository
    {
        private readonly ISessionFactory sessionFactory;

        public CommentRepository(IConfiguration configuration)
        {
            sessionFactory = DatabaseUtil.GetSessionFactory(configuration.GetConnectionString("MusiXDatabaseConnection"));
        }

        public async Task<List<ProfileComment>> GetProfileComments(string id)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<ProfileComment>().Where(comment => comment.ProfileUserId == id).ToListAsync();
        }

        public async Task AddComment(ProfileComment comment)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.SaveAsync(comment);
            await transaction.CommitAsync();
        }
    }
}
