using System;
using System.Collections.Generic;

namespace API.DataTransferObjects.MusiX
{
    public class UserProfileModel
    {
        public string Id { get; set; }
        public string Username { get; set; }
        public string Image { get; set; }
        public DateTime JoinDate { get; set; }
        public List<string> Following { get; set; } = new();
        public List<string> Followers { get; set; } = new();
        public List<ProfileCommentModel> Comments { get; set; } = new();
    }
}
