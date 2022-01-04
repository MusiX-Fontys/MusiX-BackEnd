using API.Utils;
using System;
using Xunit;

namespace MusiXTests
{
    public class MailGeneratorTests
    {
        [Fact]
        public void GenerateUserCreatedMail()
        {
            var username = Guid.NewGuid().ToString();
            var password = Guid.NewGuid().ToString();

            var mail = MailGenerator.GenerateUserCreatedMail(username, password);

            Assert.Contains(username, mail);
            Assert.Contains(password, mail);
        }
    }
}
