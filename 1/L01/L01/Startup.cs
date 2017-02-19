using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L01.Startup))]
namespace L01
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
