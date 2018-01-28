using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using cpa.Models;

namespace cpa.Controllers
{
    [Route("api/[controller]")]
    public class ArticleController : Controller
    {
        [HttpGet]
        public IEnumerable<Article> GetArticles()
        {
            //return array of article objects

            return null;
        }

        [HttpGet("{id}")]
        public IActionResult GetArticleById(long id)
        {
            //retrieve individual article by an id
            return null;
        }
        [HttpGet("/company/{id}")]
        public IActionResult GetArticleByCompany(long id)
        {
            //retrieve individual article by a Company id
            return null;
        }
         [HttpGet("/company/{companyID}/ratio/{ratioID}")]
        public IActionResult GetRelevantArticles(long companyID, long ratioID)
        {
            //retrieve articles by company + ratio
            return null;
        }

        [HttpPost]
        public IActionResult AddArticle([FromBody] Article article)
        {
            if (article == null) {
                return BadRequest();
            }
            //post article
            return null;
        }
        
    }
}