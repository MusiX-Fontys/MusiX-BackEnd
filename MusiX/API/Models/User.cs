using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class User : DatabaseModel
    {
        [Required]
        public virtual string Name { get; set; }
        [Required]
        public virtual string Email { get; set; }
        public virtual bool HasSetupSpotifyConnection { get; set; }
        public virtual long SpotifyConnectionSetAt { get; set; }
        public virtual IList<Scrobble> Scrobbles { get; set; } = new List<Scrobble>();
        public virtual IList<User> Following { get; set; } = new List<User>();
        public virtual IList<User> Followers { get; set; } = new List<User>();
        public virtual IList<ProfileComment> ProfileComments { get; set; } = new List<ProfileComment>();
    }
}
