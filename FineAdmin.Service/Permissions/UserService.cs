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
            throw new NotImplementedException();
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
