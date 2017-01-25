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
    public class StadionController : Controller
    {
        private RugbyEntities db = new RugbyEntities();

        // GET: Stadion
        public ActionResult Index()
        {
            var stadion = db.Stadion.Include(s => s.Klub);
            return View(stadion.ToList());
        }

        public ActionResult List()
        {
            var klub = db.Klub.Include(k => k.Liga);
            return View(db.Stadion.ToList());
        }

        // GET: Stadion/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Stadion stadion = db.Stadion.Find(id);
            if (stadion == null)
            {
                return HttpNotFound();
            }
            return View(stadion);
        }

        // GET: Stadion/Create
        public ActionResult Create()
        {
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA");
            return View();
        }

        // POST: Stadion/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_STADION,ID_KLUB,NAZWA,MIASTO,POJEMNOSC")] Stadion stadion)
        {
            if (ModelState.IsValid)
            {
                db.Stadion.Add(stadion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", stadion.ID_KLUB);
            return View(stadion);
        }

        // GET: Stadion/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Stadion stadion = db.Stadion.Find(id);
            if (stadion == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", stadion.ID_KLUB);
            return View(stadion);
        }

        // POST: Stadion/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_STADION,ID_KLUB,NAZWA,MIASTO,POJEMNOSC")] Stadion stadion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(stadion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_KLUB = new SelectList(db.Klub, "ID_KLUB", "NAZWA", stadion.ID_KLUB);
            return View(stadion);
        }

        // GET: Stadion/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Stadion stadion = db.Stadion.Find(id);
            if (stadion == null)
            {
                return HttpNotFound();
            }
            return View(stadion);
        }

        // POST: Stadion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Stadion stadion = db.Stadion.Find(id);
            db.Stadion.Remove(stadion);
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
