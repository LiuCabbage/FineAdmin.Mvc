using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FineAdmin.Web.Areas.Permissions.Controllers
{
    public class ItemsController : Controller
    {
        // GET: Permissions/Items
        public ActionResult Index()
        {
            return View();
        }
    }
}