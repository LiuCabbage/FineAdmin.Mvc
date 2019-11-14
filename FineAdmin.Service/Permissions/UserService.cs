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
            pageInfo.prefix = "a.";
            string _where = " user a INNER JOIN role b ON a.RoleId=b.Id INNER JOIN organize c ON a.DepartmentId=c.Id";
            if (!string.IsNullOrEmpty(filter.Account))
            {
                _where += string.Format(" and {0}Account=@Account", pageInfo.prefix);
            }
            if (!string.IsNullOrEmpty(filter.RealName))
            {
                _where += string.Format(" and {0}RealName=@RealName", pageInfo.prefix);
            }
            if (filter.EnabledMarkSelect != null)
            {
                _where += " and a.EnabledMark=" + filter.EnabledMarkSelect;
            }
            _where = CreateTimeWhereStr(filter.StartEndDate, _where, pageInfo.prefix);
            pageInfo.returnFields = string.Format("{0}Id,{0}Account,{0}RealName,{0}Gender,c.FullName as 'DepartmentName',b.FullName as 'RoleName',{0}EnabledMark,{0}CreateTime", pageInfo.prefix);
            return GetPageUnite(filter, pageInfo, _where);
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
