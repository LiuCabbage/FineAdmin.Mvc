using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Model;

namespace FineAdmin.IService
{
    public interface IModuleService : IBaseService<ModuleModel>
    {
        /// <summary>
        /// 获得菜单列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        dynamic GetModuleList(int roleId);
        IEnumerable<TreeSelect> GetModuleTreeSelect();
    }
}
