using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using cpamvc.Models;

namespace cpamvc.Controllers
{
    [Route("api/[controller]")]
    public class StatementController : Controller
    {
        [HttpGet("/{companyID}/{statementName}")]
        public IEnumerable<Statement> GetStatements(long id)
        {
            //return array of Statements (IE 2015, 16, 17, 18)

            //testing  -- it works on route /api/ratio
            List<Statement> list = new List<Statement>();
            return list;
        }

        [HttpGet("/{companyID}/{statementName}/{year}")]
        public IActionResult GetRatioById(long id)
        {
            //get individual statement by company, statement, then year
            return null;
        }

        
    }
}