using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ApInt1;

namespace ApInt1.Controllers
{
    public class ZawodnikController : Controller
    {
        private RugbyEntities db = new RugbyEntities();

        // GET: Zawodnik
        public ActionResult Index()
        {
            var zawodnik = db.Zawodnik.Include(z => z.Klub);
            return View(zawodnik.ToList());
        }

        public ActionResult List()
        {
            var zawodnik = db.Zawodnik.Include(z => z.Klub);
            return View(zawodnik.ToList());
        }

        // GET: Zawodnik/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zawodnik zawodnik = db.Zawodnik.Find(id);
            if (zawodnik == null)
            {
                return HttpNotFound();
            }
            return View(zawodnik);
        }

        // GET: Zawodnik/Create
        public ActionResult Create()
        {
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA");
            return View();
        }

        // POST: Zawodnik/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_ZAWODNIK,ID_KLUB,IMIE,NAZWISKO,DATA_URODZENIA,NARODOWOSC")] Zawodnik zawodnik)
        {
            if (ModelState.IsValid)
            {
                db.Zawodnik.Add(zawodnik);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", zawodnik.ID_KLUB);
            return View(zawodnik);
        }

        // GET: Zawodnik/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zawodnik zawodnik = db.Zawodnik.Find(id);
            if (zawodnik == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", zawodnik.ID_KLUB);
            return View(zawodnik);
        }

        // POST: Zawodnik/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_ZAWODNIK,ID_KLUB,IMIE,NAZWISKO,DATA_URODZENIA,NARODOWOSC")] Zawodnik zawodnik)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zawodnik).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", zawodnik.ID_KLUB);
            return View(zawodnik);
        }

        // GET: Zawodnik/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zawodnik zawodnik = db.Zawodnik.Find(id);
            if (zawodnik == null)
            {
                return HttpNotFound();
            }
            return View(zawodnik);
        }

        // POST: Zawodnik/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Zawodnik zawodnik = db.Zawodnik.Find(id);
            db.Zawodnik.Remove(zawodnik);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
