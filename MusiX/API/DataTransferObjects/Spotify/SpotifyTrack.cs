using Newtonsoft.Json;
using System.Collections.Generic;

namespace API.DataTransferObjects.Spotify
{
    public class SpotifyTrack
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public SpotifyAlbum Album { get; set; }
        public List<SpotifyArtist> Artists { get; set; }
        [JsonProperty("duration_ms")]
        public long Duration { get; set; }
    }
}
