using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Common;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Web.Controllers
{
    public class LoginController : Controller
    {
        public IUserService UserService { get; set; }
        public ILogonLogService LogonLogService { get; set; }
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetAuthCode()
        {
            return File(new VerifyCode().GetVerifyCode(), @"image/Gif");
        }
        [HttpPost]
        public ActionResult LoginOn(string username, string password, string captcha)
        {

            return View();
        }
        [HttpGet]
        public ActionResult LoginOut()
        {
            //logService.WriteDbLog(new LogModel
            //{
            //    LogType = DbLogType.Exit.ToString(),
            //    UserName = OperatorProvider.Provider.GetCurrent().UserName,
            //    RealName = OperatorProvider.Provider.GetCurrent().RealName,
            //    Status = true,
            //    Description = "安全退出系统",
            //});
            Session.Abandon();
            Session.Clear();
            OperatorProvider.Provider.RemoveCurrent();
            return RedirectToAction("Index", "Login");
        }
    }
}