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
    [Authorize(Roles = "administrator")]
    public class UserManagmentController : ControllerBase
    {
        private readonly UserService userService;

        public UserManagmentController(UserService userService)
        {
            this.userService = userService;
        }

        [HttpGet]
        public async Task<IActionResult> GetUsers()
        {
            var users = await userService.GetUsers();
            return Ok(ApiResponse.Ok().AddData("users", users));
        }

        [HttpGet("{role}")]
        public async Task<IActionResult> GetUsers([FromRoute] string role)
        { 
            var users = await userService.GetUsers(role);
            return Ok(ApiResponse.Ok().AddData("users", users));
        }

        [HttpGet("{role}/{search}")]
        public async Task<IActionResult> GetUsers([FromRoute] string role, string search)
        {
            var users = await userService.GetUsers(role, search);
            return Ok(ApiResponse.Ok().AddData("users", users));
        }

        [HttpPut("upgrade/{id}")]
        public async Task<IActionResult> UpgradeUser([FromRoute] string id)
        {
            await userService.UpgradeToAdministrator(id);
            return Ok(ApiResponse.Ok());
        }

        [HttpPut("downgrade/{id}")]
        public async Task<IActionResult> DowngradeUser([FromRoute] string id)
        {
            if (User.Claims.FirstOrDefault(claim => claim.Type == ClaimTypes.NameIdentifier).Value == id)
                return BadRequest(ApiResponse.Error("You are not allowed to change your own role."));

            await userService.DowngradeToGeneral(id);
            return Ok(ApiResponse.Ok());
        }
    }
}
