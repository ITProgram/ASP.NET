using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace L14.Controllers
{
    public class PhoneController : Controller
    {
        // GET: Phone
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Index(int a)
        {
            return View(a);
        }
        public ActionResult Index(string a)
        {
            return View(a+"string");
        }
    }
}