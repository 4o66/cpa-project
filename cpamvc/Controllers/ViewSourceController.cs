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
        [HttpGet("/ViewSource/Index/{id=0}")]
        public IActionResult Index(int id)
        {
            List<Article> articles = Article.getArticles();
            Article article = new Article();
            if (id != 0)
            {
                article = Article.getArticleById(id);
            }

           
            //List<Article> articles = new List<Article>();

            //try
            //{
            //    sqlConn.Open();
            //    SqlDataReader myReader = null;
            //    SqlCommand sqlCmd = new SqlCommand("SELECT id, company_id, source, date, url, text, " +
            //        "title FROM article", sqlConn);

            //    myReader = sqlCmd.ExecuteReader();
            //    while (myReader.Read())
            //    {
            //        articles.Add(new Article {
            //            ID = (Int32.Parse(myReader["id"].ToString())),
            //            Title = myReader["title"].ToString(),
            //            Body = myReader["text"].ToString(),
            //            Source = myReader["source"].ToString(),
            //            CompanyID = Int32.Parse(myReader["company_id"].ToString()),
            //            Date = DateTime.Parse( myReader["date"].ToString())
            //        });
            //    }

            //    sqlConn.Close();
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine(e.ToString());
            //}
            //Article article = new Article {Body = "Select Article to View" };
            //if (id != 0)
            //{
            //    try
            //    {
            //        sqlConn.Open();
            //        SqlDataReader myReader = null;
            //        SqlCommand cmd = new SqlCommand("SELECT id, company_id, source, date, url, text, " +
            //                "title FROM article WHERE id = " + id, sqlConn);
            //        myReader = cmd.ExecuteReader();

            //        while (myReader.Read())
            //        {
            //            article = new Article
            //            {
            //                ID = (Int32.Parse(myReader["id"].ToString())),
            //                Title = myReader["title"].ToString(),
            //                Body = myReader["text"].ToString(),
            //                Source = myReader["source"].ToString(),
            //                CompanyID = Int32.Parse(myReader["company_id"].ToString()),
            //                Date = DateTime.Parse(myReader["date"].ToString())
            //            };
            //        }
            //        sqlConn.Close();
            //    }

            //    catch (Exception e)
            //    {
            //        Console.WriteLine(e.ToString());
            //    }
            //}
            ViewData["selectedArticle"] = article;
            ViewData["articles"] = articles;
            return View();
        }

        
    }
}
