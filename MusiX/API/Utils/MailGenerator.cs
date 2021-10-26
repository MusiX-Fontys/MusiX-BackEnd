namespace API.Utils
{
    public static class MailGenerator
    {
        public static string GenerateUserCreatedMail(string username, string password)
        {
            return $"Username: {username}; Password: {password}";
        }
    }
}
