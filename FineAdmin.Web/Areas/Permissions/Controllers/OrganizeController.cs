using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Common;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.Web.Controllers;

namespace FineAdmin.Web.Areas.Permissions.Controllers
{
    public class OrganizeController : BaseController
    {
        public IOrganizeService OrganizeService { get; set; }
        // GET: Permissions/Organize
        public override ActionResult Index(int? id)
        {
            base.Index(id);
            return View();
        }
        [HttpGet]
        public JsonResult List(OrganizeModel model, PageInfo pageInfo)
        {
            var result = OrganizeService.GetListByFilter(model, pageInfo);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}