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

        private readonly ScrobbleRepository scrobbleRepository;
        private readonly ArtistRepository artistRepository;
        private readonly IMapper mapper;

        public SpotifyService(ScrobbleRepository scrobbleRepository, ArtistRepository artistRepository, IMapper mapper)
        {
            this.scrobbleRepository = scrobbleRepository;
            this.artistRepository = artistRepository;
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
                scrobbleRepository.AddScrobble(scrobbleModel);
                GetArtistImages(accessToken);
            }
        }

        private async Task<long> GetLastTimeStamp(User user)
        {
            var lastScrobble = await scrobbleRepository.GetLastScrobbleByUserId(user.Id);
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

        private async Task GetArtistImages(string accessToken)
        {
            var artists = await artistRepository.GetArtists();

            using var client = CreateClient(accessToken);

            foreach(var artist in artists.Where(i => string.IsNullOrWhiteSpace(i.Image)))
            {
                var response = await client.GetAsync($"artists/{artist.Id}");
                var spotifyArtist = JsonConvert.DeserializeObject<SpotifyArtist>(await response.Content.ReadAsStringAsync());
                if (spotifyArtist.Images.Any())
                {
                    artist.Image = spotifyArtist.Images[0].Url;
                    artistRepository.UpdateArtistModel(artist);
                }
            }
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
