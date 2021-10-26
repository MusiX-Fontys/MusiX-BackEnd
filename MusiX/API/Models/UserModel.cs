using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class UserModel : DatabaseModel
    {
        [Required]
        public virtual string Username { get; set; }
        [Required]
        public virtual string Email { get; set; }
    }
}
