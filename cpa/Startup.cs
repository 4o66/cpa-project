using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using cpa.Models;
using Microsoft.EntityFrameworkCore;

namespace cpa
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<CpaContext>(opt => opt.UseInMemoryDatabase("CPA"));
            services.AddMvc();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseBrowserLink();
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
            }

            app.UseStaticFiles();

            app.UseMvc();

            var context = app.ApplicationServices.GetService<CpaContext>();
        }

        private static void AddTestData(CpaContext context)
        {
            var c1 = new Company(1, "Apple");
            var c2 = new Company(2, "Amazon");
            var c3 = new Company(3, "Costco");
            context.Companys.Add(c1);
            context.Companys.Add(c2);
            context.Companys.Add(c3);

            var a1 = new Article(1, 1, "Apple Article 1", "Apple article body 1", DateTime.Now, "Source 1");
            var a2 = new Article(2, 1, "Apple Article 2", "Apple article body 2", DateTime.Now, "Source 2");
            var a3 = new Article(3, 2, "Amazon Article 1", "Apple article body 1", DateTime.Now, "Source 1");
            var a4 = new Article(4, 2, "Amazon Article 2", "Apple article body 2", DateTime.Now, "Source 2");
            var a5 = new Article(5, 3, "Costco Article 1", "Apple article body 1", DateTime.Now, "Source 1");
            var a6 = new Article(6, 3, "Costco Article 2", "Apple article body 2", DateTime.Now, "Source 2");
            context.Articles.Add(a1);
            context.Articles.Add(a2);
            context.Articles.Add(a3);
            context.Articles.Add(a4);
            context.Articles.Add(a5);
            context.Articles.Add(a6);

            var assets = new RatioConstruct("Assets");
            var debt = new RatioConstruct("Debt");
            var cogs = new RatioConstruct("Cost of Goods Sold");
            var sales = new RatioConstruct("Sales");
            var receivables = new RatioConstruct("Receivables");
            var revenue = new RatioConstruct("Revenue");
            var averageAssets = new RatioConstruct("Average Assets");
            List<RatioConstruct> assetTurnoverN = new List<RatioConstruct>();
            assetTurnoverN.Add(revenue);
            

        }
    }
}
