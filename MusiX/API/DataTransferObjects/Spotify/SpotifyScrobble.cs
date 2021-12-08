using Newtonsoft.Json;
using System;

namespace API.DataTransferObjects.Spotify
{
    public class SpotifyScrobble
    {
        public SpotifyTrack Track { get; set; }
        [JsonProperty("played_at")]
        public DateTime PlayedAt { get; set; }
    }
}
