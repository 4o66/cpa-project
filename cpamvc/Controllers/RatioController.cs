using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using cpamvc.Models;

namespace cpamvc.Controllers
{
    [Route("api/[controller]")]
    public class RatioController : Controller
    {
        [HttpGet]
        public IEnumerable<Ratio> GetRatios()
        {
            //return array of ratio objects

            //testing  -- it works on route /api/ratio
            List<Ratio> list = new List<Ratio>();
            return list;
        }

        [HttpGet("{id}")]
        public IActionResult GetRatioById(long id)
        {
            //retrieve individual ratio by an id
            return null;
        }

        [HttpPost]
        public IActionResult AddRatio([FromBody] Ratio ratio) 
        {
            //addratio
            return null;
        }
        
    }
}