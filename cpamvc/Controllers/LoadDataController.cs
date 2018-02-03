using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class LoadDataController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult AddConstructs([FromBody] List<RatioConstruct> constructs )
        {
            long rows = -1;
            foreach(RatioConstruct ratio in constructs)
            {
                System.Diagnostics.Debug.WriteLine(ratio.Name + "  ...  " + ratio.Tag);
                RatioConstruct toAdd = new RatioConstruct { Name = ratio.Name, Tag = ratio.Tag };
                rows =  RatioConstruct.AddRatioConstruct(toAdd);
            }
            if (rows == -1)
                return NotFound();
            else
                return Ok();
        }

        [HttpPost]
        public IActionResult AddStatement([FromBody] Statement statement)
        {
            long rows = -1;
            System.Diagnostics.Debug.WriteLine(statement.Company.Symbol);
            System.Diagnostics.Debug.WriteLine(statement.Name);

            List<RatioConstruct> lines = statement.Details;
            foreach(RatioConstruct line in lines)
            {
                System.Diagnostics.Debug.WriteLine(line.Tag + " .. " + line.Value);
                
            }
            return Ok();
        }
    }
}
