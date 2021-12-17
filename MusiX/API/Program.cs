using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace API
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                    webBuilder.UseSentry(o =>
                    {
                        o.Dsn = "https://9efdd3945c1f456bb6f76ce5c38e389f@o1088025.ingest.sentry.io/6102497";
                        o.Debug = true;
                        o.TracesSampleRate = 1.0;
                    });
                });
    }
}
