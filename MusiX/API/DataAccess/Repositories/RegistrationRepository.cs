using API.Models;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Microsoft.Extensions.Configuration;
using NHibernate;
using NHibernate.Linq;
using NHibernate.Tool.hbm2ddl;
using System;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;

namespace API.DataAccess.Repositories
{
    public class RegistrationRepository
    {
        private readonly string connectionString;
        private readonly ISessionFactory sessionFactory;

        public RegistrationRepository(IConfiguration configuration)
        {
#if DEBUG
            connectionString = configuration.GetConnectionString("LocalDatabaseConnection");
#else
            connectionString = configuration.GetConnectionString("LiveDatabaseConnection");
#endif
            sessionFactory = GetSessionFactory();
        }

        public async Task<UserModel> GetUserModelByUsername(string username)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<UserModel>().Where(m => m.UserName == username).FirstOrDefaultAsync();
        }

        public async Task<UserModel> GetUserModelByEmail(string email)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            return await session.Query<UserModel>().Where(m => m.Email == email).FirstOrDefaultAsync();
        }

        public async Task AddUserModel(UserModel user)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.SaveAsync(user);
            await transaction.CommitAsync();
        }

        public async Task UpdateUserModel(UserModel user)
        {
            using ISession session = sessionFactory.OpenSession();
            using ITransaction transaction = session.BeginTransaction();
            await session.UpdateAsync(user);
            await transaction.CommitAsync();
        }

        public async Task DeleteUserModel(UserModel user)
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
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }
    }
}
