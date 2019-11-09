using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IRepository;
using FineAdmin.Model;
using Dapper;

namespace FineAdmin.Repository
{
    public class ModuleRepository : BaseRepository<ModuleModel>, IModuleRepository
    {
        /// <summary>
        /// 根据角色ID获取菜单列表
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public IEnumerable<ModuleModel> GetModuleListByRoleId(string sql, int roleId)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                sql += @" WHERE b.EnabledMark=0
                        and a.RoleId = @RoleId
                        GROUP BY a.ModuleId
                        ORDER BY b.SortCode ASC";
                return conn.Query<ModuleModel>(sql, new { RoleId = roleId });
            }
        }
    }
}
