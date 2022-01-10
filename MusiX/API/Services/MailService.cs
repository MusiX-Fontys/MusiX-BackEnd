using API.Models;
using API.Utils;
using MailKit.Net.Smtp;
using Microsoft.Extensions.Configuration;
using MimeKit;
using System;
using System.Threading.Tasks;

namespace API.Services
{
    public class MailService
    {
        private readonly MailboxAddress musixMail = new("MusiX", "fontys.musix@gmail.com");
        private readonly string musixMailPassword;

        public MailService(IConfiguration configuration)
        {
            musixMailPassword = configuration["MusiXMailPassword"];
        }

        public void SendUserCreatedMail(string username, string email, string password)
        {
            var userCreatedMail = new MimeMessage();

            userCreatedMail.From.Add(musixMail);
            userCreatedMail.To.Add(new MailboxAddress(username, email));
            userCreatedMail.Subject = "Your MusiX account has been created.";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GenerateUserCreatedMail(username, password)
            };

            userCreatedMail.Body = builder.ToMessageBody();

            SendEmail(userCreatedMail);
        }

        public void SendUserFollowingMail(User user, string username)
        {
            var userFollowingMail = new MimeMessage();

            userFollowingMail.From.Add(musixMail);
            userFollowingMail.To.Add(new MailboxAddress(user.Name, user.Email));
            userFollowingMail.Subject = "You have a new follower!";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GenerateUserFollowingMail(username)
            };

            userFollowingMail.Body = builder.ToMessageBody();

            SendEmail(userFollowingMail);
        }

        public void SendPromotionMail(User user, string role)
        {
            var promotionMail = new MimeMessage();

            promotionMail.From.Add(musixMail);
            promotionMail.To.Add(new MailboxAddress(user.Name, user.Email));
            promotionMail.Subject = "You have been promoted!";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GeneratePromotedMail(role)
            };

            promotionMail.Body = builder.ToMessageBody();

            SendEmail(promotionMail);
        }

        public void SendDemotionMail(User user, string role)
        {
            var demotionMail = new MimeMessage();

            demotionMail.From.Add(musixMail);
            demotionMail.To.Add(new MailboxAddress(user.Name, user.Email));
            demotionMail.Subject = "You have been demoted!";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GenerateDemotedMail(role)
            };

            demotionMail.Body = builder.ToMessageBody();

            SendEmail(demotionMail);
        }

        public void SendCommentMail(User user, string username)
        {
            var commentMail = new MimeMessage();

            commentMail.From.Add(musixMail);
            commentMail.To.Add(new MailboxAddress(user.Name, user.Email));
            commentMail.Subject = "A new comment has been posted on your profile!";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GenerateCommentMail(username)
            };

            commentMail.Body = builder.ToMessageBody();

            SendEmail(commentMail);
        }

        public void SendFollowersCommentMail(User user, string commentUser, string profileUser)
        {
            var commentMail = new MimeMessage();

            commentMail.From.Add(musixMail);
            commentMail.To.Add(new MailboxAddress(user.Name, user.Email));
            commentMail.Subject = $"{commentUser} has posted a new comment!";

            var builder = new BodyBuilder
            {
                HtmlBody = MailGenerator.GenerateFollowersCommentMail(commentUser, profileUser)
            };

            commentMail.Body = builder.ToMessageBody();

            SendEmail(commentMail);
        }

        private async Task SendEmail(MimeMessage email)
        {
            try
            {
                using var client = new SmtpClient();
                await client.ConnectAsync("smtp.gmail.com", 465, true);
                client.AuthenticationMechanisms.Remove("XOAUTH2");
                await client.AuthenticateAsync(musixMail.Address, musixMailPassword);
                await client.SendAsync(email);
                await client.DisconnectAsync(true);
            }
            catch (Exception e)
            {
                Sentry.SentrySdk.CaptureException(e);
            }
        }
    }
}
