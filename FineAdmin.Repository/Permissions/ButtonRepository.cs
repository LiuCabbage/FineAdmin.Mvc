using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using FineAdmin.Common;
using FineAdmin.IRepository;
using FineAdmin.Model;

namespace FineAdmin.Repository
{
    public class ButtonRepository : BaseRepository<ButtonModel>, IButtonRepository
    {
        /// <summary>
        /// 根据角色菜单获得按钮列表
        /// </summary>
        /// <param name="roleId"></param>
        /// <param name="moduleId"></param>
        /// <param name="position"></param>
        /// <returns></returns>
        public IEnumerable<ButtonModel> GetButtonListByRoleIdModuleId(int roleId, int moduleId, PositionEnum position)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                string sql = @"SELECT b.* FROM roleauthorize a
                            INNER JOIN button b ON a.ButtonId=b.Id
                            WHERE a.RoleId=@RoleId
                            and a.ModuleId=@ModuleId
                            and b.Location=@Location
                            ORDER BY b.SortCode";
                return conn.Query<ButtonModel>(sql, new { RoleId = roleId, ModuleId = moduleId, Location = (int)position });
            }
        }
    }
}
