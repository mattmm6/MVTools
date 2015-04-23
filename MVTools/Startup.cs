using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVTools.Startup))]
namespace MVTools
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
