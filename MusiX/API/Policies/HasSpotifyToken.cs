using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using System;
using System.Threading.Tasks;

namespace API.Attributes
{
    public class HasSpotifyToken : AuthorizationHandler<HasSpotifyToken>, IAuthorizationRequirement
    {
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, HasSpotifyToken requirement)
        {
            if (context == null)
                throw new ArgumentNullException(nameof(context));
            if (requirement == null)
                throw new ArgumentNullException(nameof(requirement));
            
            var resource = (DefaultHttpContext)context.Resource;
            var httpContext = resource.HttpContext;
            if (httpContext.Request.Headers.ContainsKey("SpotifyToken"))
                context.Succeed(requirement);

            return Task.CompletedTask;
        }
    }
}
