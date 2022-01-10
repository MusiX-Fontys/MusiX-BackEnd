using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class DashboardService
    {
        private readonly ScrobbleRepository scrobbleRepository;
        private readonly UserRepository userRepository;

        public DashboardService(ScrobbleRepository scrobbleRepository, UserRepository userRepository)
        {
            this.scrobbleRepository = scrobbleRepository;
            this.userRepository = userRepository;
        }

        public async Task<DashboardModel> GetDashboard()
        {
            var from = DateTime.Now.AddMonths(-1);
            var to = DateTime.Now;

            var users = await userRepository.GetUserModels();
            var scrobbles = await scrobbleRepository.GetScrobblesInTimePeriod(((DateTimeOffset)from).ToUnixTimeMilliseconds(), ((DateTimeOffset)to).ToUnixTimeMilliseconds());

            return new DashboardModel()
            {
                From = from.ToString("dd-MM-yyyy"),
                To = to.ToString("dd-MM-yyyy"),
                NewUsers = users.Count(user => user.CreationDate.Date >= from.Date),
                ActiveUsers = scrobbles.Select(scrobble => scrobble.User).GroupBy(user => user).Count(),
                Scrobbles = scrobbles.Count,
                Tracks = scrobbles.Select(scrobble => scrobble.Track).GroupBy(track => track).Count(),
                Albums = scrobbles.Select(scrobble => scrobble.Track.Album).GroupBy(album => album).Count(),
                Artists = scrobbles.SelectMany(scrobble => scrobble.Track.Artists).GroupBy(artist => artist).Count()
            };
        }
    }
}
