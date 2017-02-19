using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L02.Startup))]
namespace L02
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
