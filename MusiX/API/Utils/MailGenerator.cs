namespace API.Utils
{
    public static class MailGenerator
    {
        public static string GenerateUserCreatedMail(string username, string password)
        {
            return $"Username: {username}; Password: {password}";
        }

        public static string GenerateUserFollowingMail(string username)
        {
            return $"{username} started following you.";
        }

        public static string GeneratePromotedMail(string role)
        {
            return $"You have been promoted to: {role}! You have gained access to the admin dashboard!";
        }

        public static string GenerateDemotedMail(string role)
        {
            return $"You have been demoted to: {role}! You have lost access to the admin dashboard!";
        }

        public static string GenerateCommentMail(string username)
        {
            return $"{username} has left a comment on your profile! Go check it out!";
        }

        public static string GenerateFollowersCommentMail(string commentUser, string profileUser)
        {
            return $"{commentUser} has left a comment on {profileUser} his/her profile! Go check it out!";
        }
    }
}
