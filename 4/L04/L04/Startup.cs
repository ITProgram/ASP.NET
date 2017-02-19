using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L04.Startup))]
namespace L04
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
