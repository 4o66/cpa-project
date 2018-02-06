using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using cpamvc.Models;
// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class ViewRatiosController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index(int ratio_id = -1)
        {
            List<Ratio> ratios = Ratio.GetRatios();
            if (ratio_id == -1)
            {
                ratio_id = ratios[0].ID;
            }
            System.Diagnostics.Trace.WriteLine("........Current ratio id:" + ratio_id);
            Ratio currentRatio = Ratio.GetRatio(ratio_id);
            
            ViewData["current-ratio"] = currentRatio;
            ViewData["ratio-list"] = ratios;
            return View();
        }
    }
}
