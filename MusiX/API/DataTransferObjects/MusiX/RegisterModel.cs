using System.ComponentModel.DataAnnotations;

namespace API.DataTransferObjects.MusiX
{
    public class RegisterModel
    {
        [Required]
        public string Email { get; set; }

        [Required]
        public string UserName { get; set; }
    }
}
