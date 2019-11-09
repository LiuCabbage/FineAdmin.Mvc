using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Web.Controllers;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Web.Areas.Permissions.Controllers
{
    public class ModuleController : BaseController
    {
        public IModuleService ModuleService { get; set; }
        // GET: Permissions/Module
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetModuleList()
        {
            object result = ModuleService.GetModuleList(Operator.RoleId);
            return Json(result, JsonRequestBehavior.AllowGet);
        }

    }
}