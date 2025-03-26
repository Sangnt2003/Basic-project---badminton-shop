using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SH_SHOP.Help;
using SH_SHOP.Models;
using SH_SHOP.Repositories;
using SH_SHOP.VNPay;
using SH_SHOP.Hubs;
var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

/*builder.Services.AddDefaultIdentity<User>(options => options.SignIn.RequireConfirmedAccount = true).AddEntityFrameworkStores<ApplicationDbContext>();*/

builder.Services.AddIdentity<User, IdentityRole>()
    .AddDefaultTokenProviders()
    .AddDefaultUI()
    .AddEntityFrameworkStores<ApplicationDbContext>()
    .AddSignInManager<SignInManager<User>>(); ;

builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = $"/Identity/Account/Login";
    options.LogoutPath = $"/Identity/Account/Logout";
    options.AccessDeniedPath = $"/Identity/Account/AccessDenied";
});

builder.Services.AddRazorPages();
builder.Services.AddControllersWithViews();
builder.Services.AddScoped<IProductRepository, EFProductRepository>();
builder.Services.AddScoped<ICategoryRepository, EFCategoryRepository>();
builder.Services.AddScoped<IShoppingCart, EFShoppingCart>();
builder.Services.AddScoped<ITradeMarkRepository, EFTradeMarkRepository>();
builder.Services.AddScoped<IPromotionRepository, EFPromotionRepository>();
builder.Services.AddScoped<IProductImageRepository, EFProductImageRepository>();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});

builder.Services.AddSingleton<IVnPayService, VnPayService>();
builder.Services.AddSignalR();
var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseSession();
app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

// Add the custom middleware before endpoint routing
app.UseMiddleware<RoleBasedRedirectMiddleware>();

app.MapRazorPages();
app.UseEndpoints(endpoints =>
{
    _ = endpoints.MapControllerRoute(name: "Admin", pattern: "{area:exists}/{controller=Admin}/{action=Index}/{id?}");
    _ = endpoints.MapControllerRoute(name: "default", pattern: "{controller=Home}/{action=Index}/{id?}");
});
app.MapHub<ChatHub>("/chatHub").RequireAuthorization();
app.Run();
