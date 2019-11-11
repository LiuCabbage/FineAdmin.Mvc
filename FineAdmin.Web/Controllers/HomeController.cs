using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Web.Areas.SysSet.Models;

namespace FineAdmin.Web.Controllers
{
    public class HomeController : BaseController
    {
        public override ActionResult Index(int? id)
        {
            ViewBag.Account = Operator == null ? "" : Operator.Account;
            ViewBag.HeadIcon = Operator == null ? "" : Operator.HeadIcon;
            return View(new WebModel().GetWebInfo());
        }

        public ActionResult Main()
        {
            return View();
        }
    }
}