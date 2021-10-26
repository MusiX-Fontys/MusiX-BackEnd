using API.Models;
using FluentNHibernate.Mapping;

namespace API.DataAccess
{
    public class UserModelMapper : ClassMap<UserModel>
    {
        public UserModelMapper()
        {
            Table("user");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Username);
            Map(i => i.Email);
        }
    }
}
