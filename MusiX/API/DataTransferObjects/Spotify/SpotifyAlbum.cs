using Newtonsoft.Json;
using System.Collections.Generic;

namespace API.DataTransferObjects.Spotify
{
    public class SpotifyAlbum
    {
        public string Id { get; set; }
        public string Name { get; set; }
        [JsonProperty("album_type")]
        public string AlbumType { get; set; }
        public List<SpotifyArtist> Artists { get; set; }
        public List<SpotifyImage> Images { get; set; }
        [JsonProperty("release_date")]
        public string ReleaseDate { get; set; }

    }
}
