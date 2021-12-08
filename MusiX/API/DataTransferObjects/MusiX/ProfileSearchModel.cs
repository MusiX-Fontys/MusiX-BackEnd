using System;

namespace API.DataTransferObjects.MusiX
{
    public class ProfileSearchModel
    {
        public string Id { get; set; }
        public string Username { get; set; }
        public string Image { get; set; }
        public DateTime JoinDate { get; set; }
    }
}
