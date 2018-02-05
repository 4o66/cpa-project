using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class RatioConstructionController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            List<RatioConstruct> list = RatioConstruct.getRatioConstructs();
            ViewData["ratioConstructs"] = list;
            return View();
        }

        [HttpPost]
        public IActionResult AddRatio([FromBody] Ratio ratio)
        {
            
            int rows = Ratio.AddRatio(ratio);

            if (rows == -1)
                return NotFound();
            return Ok();
        }
    }
}
