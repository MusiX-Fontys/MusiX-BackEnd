using API.DataAccess.Repositories;
using API.DataTransferObjects.Spotify;
using API.Models;
using AutoMapper;
using Newtonsoft.Json;
using System;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace API.Services
{
    public class SpotifyService
    {
        private static readonly string BASE_ADDRESS = "https://api.spotify.com/v1/";

        private readonly ScrobbleRepository spotifyRepository;
        private readonly IMapper mapper;

        public SpotifyService(ScrobbleRepository spotifyRepository, IMapper mapper)
        {
            this.spotifyRepository = spotifyRepository;
            this.mapper = mapper;
        }

        public async Task AddLatestScrobbles(string accessToken, User user)
        {
            var beforeTimeStamp = ((DateTimeOffset)DateTime.Now).ToUnixTimeMilliseconds();
            var afterTimeStamp = await GetLastTimeStamp(user);

            var result = await GetRecentlyPlayed(accessToken, beforeTimeStamp);

            if (!result.Scrobbles.Any())
                return;

            foreach(var scrobble in result.Scrobbles.OrderByDescending(i => i.PlayedAt))
            {
                var scrobbleModel = mapper.Map(scrobble, new Scrobble() { UserId = user.Id });

                if (scrobbleModel.PlayedAt <= afterTimeStamp)
                    return;

                spotifyRepository.AddScrobble(scrobbleModel);
            }
        }

        private async Task<long> GetLastTimeStamp(User user)
        {
            var lastScrobble = await spotifyRepository.GetLastScrobbleByUserId(user.Id);
            if (lastScrobble == null)
                return user.SpotifyConnectionSetAt;
            return lastScrobble.PlayedAt;
        }

        private static async Task<RecentlyPlayedResponse> GetRecentlyPlayed(string accessToken, long timeStamp)
        {
            using var client = CreateClient(accessToken);
            var response = await client.GetAsync($"me/player/recently-played?before={timeStamp}&limit=50");
            return JsonConvert.DeserializeObject<RecentlyPlayedResponse>(await response.Content.ReadAsStringAsync());
        }

        private static HttpClient CreateClient(string accessToken)
        {
            var client = new HttpClient() { BaseAddress = new Uri(BASE_ADDRESS) };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", $"{accessToken}");
            return client;
        }
    }
}
