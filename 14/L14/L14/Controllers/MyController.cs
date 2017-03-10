using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace L14.Controllers
{
    public class MyController : Controller
    {
        // GET: My
        /*
        public ActionResult Index()
        {
            return View();
        }
        */
        public ActionResult Index()
        {
            //ViewBag.param = a.ToString();
            return View("My");
        }
    }
}