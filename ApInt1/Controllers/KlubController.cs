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
    public class KlubController : Controller
    {
        private RugbyEntities db = new RugbyEntities();

        // GET: Klub
        public ActionResult Index()
        {
            var klub = db.Klub.Include(k => k.Liga);
            return View(klub.ToList());
        }
        public ActionResult List()
        {
            var klub = db.Klub.Include(k => k.Liga);
            return View(db.Klub.ToList());
        }

        // GET: Klub/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Klub klub = db.Klub.Find(id);
            if (klub == null)
            {
                return HttpNotFound();
            }
            return View(klub);
        }

        // GET: Klub/Create
        public ActionResult Create()
        {
            ViewBag.ID_LIGA = new SelectList(db.Liga, "ID_LIGA", "NAZWA");
            return View();
        }

        // POST: Klub/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID_KLUB,ID_LIGA,NAZWA")] Klub klub)
        {
            if (ModelState.IsValid)
            {
                db.Klub.Add(klub);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID_LIGA = new SelectList(db.Liga, "ID_LIGA", "NAZWA", klub.ID_LIGA);
            return View(klub);
        }

        // GET: Klub/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Klub klub = db.Klub.Find(id);
            if (klub == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID_LIGA = new SelectList(db.Liga, "ID_LIGA", "NAZWA", klub.ID_LIGA);
            return View(klub);
        }

        // POST: Klub/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID_KLUB,ID_LIGA,NAZWA")] Klub klub)
        {
            if (ModelState.IsValid)
            {
                db.Entry(klub).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID_LIGA = new SelectList(db.Liga, "ID_LIGA", "NAZWA", klub.ID_LIGA);
            return View(klub);
        }

        // GET: Klub/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Klub klub = db.Klub.Find(id);
            if (klub == null)
            {
                return HttpNotFound();
            }
            return View(klub);
        }

        // POST: Klub/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Klub klub = db.Klub.Find(id);
            db.Klub.Remove(klub);
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
