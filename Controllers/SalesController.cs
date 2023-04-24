using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcProje.Models.Entity;

namespace mvcProje.Controllers
{
    public class SalesController : Controller
    {
        // GET: Sales
        MvcProjeEntities db=new MvcProjeEntities();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult AddSale()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddSale(SalesTable p1)
        {
            db.SalesTable.Add(p1);
            db.SaveChanges();

            return View("Index");
        }
    }
}