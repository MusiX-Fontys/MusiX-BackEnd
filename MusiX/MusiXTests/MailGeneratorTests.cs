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
            var username = "test";
            var password = Guid.NewGuid().ToString();

            var mail = MailGenerator.GenerateUserCreatedMail(username, password);

            Assert.Contains(username, mail);
            Assert.Contains(password, mail);
        }

        [Fact]
        public void GenerateUserFollowingMail()
        {
            var username = "test";

            var mail = MailGenerator.GenerateUserFollowingMail(username);

            Assert.Contains(username, mail);
        }

        [Fact]
        public void GeneratePromotedMail()
        {
            var role = "administrator";

            var mail = MailGenerator.GeneratePromotedMail(role);

            Assert.Contains(role, mail);
        }

        [Fact]
        public void GenerateDemotedMail()
        {
            var role = "general";

            var mail = MailGenerator.GenerateDemotedMail(role);

            Assert.Contains(role, mail);
        }

        [Fact]
        public void GenerateCommentMail()
        {
            var username = "test";

            var mail = MailGenerator.GenerateCommentMail(username);

            Assert.Contains(username, mail);
        }

        [Fact]
        public void GenerateFollowersCommentMail()
        {
            var commentUser = "comment";
            var profileUser = "profile";

            var mail = MailGenerator.GenerateFollowersCommentMail(commentUser, profileUser);

            Assert.Contains(commentUser, mail);
            Assert.Contains(profileUser, mail);
        }
    }
}
