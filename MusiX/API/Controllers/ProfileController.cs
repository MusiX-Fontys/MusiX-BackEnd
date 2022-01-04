using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [AllowAnonymous]
    public class ProfileController : ControllerBase
    {
        private readonly ProfileService profileService;

        public ProfileController(ProfileService profileService)
        {
            this.profileService = profileService;
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<ApiResponse>> GetProfileById([FromRoute] string id)
        {
            var profile = await profileService.GetProfileById(id);
            return Ok(ApiResponse.Ok().AddData("profile", profile));
        }


        [HttpGet("search/{search}")]
        public async Task<ActionResult<ApiResponse>> GetProfilesBySearchQuery([FromRoute] string search)
        {
            if (string.IsNullOrWhiteSpace(search))
                return BadRequest(ApiResponse.Error("No Given Search String"));

            var profiles = await profileService.GetProfilesBySearchQuery(search);
            return Ok(ApiResponse.Ok().AddData("profiles", profiles));
        }
    }
}
