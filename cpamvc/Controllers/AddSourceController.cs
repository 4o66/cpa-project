using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class AddSourceController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            List<Company> companies = Company.getCompanies();
            ViewData["companies"] = companies;
            return View();
        }

        public IActionResult AddArticle([FromBody] Article article)
        {
            int success = Article.AddArticle(article);
            if (success == -1)
            {
                return NotFound();
            }
            return Ok();
        }
    }
}
