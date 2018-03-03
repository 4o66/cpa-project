using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class ObjectCreationController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult AddObject([FromBody] RelationObject newObject)
        {

            int rows = RelationObject.AddObject(newObject);

            if (rows < 1)
                return NotFound();
            return Ok();
        }
    }
}
