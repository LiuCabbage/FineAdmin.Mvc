using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.IRepository;
using FineAdmin.Common;

namespace FineAdmin.Service
{
    public class UserService : BaseService<UserModel>, IUserService
    {
        public IUserRepository UserRepository { get; set; }

        public dynamic GetListByFilter(UserModel filter, PageInfo pageInfo)
        {
            //管理员不显示
            string _where = " where 1=1 and IsAdministrator!=1";
            if (!string.IsNullOrEmpty(filter.Account))
            {
                _where += " and Account=@Account";
            }
            if (!string.IsNullOrEmpty(filter.RealName))
            {
                _where += " and RealName=@RealName";
            }
            if (filter.EnabledMarkSelect != null)
            {
                _where += " and EnabledMark="+filter.EnabledMarkSelect;
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
        /// 登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public UserModel LoginOn(string username, string password)
        {
            return UserRepository.LoginOn(username, password);
        }
    }
}
