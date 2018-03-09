using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class ViewSourceController : Controller
    {
        SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");
        // GET: /<controller>/
        [HttpGet]
        public IActionResult Index(int id = 0, int company_id = 0, int sortBy = 0)
        {
            List<Article> articles = Article.getArticles();
            if(company_id != 0)
            {
                articles = articles.Where(a => a.CompanyID == company_id).ToList();
            }
            Article article = new Article();
            if (id != 0)
            {
                article = Article.getArticleById(id);
            }
            articles = (sortBy == 0) ? articles.OrderBy(o => o.Title).ToList() : articles.OrderBy(a => a.Date).ToList();
            ViewData["companies"] = Company.getCompanies().OrderBy(o => o.Name).ToList();
            ViewData["selectedArticle"] = article;
            ViewData["articles"] = articles;
            ViewData["selectedCompany"] = company_id;
            ViewData["sortBy"] = sortBy;
            return View();
        }

        
    }
}
