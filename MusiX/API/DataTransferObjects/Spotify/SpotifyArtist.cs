using System.Collections.Generic;

namespace API.DataTransferObjects.Spotify
{
    public class SpotifyArtist
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public List<SpotifyImage> Images { get; set; }
    }
}
