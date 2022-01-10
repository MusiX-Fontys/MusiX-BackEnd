using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class Track : DatabaseModel
    {
        [Required]
        public virtual string Name { get; set; }
        public virtual string Image { get; set; }
        public virtual string AlbumId { get; set; }
        [Required]
        public virtual Album Album { get; set; }
        [Required]
        public virtual IList<Artist> Artists { get; set; } = new List<Artist>();
    }
}
