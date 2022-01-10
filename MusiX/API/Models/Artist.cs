using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class Artist : DatabaseModel
    {
        [Required]
        public virtual string Name { get; set; }
        public virtual string Image { get; set; }
    }
}
