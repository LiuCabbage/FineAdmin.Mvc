using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Common;
using FineAdmin.IService;

namespace FineAdmin.Web.Controllers
{
    [HandlerLogin]
    public class BaseController : Controller
    {
        protected const string SuccessText = "操作成功！";
        protected const string ErrorText = "操作失败！";
        public IButtonService ButtonService { get; set; }
        public OperatorModel Operator
        {
            get { return OperatorProvider.Provider.GetCurrent(); }
        }
        // GET: Base
        public virtual ActionResult Index(int? id)
        {
            var _menuId = id == null ? 0 : id.Value;
            var _roleId = Operator.RoleId;
            if (id != null)
            {
                ViewData["ButtonFormList"]=ButtonService.GetButtonListByRoleIdModuleId(_roleId,_menuId,PositionEnum.FormInside);
                ViewData["ButtonFormTopList"] = ButtonService.GetButtonListByRoleIdModuleId(_roleId, _menuId, PositionEnum.FormRightTop);
            }
            return View();
        }
        /// <summary>
        /// 操作成功
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        protected virtual AjaxResult SuccessTip(string message = SuccessText)
        {
            return new AjaxResult { state = ResultType.success.ToString(), message = message };
        }
        /// <summary>
        /// 操作失败
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        protected virtual AjaxResult ErrorTip(string message = ErrorText)
        {
            return new AjaxResult { state = ResultType.error.ToString(), message = message };
        }

    }
}