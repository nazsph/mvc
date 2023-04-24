using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;
using mvcProje.Models.Entity;

namespace mvcProje.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        MvcProjeEntities db = new MvcProjeEntities();
        public ActionResult Index()
        {
            var product = db.ProductTable.ToList();
            return View(product);
        }

        [HttpGet]
        public ActionResult AddProduct()
        {
            List<SelectListItem> list = (from i in db.CategoryTable.ToList()
                                         select new SelectListItem
                                         {
                                             Text = i.CategoryName,
                                             Value = i.CategoryID.ToString(),
                                         }).ToList();
            ViewBag.Product = list;
            return View();
        }

        [HttpPost]
        public ActionResult AddProduct(ProductTable p1)
        {
            var ctgy= db.CategoryTable.Where(m=>m.CategoryID==p1.CategoryTable.CategoryID).FirstOrDefault();
            p1.CategoryTable= ctgy;
            db.ProductTable.Add(p1);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            var product = db.ProductTable.Find(id);
            db.ProductTable.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult ShowProduct(int id) {
            var product = db.ProductTable.Find(id);
            return View("ShowProduct", product);
        }
        public ActionResult Update(ProductTable p1) {
            var product = db.ProductTable.Find(p1.ProductID);
            product.ProductName=p1.ProductName;
            product.ProductCategory = p1.ProductCategory;
            product.ProductBrand=p1.ProductBrand;
            product.ProductPrice=p1.ProductPrice;
            product.ProductStock=p1.ProductStock;
            db.SaveChanges();

            return RedirectToAction("Index");
        }

    }
}