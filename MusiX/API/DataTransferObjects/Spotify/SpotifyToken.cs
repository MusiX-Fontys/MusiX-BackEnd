using Newtonsoft.Json;

namespace API.DataTransferObjects.Spotify
{
    public class SpotifyToken
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }
        [JsonProperty("refresh_token")]
        public string RefreshToken { get; set; }
    }
}
