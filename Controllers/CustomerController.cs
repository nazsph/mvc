using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcProje.Models.Entity;

namespace mvcProje.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        MvcProjeEntities db=new MvcProjeEntities();
        public ActionResult Index(String p1)
        {
            var values = from v in db.CustomerTable select v;
            if (!string.IsNullOrEmpty(p1))
            {
                values=values.Where(m=>m.CustomerName.Contains(p1));
            }
            return View(values.ToList());
            //var customers=db.CustomerTable.ToList();
            //return View(customers);
        }

        [HttpGet]
        public ActionResult AddCustomer()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddCustomer(CustomerTable p1)
        {
            if (!ModelState.IsValid)
            {
                return View("AddCustomer");
            }
            db.CustomerTable.Add(p1);
            db.SaveChanges();
            return View();
        }

        public ActionResult Delete(int id)
        {
            var customer = db.CustomerTable.Find(id);
            db.CustomerTable.Remove(customer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult ShowCustomer(int id)
        {
            var customer=db.CustomerTable.Find(id);
            return View("ShowCustomer",customer);
        }

        public ActionResult Update(CustomerTable p1)
        {
            var customer = db.CustomerTable.Find(p1.CustomerID);
            customer.CustomerName=p1.CustomerName;
            customer.CustomerLastName=p1.CustomerLastName;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
       
    }
}