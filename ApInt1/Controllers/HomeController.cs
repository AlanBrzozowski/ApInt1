using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ApInt1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Ligi()
        {
            return View();
        }

        public ActionResult Stadiony()
        {
            return View();
        }

        public ActionResult Zawodnicy()
        {
            return View();
        }

        public ActionResult Tabela()
        {
            return View();
        }

        public ActionResult Terminarz()
        {
            return View();
        }

        public ActionResult O_Nas()
        {
            return View();
        }
    }
}