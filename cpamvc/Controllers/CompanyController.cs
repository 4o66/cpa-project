using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using cpamvc.Models;
using System.Data.SqlClient;
using System;
using System.Data;

namespace cpamvc.Controllers
{
    [Route("api/[controller]")]
    public class CompanyController : Controller
    {
        SqlConnection sqlConn = new SqlConnection("Server=localhost;Database=cpa;Trusted_Connection=True;");

        [HttpGet]
        public IEnumerable<Company> GetCompanies()
        {
            //return array of company objects

            List<Company> companies = new List<Company>();

            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT id, name, description, market, symbol FROM company", sqlConn);

                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    companies.Add(new Company(Int32.Parse(myReader["id"].ToString()), myReader["name"].ToString(),
                        myReader["description"].ToString(), myReader["market"].ToString(), myReader["symbol"].ToString()));
                }

                sqlConn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            //testing  -- it works on route /api/company
            //Company c1 = new Company(1, "Apple");
            //Company c2 = new Company(2, "IBM"); 
            //Company c3 = new Company(3, "Amazon");

            //companies.Add(c1);
            //companies.Add(c2);
            //companies.Add(c3);
            return companies;
        }

        [HttpGet("{id}")]
        public IActionResult GetCompanyById(int id)
        {
            //retrieve individual company by an id

            Company company = null;

            try
            {
                sqlConn.Open();
                SqlDataReader myReader = null;
                SqlCommand sqlCmd = new SqlCommand("SELECT TOP 1 id, name, description, market, symbol FROM company WHERE id = @Param1", sqlConn);
                sqlCmd.Parameters.Add(new SqlParameter("@Param1", SqlDbType.Int) { Value = id });

                myReader = sqlCmd.ExecuteReader();
                while (myReader.Read())
                {
                    company = new Company(Int32.Parse(myReader["id"].ToString()), myReader["name"].ToString(),
                        myReader["description"].ToString(), myReader["market"].ToString(), myReader["symbol"].ToString());
                }

                sqlConn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }

            return new ObjectResult(company);
        }

        [HttpPost]
        public IActionResult AddCompany([FromBody] Company company)
        {
            if (company == null)
            {
                return BadRequest();
            }
            
            //post company
            return null;
        }
        
    }
}