using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.Web.Controllers;

namespace FineAdmin.Web.Areas.Permissions.Controllers
{
    public class UserController : BaseController
    {
        public IUserService UserService { get; set; }
        // GET: Permissions/User
        public override ActionResult Index(int? id)
        {
            base.Index(id);
            return View();
        }
        [HttpGet]
        public JsonResult List(UserModel model, PageInfo pageInfo, int? EnabledMark)
        {
            if (EnabledMark != null)
            {
                model.EnabledMarkSelect = EnabledMark;
            }
            var result = UserService.GetListByFilter(model, pageInfo);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult Delete(int idsStr)
        {
            var result = UserService.DeleteById(idsStr) ? SuccessTip("删除成功") : ErrorTip("删除失败");
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult BatchDel(string idsStr)
        {
            var idsArray = idsStr.Substring(0, idsStr.Length - 1).Split(',');
            var result = UserService.DeleteByIds(idsArray) ? SuccessTip("批量删除成功") : ErrorTip("批量删除失败");
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}