using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace ApInt1.Controllers
{
    public class ZawodnikController : Controller
    {
        RugbyEntities db = new RugbyEntities();

        public ActionResult Index()
        {
            return View(db.Zawodniks.ToList());
        }

        public ActionResult List()
        {
            return View(db.Zawodniks.ToList());
        }

        public ActionResult Details(int? id)
        {
            if(id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            Zawodnik zawodnik = db.Zawodniks.Find(id);
            if (zawodnik == null)
                return HttpNotFound();
            return View(zawodnik);
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            Zawodnik zawodnik = db.Zawodniks.Find(id);
            if (zawodnik == null)
                return HttpNotFound();
            return View(zawodnik);
        }

        [HttpGet]
        public ActionResult Delete(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            Zawodnik zawodnik = db.Zawodniks.Find(id);
            if (zawodnik == null)
                return HttpNotFound();
            return View(zawodnik);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Zawodnik zawodnik)
        {
            if(ModelState.IsValid)
            {
                db.Zawodniks.Add(zawodnik);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zawodnik);
        }

        [HttpPost]
        public ActionResult Edit(Zawodnik zawodnik)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zawodnik).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zawodnik);
        }

        [HttpPost]
        public ActionResult Delete(int? id, Zawodnik zawod)
        {
            Zawodnik zawodnik = new Zawodnik();
            if (ModelState.IsValid)
            {
                if (id == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                zawodnik = db.Zawodniks.Find(id);
                if (zawodnik == null)
                    return HttpNotFound();
                db.Zawodniks.Remove(zawodnik);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zawodnik);
        }
    }
}