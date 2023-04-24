using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcProje.Models.Entity;
using PagedList;
using PagedList.Mvc;

namespace mvcProje.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category
        MvcProjeEntities db= new MvcProjeEntities();
        public ActionResult Index(int page=1)
        {
            var categories = db.CategoryTable.ToList().ToPagedList(page, 3);
           // var categories = db.CategoryTable.ToList();
            return View(categories);
        }

        [HttpGet]
        public ActionResult AddCategory()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddCategory(CategoryTable p1)
        {
            if (!ModelState.IsValid)
            {
                return View("AddCategory");
            }
            db.CategoryTable.Add(p1);
            db.SaveChanges();
            return View();
        }
        public ActionResult Delete(int id)
        {
            var category = db.CategoryTable.Find(id);
            db.CategoryTable.Remove(category);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult ShowCategory(int id)
        {
            var category = db.CategoryTable.Find(id);            
            return View("ShowCategory", category);
        }
        public ActionResult Update(CategoryTable p1)
        {
            var category = db.CategoryTable.Find(p1.CategoryID);
            category.CategoryName=p1.CategoryName;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
       
    }
}