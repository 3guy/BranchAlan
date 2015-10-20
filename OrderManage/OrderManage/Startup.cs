using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OrderManage.Startup))]
namespace OrderManage
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
