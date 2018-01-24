using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using cpa.Models;

namespace cpa.Controllers
{
    [Route("api/[controller]")]
    public class CompanyController : Controller
    {
        [HttpGet]
        public IEnumerable<Company> GetCompanies()
        {
            //return array of company objects

            //testing  -- it works on route /api/company
            Company c1 = new Company(1, "Apple");
            Company c2 = new Company(2, "IBM"); 
            Company c3 = new Company(3, "Amazon");
            List<Company> companies = new List<Company>();
            companies.Add(c1);
            companies.Add(c2);
            companies.Add(c3);
            return companies;
        }

        [HttpGet("{id}")]
        public IActionResult GetCompanyById(long id)
        {
            //retrieve individual company by an id
            return null;
        }
        
    }
}