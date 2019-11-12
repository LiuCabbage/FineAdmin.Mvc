using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Model;
using FineAdmin.IService;

namespace FineAdmin.Web.Areas.Security.Controllers
{
    public class LogonLogController : Controller
    {
        public ILogonLogService LogonLogService { get; set; }
        // GET: Security/LogonLog
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public JsonResult List(LogonLogModel model, PageInfo pageInfo)
        {
            var result = LogonLogService.GetListByFilter(model, pageInfo);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}