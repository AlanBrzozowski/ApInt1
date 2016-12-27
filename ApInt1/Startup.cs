using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ApInt1.Startup))]
namespace ApInt1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
