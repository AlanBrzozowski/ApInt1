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
            // return View();
            if (Session["LogedUserID"] != null)
            {
                return RedirectToAction("Index", "Stadion");
            }
            else
            {
                return RedirectToAction("List", "Stadion");
            }
        }

        public ActionResult Zawodnicy()
        {
            if (Session["LogedUserID"] != null)
            {
                return RedirectToAction("Index", "Zawodnik");
            }
            else
            {
                return RedirectToAction("List", "Zawodnik");
            }
        }
        public ActionResult Kluby()
        {
            if (Session["LogedUserID"] != null)
            {
                return RedirectToAction("Index", "Klub");
            }
            else
            {
                return RedirectToAction("List", "Klub");
            }
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

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(User u)
        {
            if(ModelState.IsValid)
            {
                using (UserdbEntities dc = new UserdbEntities())
                {
                    var v = dc.Users.Where(a => a.Username.Equals(u.Username) && a.Password.Equals(u.Password)).FirstOrDefault();
                    if(v != null)
                    {
                        Session["LogedUserID"] = v.UserID.ToString();
                        Session["LogedUserFullname"] = v.FullName.ToString();
                        return RedirectToAction("AfterLogin");
                    }
                }
            }
            return View(u);
        }

        public ActionResult AfterLogin()
        {
            if (Session["LogedUserID"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
    }
}