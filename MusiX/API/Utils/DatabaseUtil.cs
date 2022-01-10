using API.Models;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Tool.hbm2ddl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Utils
{
    public static class DatabaseUtil
    {
        public static ISessionFactory GetSessionFactory(string connectionString)
        {
            return Fluently
                .Configure()
                .Database(MySQLConfiguration.Standard.ConnectionString(connectionString))
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<DatabaseModel>())
                .ExposeConfiguration(config => new SchemaUpdate(config).Execute(true, true))
                .BuildConfiguration()
                .BuildSessionFactory();
        }
    }
}
