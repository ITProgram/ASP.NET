using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(L05AdRotator.Startup))]
namespace L05AdRotator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
