using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProfileController : ControllerBase
    {
        private readonly ProfileService profileService;

        public ProfileController(ProfileService profileService)
        {
            this.profileService = profileService;
        }

        [AllowAnonymous]
        [HttpGet("{search}")]
        public async Task<ActionResult<ApiResponse>> GetProfilesBySearchQuery([FromRoute] string search)
        {
            if (string.IsNullOrWhiteSpace(search))
                return BadRequest(ApiResponse.Error("No Given Search String"));

            var profiles = await profileService.GetProfilesBySearchQuery(search);
            return Ok(ApiResponse.Ok().AddData("profiles", profiles));
        }
    }
}
