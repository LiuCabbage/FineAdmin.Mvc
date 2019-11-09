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
