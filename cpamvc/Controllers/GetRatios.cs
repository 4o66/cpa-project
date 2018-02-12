using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    [Route("api/[controller]")]
    public class GetRatios : Controller
    {
      

        // GET api/<controller>
        [HttpGet]
        public IActionResult Get(int company_id, int ratio_id)
        {
            Company c = Company.GetCompany(company_id);
            Ratio r = Ratio.GetRatio(ratio_id);

            return Ok(CalculatedRatio.GetCalculatedRatios(r, c));
    }

    // POST api/<controller>
    [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
