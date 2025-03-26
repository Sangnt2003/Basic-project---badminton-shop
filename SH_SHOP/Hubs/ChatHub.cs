using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.SignalR;

namespace SH_SHOP.Hubs
{
    [Authorize]
    public class ChatHub : Hub
    {
        public async Task SendMessage(string user, string message)
        {
            var userRole = Context.User.Claims.FirstOrDefault(c => c.Type == System.Security.Claims.ClaimTypes.Role)?.Value;
            if (userRole == "Customer" || userRole == "Admin" || userRole == "Manager" || userRole == "SuperAdmin")
            {
                await Clients.All.SendAsync("ReceiveMessage", user, message);
            }
        }
    }
}