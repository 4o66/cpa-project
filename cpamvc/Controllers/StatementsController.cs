using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using cpamvc.Models;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class StatementsController : Controller
    {
        SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

        // GET: /<controller>/
        public IActionResult Index()
        {
            List<Company> companies = Company.getCompanies();

           
            ViewData["companies"] = companies;
            return View();
        }
    }
}
