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
    public class UserRepository
    {
        private readonly string connectionString;
        private readonly ISessionFactory sessionFactory;

        public UserRepository(IConfiguration configuration)
        {
            connectionString = configuration.GetConnectionString("MusiXDatabaseConnection");
            sessionFactory = GetSessionFactory();
        }

        public async Task<List<User>> GetUserModels()
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<User>().ToListAsync();
        }

        public async Task<List<User>> GetUserModelsBySearch(string search)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<User>().Where(m => m.Name.IndexOf(search, StringComparison.OrdinalIgnoreCase) != -1).ToListAsync();
        }

        public async Task<User> GetUserModelById(string id)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<User>().Where(m => m.Id == id).FirstOrDefaultAsync();
        }

        public async Task<User> GetUserModelByUsername(string username)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<User>().Where(m => m.Name == username).FirstOrDefaultAsync();
        }

        public async Task<User> GetUserModelByEmail(string email)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<User>().Where(m => m.Email == email).FirstOrDefaultAsync();
        }

        public async Task AddUserModel(User user)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.SaveAsync(user);
            await transaction.CommitAsync();
        }

        public async Task UpdateUserModel(User user)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.UpdateAsync(user);
            await transaction.CommitAsync();
        }

        public async Task DeleteUserModel(User user)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.DeleteAsync(user);
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
