using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BrainStation23.Web.Startup))]
namespace BrainStation23.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
