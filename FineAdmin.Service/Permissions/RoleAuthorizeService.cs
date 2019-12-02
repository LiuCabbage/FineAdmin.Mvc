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
        /// <summary>
        /// 根据角色菜单获得列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <param name="moduleId"></param>
        /// <returns></returns>
        public IEnumerable<RoleAuthorizeModel> GetListByRoleIdModuleId(int roleId, int moduleId)
        {
            string where = "where RoleId=@RoleId and ModuleId=@ModuleId";
            return GetByWhere(where, new { RoleId = roleId, ModuleId = moduleId });
        }
    }
}
