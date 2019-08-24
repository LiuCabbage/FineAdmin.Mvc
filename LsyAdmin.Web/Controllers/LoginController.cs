using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LsyAdmin.Web.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetAuthCode() {
            return View();
        }
        [HttpGet]
        public ActionResult OutLogin()
        {
            return RedirectToAction("Index", "Login");
        }
        [HttpPost]
        public ActionResult CheckLogin() {
            return View();
        }
    }
}