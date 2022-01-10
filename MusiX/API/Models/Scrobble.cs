using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class Scrobble : DatabaseModel
    {
        [Required]
        public virtual long PlayedAt { get; set; }
        public virtual string TrackId { get; set; }
        [Required]
        public virtual Track Track { get; set; }
        public virtual string UserId { get; set; }
        [Required]
        public virtual User User { get; set; }
    }
}
