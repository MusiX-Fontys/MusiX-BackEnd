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
    public class AuthenticationController : ControllerBase
    {
        private readonly AuthenticationService authenticationService;

        public AuthenticationController(AuthenticationService authenticationService)
        {
            this.authenticationService = authenticationService;
        }

        [HttpPost]
        public async Task<ActionResult<ApiResponse>> Authenticate([FromBody] LoginModel model)
        {
            if (ModelState.IsValid)
            {
                if (!await authenticationService.DoesEmailExist(model.Email))
                    return BadRequest(ApiResponse.Error("User not found."));

                if (!await authenticationService.IsPasswordCorrect(model))
                    return BadRequest(ApiResponse.Error("The email and password do not align."));

                var token = await authenticationService.Authenticate(model);

                if (token == null)
                    return BadRequest(ApiResponse.Error("Failed to login."));

                return Ok(ApiResponse.Ok().AddData("token", token));
            }

            return BadRequest(ApiResponse.Error("Not all required fields have been filled in."));
        }
    }
}
