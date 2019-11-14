using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;
using FineAdmin.Model;
using FineAdmin.IRepository;

namespace FineAdmin.Service
{
    public class OrganizeService : BaseService<OrganizeModel>, IOrganizeService
    {
        public IOrganizeRepository OrganizeRepository { get; set; }
        
        public dynamic GetListByFilter(OrganizeModel filter, PageInfo pageInfo)
        {
            throw new NotImplementedException();
        }
    }
}
