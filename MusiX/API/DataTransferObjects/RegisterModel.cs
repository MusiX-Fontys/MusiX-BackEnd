using System.ComponentModel.DataAnnotations;

namespace API.DataTransferObjects
{
    public class RegisterModel
    {
        [Required]
        public string Email { get; set; }

        [Required]
        public string UserName { get; set; }
    }
}
