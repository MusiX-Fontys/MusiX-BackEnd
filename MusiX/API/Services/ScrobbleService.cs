using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class ScrobbleService
    {
        private readonly ScrobbleRepository scrobbleRepository;

        public ScrobbleService(ScrobbleRepository scrobbleRepository)
        {
            this.scrobbleRepository = scrobbleRepository;
        }

        public async Task<List<Artist>> GetMostPopularArtists()
        {
            var from = ((DateTimeOffset)DateTime.Now.AddDays(-7)).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)DateTime.Now).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesInTimePeriod(from, to);
            var artists = DetermineMostPopularArtists(scrobbles);
            return artists.Select(artist => artist.Key).ToList().GetRange(0, Math.Min(artists.Count(), 10));
        }

        public async Task<List<Album>> GetMostPopularAlbums()
        {
            var from = ((DateTimeOffset)DateTime.Now.AddDays(-7)).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)DateTime.Now).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesInTimePeriod(from, to);
            var albums = DetermineMostPopularAlbums(scrobbles);
            return albums.Select(album => album.Key).ToList().GetRange(0, Math.Min(albums.Count(), 10));
        }

        public async Task<List<Track>> GetMostPopularTracks()
        {
            var from = ((DateTimeOffset)DateTime.Now.AddDays(-7)).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)DateTime.Now).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesInTimePeriod(from, to);
            var tracks = DetermineMostPopularTracks(scrobbles);
            return tracks.Select(track => track.Key).ToList().GetRange(0, Math.Min(tracks.Count(), 10));
        }

        public async Task<List<ScrobbledArtist>> GetScrobbledArtists(string userId, DateTime _from, DateTime _to)
        {
            var from = ((DateTimeOffset)_from).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)_to).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesByUserInTimePeriod(userId, from, to);
            return DetermineMostPopularArtists(scrobbles).Select(artist => new ScrobbledArtist() { Artist = artist.Key, ScrobbleAmount = artist.Count() }).ToList();
        }

        public async Task<List<ScrobbledAlbum>> GetScrobbledAlbums(string userId, DateTime _from, DateTime _to)
        {
            var from = ((DateTimeOffset)_from).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)_to).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesByUserInTimePeriod(userId, from, to);
            return DetermineMostPopularAlbums(scrobbles).Select(album => new ScrobbledAlbum() { Album = album.Key, ScrobbleAmount = album.Count() }).ToList();
        }

        public async Task<List<ScrobbledTrack>> GetScrobbledTracks(string userId, DateTime _from, DateTime _to)
        {
            var from = ((DateTimeOffset)_from).ToUnixTimeMilliseconds();
            var to = ((DateTimeOffset)_to).ToUnixTimeMilliseconds();
            var scrobbles = await scrobbleRepository.GetScrobblesByUserInTimePeriod(userId, from, to);
            return DetermineMostPopularTracks(scrobbles).Select(track => new ScrobbledTrack() { Track = track.Key, ScrobbleAmount = track.Count() }).ToList();
        }

        private static IEnumerable<IGrouping<Artist, Artist>> DetermineMostPopularArtists(List<Scrobble> scrobbles)
        {
            var artists = scrobbles.SelectMany(scrobble => scrobble.Track.Artists).ToList();
            return artists.GroupBy(artist => artist)
                .OrderByDescending(artist => artist.Count());
        }

        private static IEnumerable<IGrouping<Album, Album>> DetermineMostPopularAlbums(List<Scrobble> scrobbles)
        {
            var albums = scrobbles.Select(scrobble => scrobble.Track.Album).ToList();
            return albums.GroupBy(album => album)
                .OrderByDescending(album => album.Count());
        }

        private static IEnumerable<IGrouping<Track, Track>> DetermineMostPopularTracks(List<Scrobble> scrobbles)
        {
            var tracks = scrobbles.Select(scrobble => scrobble.Track).ToList();
            return tracks.GroupBy(track => track)
                .OrderByDescending(track => track.Count());
        }
    }
}
