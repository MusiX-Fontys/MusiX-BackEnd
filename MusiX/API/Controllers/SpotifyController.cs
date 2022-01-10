using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SpotifyController : ControllerBase
    {
        private readonly SpotifyService spotifyService;
        private readonly UserService userService;

        public SpotifyController(SpotifyService spotifyService, UserService userService)
        {
            this.spotifyService = spotifyService;
            this.userService = userService;
        }

        [Authorize]
        [HttpGet("spotify-connection")]
        public async Task<IActionResult> HasUserSetUpSpotifyConnection()
        {
            var user = await userService.GetUserModelByUsername(User.FindFirst("name").Value);
            return Ok(ApiResponse.Ok().AddData("connection", user.HasSetupSpotifyConnection));
        }

        [Authorize(Policy = "HasSpotifyToken")]
        [HttpGet("recently-played")]
        public async Task<IActionResult> GetRecentlyPlayed() 
        {
            Request.Headers.TryGetValue("SpotifyToken", out var token);
            var user = await userService.GetUserModelByUsername(User.FindFirst("name").Value);

            spotifyService.AddLatestScrobbles(token, user);

            return Ok(ApiResponse.Ok());
        }
    }
}
