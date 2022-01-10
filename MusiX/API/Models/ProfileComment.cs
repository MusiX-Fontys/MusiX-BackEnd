using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class ProfileComment : DatabaseModel
    {
        [Required]
        public virtual string Comment { get; set; }
        public virtual string CommentUserId { get; set; }
        [Required]
        public virtual User CommentUser { get; set; }
        public virtual string ProfileUserId { get; set; }
        [Required]
        public virtual User ProfileUser { get; set; }
    }
}
