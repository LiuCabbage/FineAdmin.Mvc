using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Common;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Service
{
    public class LogonLogService : BaseService<LogonLogModel>, ILogonLogService
    {
        public dynamic GetListByFilter(LogonLogModel filter, PageInfo pageInfo)
        {
            string _where = " where 1=1";
            if (!string.IsNullOrEmpty(filter.Account))
            {
                _where += " and Account=@Account";
            }
            if (!string.IsNullOrEmpty(filter.RealName))
            {
                _where += " and RealName=@RealName";
            }
            if (!string.IsNullOrEmpty(filter.StartEndDate))
            {
                if (filter.StartEndDate.Contains("~"))
                {
                    if (filter.StartEndDate.Contains("+"))
                    {
                        filter.StartEndDate = filter.StartEndDate.Replace("+", "");
                    }
                    var dts = filter.StartEndDate.Split('~');
                    var start = dts[0].Trim();
                    var end = dts[1].Trim();
                    if (!string.IsNullOrEmpty(start))
                    {
                        _where += string.Format(" and CreateTime>='{0}'", start + " 00:00");
                    }
                    if (!string.IsNullOrEmpty(end))
                    {
                        _where += string.Format(" and CreateTime<='{0}'", end + " 59:59");
                    }
                }
            }
            return GetListByFilter(filter, pageInfo, _where);
        }

        /// <summary>
        /// 写入登录日志
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int WriteDbLog(LogonLogModel model)
        {
            model.IPAddress = Net.Ip;
            model.IPAddressName = Net.GetLocation(model.IPAddress);
            model.CreateTime = DateTime.Now;
            return BaseRepository.Insert(model);
        }
    }
}
