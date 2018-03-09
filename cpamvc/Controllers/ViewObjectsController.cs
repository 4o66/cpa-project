using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using cpamvc.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace cpamvc.Controllers
{
    public class ViewObjectsController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index(string objName = "")
        {
            //Get all objects
            List<RelationObject> objects = RelationObject.GetObjects();
            RelationObject selectedObject = new RelationObject();
            if (objName == "")
            {
                selectedObject = objects[0];
            }
            else
            {
                selectedObject = objects.Find(obj => obj.Name == objName);
            }
            ViewData["selectedObjectsIsA"] = Predicate.FindIsA(selectedObject);
            ViewData["selectedObjectsIsC"] = Predicate.FindIsC(selectedObject);
            ViewData["selectedObjectsIsP"] = Predicate.FindIsP(selectedObject);
            ViewData["objects"] = objects;
            ViewData["selectedObject"] = selectedObject;
            return View(); 
        }

     
    }
}
