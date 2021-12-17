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
                Console.WriteLine(e.Message);
            }
        }
    }
}
