using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FineAdmin.Web.Areas.SysSet.Models;
using FineAdmin.Model;
using FineAdmin.Common;
using System.IO;
using FineAdmin.IService;

namespace FineAdmin.Web.Controllers
{
    public class HomeController : BaseController
    {
        public IDonationService DonationService { get; set; }

        public override ActionResult Index(int? id)
        {
            ViewBag.Account = Operator == null ? "" : Operator.Account;
            ViewBag.HeadIcon = Operator == null ? "" : Operator.HeadIcon;
            return View(new WebModel().GetWebInfo());
        }

        public ActionResult Main()
        {
            DonationModel donationModel = DonationService.GetConsoleNumShow();
            ViewBag.DonationTop = DonationService.GetSumPriceTop(5).ToList();
            return View(donationModel);
        }

        public JsonResult ExportFile()
        {
            UploadFile uploadFile = new UploadFile();
            try
            {
                var file = Request.Files[0];    //获取选中文件
                var filecombin = file.FileName.Split('.');
                if (file == null || string.IsNullOrEmpty(file.FileName) || file.ContentLength == 0 || filecombin.Length < 2)
                {
                    uploadFile.code = -1;
                    uploadFile.src = "";
                    uploadFile.msg = "上传出错!请检查文件名或文件内容";
                    return Json(uploadFile, JsonRequestBehavior.AllowGet);
                }

                if (!IsAllowedExtension(file))
                {
                    uploadFile.code = -1;
                    uploadFile.src = "";
                    uploadFile.msg = "检测到上传文件有问题!";
                    return Json(uploadFile, JsonRequestBehavior.AllowGet);
                }
                
                //定义本地路径位置
                string localPath = Server.MapPath("~/Upload");
                string filePathName = string.Empty; //最终文件名
                filePathName = Common.Common.CreateNo() + "." + filecombin[1];
                //Upload不存在则创建文件夹
                if (!System.IO.Directory.Exists(localPath))
                {
                    System.IO.Directory.CreateDirectory(localPath);
                }
                file.SaveAs(Path.Combine(localPath, filePathName));  //保存图片
                uploadFile.code = 0;
                uploadFile.src = Path.Combine("/Upload/", filePathName);
                uploadFile.msg = "上传成功";
                return Json(uploadFile, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                uploadFile.code = -1;
                uploadFile.src = "";
                uploadFile.msg = "上传出错!程序异常";
                return Json(uploadFile, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 判断文件是否正常，防止伪造文件上传
        /// </summary>
        /// <param name="hifile"></param>
        /// <returns></returns>
        private static bool IsAllowedExtension(HttpPostedFileBase postedFile)
        {
            int fileLen = postedFile.ContentLength;
            byte[] imgArray = new byte[fileLen];
            postedFile.InputStream.Read(imgArray, 0, fileLen);
            System.IO.MemoryStream fs = new System.IO.MemoryStream(imgArray);
            System.IO.BinaryReader r = new System.IO.BinaryReader(fs);

            string fileclass = "";
            byte buffer;
            try
            {
                buffer = r.ReadByte();
                fileclass = buffer.ToString();
                buffer = r.ReadByte();
                fileclass += buffer.ToString();
            }
            catch
            {
                return false;
            }
            r.Close();
            fs.Close();

            /*文件扩展名说明 
            jpg：255216 
            bmp：6677 
            png：13780
            gif：7173 
            xls,doc,ppt：208207 
            rar：8297 
            zip：8075 
            txt：98109 
            pdf：3780 
            */
            bool ret = false;
            String[] fileType = {
            "255216",
            "6677",
            "13780",
            "7173",
            "208207",
            "8297",
            "8075",
            "98109",
            "3780"
            };
            for (int i = 0; i < fileType.Length; i++)
            {
                if (fileclass == fileType[i])
                {
                    ret = true;
                    break;
                }
            }
            return ret;
        }
    }
}