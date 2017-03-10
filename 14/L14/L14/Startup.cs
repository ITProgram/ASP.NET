using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L14.Startup))]
namespace L14
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
