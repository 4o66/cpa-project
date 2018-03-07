using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class AnalysisController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index(int ratio_id = -1, int company_id = -1)
        {

            List<Company> companies = Company.getCompanies();
            List<Ratio> ratios = Ratio.GetRatios();
            Ratio currentRatio = ratios[0];
            Company currentCompany = companies[0];
            if(ratio_id != -1)
            {
                currentRatio = Ratio.GetRatio(ratio_id);
            }
            if(company_id != -1)
            {
                currentCompany = Company.GetCompany(company_id);
            }
            List<CalculatedRatio> calculatedRatios = CalculatedRatio.GetCalculatedRatios(currentRatio, currentCompany);
            ViewData["calculatedRatios"] = calculatedRatios;
            List<Article> articles = Article.GetArticleByRatio(currentRatio, currentCompany);
            if (articles.Count < 1)
            {
                Article blankArticle = new Article()
                {
                    Title = "No articles for this ratio.",
                    Body = "None",
                    Date = DateTime.Now,
                    Source = "none"
                };
                articles = new List<Article>();
                articles.Add(blankArticle);
            }
            ViewData["currentRatio"] = currentRatio;
            ViewData["currentCompany"] = currentCompany;
            ViewData["companies"] = companies;
            ViewData["ratios"] = ratios;
            ViewData["articles"] = articles; //Article.GetArticleByRatio(currentRatio, currentCompany);
            
            return View();
        }

       
    }
}
