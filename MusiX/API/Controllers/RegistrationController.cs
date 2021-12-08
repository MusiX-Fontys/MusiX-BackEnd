using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [AllowAnonymous]
    public class RegistrationController : ControllerBase
    {
        private readonly RegistrationService signUpService;

        public RegistrationController(RegistrationService signUpService)
        {
            this.signUpService = signUpService;
        }

        [HttpPost]
        public async Task<ActionResult<ApiResponse>> Registrate([FromBody] RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new IdentityUser
                {
                    Email = model.Email.Trim(),
                    UserName = model.UserName.Trim()
                };

                if (!signUpService.IsEmailValid(user.Email))
                    return BadRequest(ApiResponse.Error("Not valid email submitted."));

                if (await signUpService.DoesEmailExist(user.Email))
                    return BadRequest(ApiResponse.Error("There already exists an account with this email."));

                if (await signUpService.DoesUsernameExist(user.UserName))
                    return BadRequest(ApiResponse.Error("There already exists an account with this username."));

                if(await signUpService.CreateIdentityAccount(user))
                    return Ok(ApiResponse.Ok($"User succesfully created. An email will be sent to you with your password."));

                return BadRequest(ApiResponse.Error("Failed to create Identity user. Please try again later."));
            }

            return BadRequest(ApiResponse.Error("Not all required fields have been filled in."));
        }
    }
}
