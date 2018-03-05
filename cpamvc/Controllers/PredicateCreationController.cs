using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class PredicateCreationController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            List<RelationObject> objs = RelationObject.GetObjects();
            ViewData["objects"] = objs;
            return View();
        }

        [HttpPost]
        public IActionResult AddPredicate([FromBody] Predicate predicate)
        {
            int rows = Predicate.AddPredicate(predicate);
            if (rows < 1)
                return BadRequest();
            return Ok();
        }
    }
}
