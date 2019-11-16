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
    public class OrganizeRepository : BaseRepository<OrganizeModel>, IOrganizeRepository
    {
        public IEnumerable<OrganizeModel> GetOrganizeList()
        {
            using (var conn=MySqlHelper.GetConnection())
            {
                string sql = @"SELECT a.Id,a.ParentId,a.EnCode,a.FullName,a.SortCode,b.ItemName as CategoryName,a.CreateTime FROM organize a
                               INNER JOIN itemsdetail b ON a.CategoryId=b.Id";
                return conn.Query<OrganizeModel>(sql);
            }
        }
    }
}
