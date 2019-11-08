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
        public ILogonLogService LogonLogService { get; set; }
        public IButtonService ButtonService { get; set; }
        public OperatorModel Operator
        {
            get { return OperatorProvider.Provider.GetCurrent(); }
        }
        // GET: Base
        public virtual ActionResult Index(int? id)
        {
            return View();
        }


    }
}