using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Model;
using FineAdmin.Common;

namespace FineAdmin.IService
{
    public interface IRoleAuthorizeService : IBaseService<RoleAuthorizeModel>
    {
        /// <summary>
        /// 根据角色菜单获得列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <param name="moduleId"></param>
        /// <returns></returns>
        IEnumerable<RoleAuthorizeModel> GetListByRoleIdModuleId(int roleId, int moduleId);
    }
}
