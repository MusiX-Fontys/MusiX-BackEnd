using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace API.DataTransferObjects.Spotify
{
    public class RecentlyPlayedResponse
    {
        [JsonProperty("items")]
        public List<SpotifyScrobble> Scrobbles { get; set; }
        public Uri Next { get; set; }
    }
}
