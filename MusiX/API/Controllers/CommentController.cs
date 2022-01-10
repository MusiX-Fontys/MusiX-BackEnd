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
    [Authorize]
    public class CommentController : ControllerBase
    {
        private readonly CommentService commentService;
        private readonly UserService userService;

        public CommentController(CommentService commentService, UserService userService)
        {
            this.commentService = commentService;
            this.userService = userService;
        }

        [HttpPost("{id}")]
        public async Task<ActionResult<ApiResponse>> PostComment([FromRoute] string id, [FromBody] CommentModel comment)
        {
            var profileUser = await userService.GetUserModelById(id);
            var commentUser = await userService.GetUserModelById(User.Claims.FirstOrDefault(claim => claim.Type == ClaimTypes.NameIdentifier).Value);

            await commentService.AddComment(profileUser, commentUser, comment);

            return Ok(ApiResponse.Ok());
        }
    }
}
