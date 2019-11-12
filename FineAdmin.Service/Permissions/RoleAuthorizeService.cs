using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Common;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.IRepository;

namespace FineAdmin.Service
{
    public class RoleAuthorizeService : BaseService<RoleAuthorizeModel>, IRoleAuthorizeService
    {
        public dynamic GetListByFilter(RoleAuthorizeModel filter, PageInfo pageInfo)
        {
            throw new NotImplementedException();
        }
    }
}
