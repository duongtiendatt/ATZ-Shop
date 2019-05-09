using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ClothesShop.Web.Startup))]
namespace ClothesShop.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
