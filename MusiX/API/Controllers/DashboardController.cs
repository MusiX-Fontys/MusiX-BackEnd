using API.DataTransferObjects.MusiX;
using API.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(Roles = "administrator")]
    public class DashboardController : ControllerBase
    {
        private readonly DashboardService dashboardService;

        public DashboardController(DashboardService dashboardService)
        {
            this.dashboardService = dashboardService;
        }

        [HttpGet]
        public async Task<IActionResult> GetDashboard()
        {
            var dashboard = await dashboardService.GetDashboard();
            return Ok(ApiResponse.Ok().AddData("dashboard", dashboard));
        }
    }
}
