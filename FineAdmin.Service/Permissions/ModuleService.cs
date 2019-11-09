using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.IRepository;
using FineAdmin.IService;

namespace FineAdmin.Service
{
    public class ModuleService : BaseService<ModuleModel>, IModuleService
    {
        public IModuleRepository ModuleRepository { get; set; }
        /// <summary>
        /// 获得菜单列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public dynamic GetModuleList(int roleId)
        {
            IEnumerable<ModuleModel> allMenus = GetModuleListByRoleId(roleId);
            List<Tree> treeList = new List<Tree>();
            var rootMenus = allMenus.Where(x => x.ParentId == 0).OrderBy(x => x.SortCode);
            foreach (var item in rootMenus)
            {
                var _tree = new Tree { Id = item.Id, Title = item.FullName, Href = item.UrlAddress, FontFamily = item.FontFamily, Icon = item.Icon };
                GetModuleListByModuleId(treeList, allMenus, _tree, item.Id);
                treeList.Add(_tree);
            }
            var result = treeList;
            return result;
        }
        /// <summary>
        /// 根据一级菜单加载子菜单列表
        /// </summary>
        /// <param name="treeList"></param>
        /// <param name="allMenus"></param>
        /// <param name="tree"></param>
        /// <param name="moduleId"></param>
        private void GetModuleListByModuleId(List<Tree> treeList, IEnumerable<ModuleModel> allMenus, Tree tree, int moduleId)
        {
            var childMenus = allMenus.Where(x => x.ParentId == moduleId).OrderBy(x => x.SortCode);
            if (childMenus != null && childMenus.Count() > 0)
            {
                List<Tree> _children = new List<Tree>();
                foreach (var item in childMenus)
                {
                    var _tree = new Tree { Id = item.Id, Title = item.FullName, Href = item.UrlAddress, FontFamily = item.FontFamily, Icon = item.Icon };
                    _children.Add(_tree);
                    tree.Children = _children;
                    GetModuleListByModuleId(treeList, allMenus, _tree, item.Id);
                }
            }
        }
        /// <summary>
        /// 根据角色ID获取菜单列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        private IEnumerable<ModuleModel> GetModuleListByRoleId(int roleId)
        {
            string sql = @"SELECT b.* FROM roleauthorize a
                           INNER JOIN module b ON a.ModuleId = b.Id";
            var list = ModuleRepository.GetModuleListByRoleId(sql, roleId);
            return list;
        }


    }
}
