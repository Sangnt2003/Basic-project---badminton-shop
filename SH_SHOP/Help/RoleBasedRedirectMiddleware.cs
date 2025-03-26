using Microsoft.AspNetCore.Identity;
using SH_SHOP.Models;

namespace SH_SHOP.Help
{
    public class RoleBasedRedirectMiddleware
    {
        private readonly RequestDelegate _next;

        public RoleBasedRedirectMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            var userManager = context.RequestServices.GetRequiredService<UserManager<User>>();

            if (context.User.Identity.IsAuthenticated && context.Request.Path == "/")
            {
                var user = await userManager.GetUserAsync(context.User);
                if (user != null)
                {
                    var roles = await userManager.GetRolesAsync(user);

                    if (roles.Contains("Admin") || roles.Contains("SuperAdmin") || roles.Contains("Manager"))
                    {
                        context.Response.Redirect("/Admin/Admin/Index");
                        return;
                    }

                    if (roles.Contains("Customer"))
                    {
                        context.Response.Redirect("/Home/Index");
                        return;
                    }
                }
            }

            await _next(context);
        }
    }


}
