using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Globalization;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [AllowAnonymous]
    public class ScrobbleController : ControllerBase
    {
        private readonly ScrobbleService scrobbleService;

        public ScrobbleController(ScrobbleService scrobbleService)
        {
            this.scrobbleService = scrobbleService;
        }

        [HttpGet("popular-artists")]
        public async Task<ActionResult<ApiResponse>> GetMostPopularArtists()
        {
            var artists = await scrobbleService.GetMostPopularArtists();
            return Ok(ApiResponse.Ok().AddData("artists", artists));
        }

        [HttpGet("popular-albums")]
        public async Task<ActionResult<ApiResponse>> GetMostPopularAlbums()
        {
            var albums = await scrobbleService.GetMostPopularAlbums();
            return Ok(ApiResponse.Ok().AddData("albums", albums));
        }

        [HttpGet("popular-tracks")]
        public async Task<ActionResult<ApiResponse>> GetMostPopularTracks()
        {
            var tracks = await scrobbleService.GetMostPopularTracks();
            return Ok(ApiResponse.Ok().AddData("tracks", tracks));
        }

        [HttpGet("{userId}/artists")]
        public async Task<ActionResult<ApiResponse>> GetUserScrobbledArtists([FromRoute] string userId, [FromQuery] string from, [FromQuery] string to)
        {
            var fromDate = DateTime.ParseExact(from, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            var toDate = DateTime.ParseExact(to, "yyyy-MM-dd", CultureInfo.InvariantCulture);

            var artists = await scrobbleService.GetScrobbledArtists(userId, fromDate, toDate);
            return Ok(ApiResponse.Ok().AddData("artists", artists));
        }

        [HttpGet("{userId}/albums")]
        public async Task<ActionResult<ApiResponse>> GetUserScrobbledAlbums([FromRoute] string userId, [FromQuery] string from, [FromQuery] string to)
        {
            var fromDate = DateTime.ParseExact(from, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            var toDate = DateTime.ParseExact(to, "yyyy-MM-dd", CultureInfo.InvariantCulture);

            var albums = await scrobbleService.GetScrobbledAlbums(userId, fromDate, toDate);
            return Ok(ApiResponse.Ok().AddData("albums", albums));
        }

        [HttpGet("{userId}/tracks")]
        public async Task<ActionResult<ApiResponse>> GetUserScrobbledTracks([FromRoute]string userId, [FromQuery]string from, [FromQuery]string to)
        {
            var fromDate = DateTime.ParseExact(from, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            var toDate = DateTime.ParseExact(to, "yyyy-MM-dd", CultureInfo.InvariantCulture);

            var tracks = await scrobbleService.GetScrobbledTracks(userId, fromDate, toDate);
            return Ok(ApiResponse.Ok().AddData("tracks", tracks));
        }
    }
}
