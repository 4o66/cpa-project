using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using cpamvc.Models;
using Newtonsoft.Json;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class StatementsController : Controller
    {
        SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

        // GET: /<controller>/
        public IActionResult Index(string statement_name = "income_statement", int company_id = -1)
        {
            List<Company> companies = Company.getCompanies();
            if (company_id == -1)
            {
                company_id = companies[0].ID;
            }
            List<Statement> statements = Statement.GetStatements(company_id, statement_name);
       

            System.Diagnostics.Trace.WriteLine(statements.Count);
            System.Diagnostics.Trace.WriteLine(JsonConvert.SerializeObject(statements, Formatting.Indented));

            ViewData["companyID"] = company_id;
     
            ViewData["currentStatement"] = statement_name;
            ViewData["statements"] = statements;
            ViewData["companies"] = companies;
            
            return View();
        }

        //GET: /controller/getStatements/companyid=?statement=?
      
    }
}
