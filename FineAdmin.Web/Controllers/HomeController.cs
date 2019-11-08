using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FineAdmin.Web.Controllers
{
    public class HomeController : BaseController
    {
        public override ActionResult Index(int? id)
        {
            return View();
        }

        public ActionResult Main()
        {
            return View();
        }
    }
}