using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Service
{
    public class RoleService : BaseService<RoleModel>, IRoleService
    {
        public dynamic GetListByFilter(RoleModel filter, PageInfo pageInfo)
        {
            pageInfo.prefix = "a.";
            string _where = " role a INNER JOIN itemsdetail b ON a.TypeClass=b.Id";
            if (!string.IsNullOrEmpty(filter.EnCode))
            {
                _where += string.Format(" and {0}EnCode=@EnCode", pageInfo.prefix);
            }
            if (!string.IsNullOrEmpty(filter.FullName))
            {
                _where += string.Format(" and {0}FullName=@FullName", pageInfo.prefix);
            }
            pageInfo.returnFields = string.Format("{0}Id,{0}EnCode,{0}FullName,b.ItemName as TypeName,{0}SortCode,{0}Description,{0}EnabledMark,{0}CreateTime", pageInfo.prefix);
            return GetPageUnite(filter, pageInfo, _where);
        }
    }
}
