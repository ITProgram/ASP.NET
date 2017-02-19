using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L03C.Startup))]
namespace L03C
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
