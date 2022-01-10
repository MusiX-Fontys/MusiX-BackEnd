using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProfileController : ControllerBase
    {
        private readonly ProfileService profileService;
        private readonly UserService userService;

        public ProfileController(ProfileService profileService, UserService userService)
        {
            this.profileService = profileService;
            this.userService = userService;
        }

        [HttpGet("{id}")]
        [AllowAnonymous]
        public async Task<IActionResult> GetProfileById([FromRoute] string id)
        {
            var profile = await profileService.GetProfileById(id);
            return Ok(ApiResponse.Ok().AddData("profile", profile));
        }


        [HttpGet("search/{search}")]
        [AllowAnonymous]
        public async Task<IActionResult> GetProfilesBySearchQuery([FromRoute] string search)
        {
            if (string.IsNullOrWhiteSpace(search))
                return BadRequest(ApiResponse.Error("No Given Search String"));

            var profiles = await profileService.GetProfilesBySearchQuery(search);
            return Ok(ApiResponse.Ok().AddData("profiles", profiles));
        }

        [HttpPut("follow/{id}")]
        [Authorize]
        public async Task<IActionResult> Follow([FromRoute] string id)
        {
            var followingUser = await userService.GetUserModelById(User.Claims.FirstOrDefault(claim => claim.Type == ClaimTypes.NameIdentifier).Value);
            var followedUser = await userService.GetUserModelById(id);

            if (followingUser == null || followedUser == null)
                return BadRequest(ApiResponse.Error("User not found."));
            if (followingUser == followedUser)
                return BadRequest(ApiResponse.Error("Can't follow yourself."));

            await profileService.FollowUser(followingUser, followedUser);
            return Ok(ApiResponse.Ok());
        }

        [HttpPut("unfollow/{id}")]
        [Authorize]
        public async Task<IActionResult> Unfollow([FromRoute] string id)
        {
            var followingUser = await userService.GetUserModelById(User.Claims.FirstOrDefault(claim => claim.Type == ClaimTypes.NameIdentifier).Value);
            var followedUser = await userService.GetUserModelById(id);

            if (followingUser == null || followedUser == null)
                return BadRequest(ApiResponse.Error("User not found."));
            if (followingUser.Id == followedUser.Id)
                return BadRequest(ApiResponse.Error("Can't unfollow yourself."));

            await profileService.UnfollowUser(followingUser, followedUser);
            return Ok(ApiResponse.Ok());
        }
    }
}
