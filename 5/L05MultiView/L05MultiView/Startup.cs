using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L05MultiView.Startup))]
namespace L05MultiView
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
