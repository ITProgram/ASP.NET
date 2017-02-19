using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L06.Startup))]
namespace L06
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
