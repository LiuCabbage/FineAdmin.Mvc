using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Service
{
    public class ItemsDetailService : BaseService<ItemsDetailModel>, IItemsDetailService
    {
        public dynamic GetListByFilter(ItemsDetailModel filter, PageInfo pageInfo)
        {
            throw new NotImplementedException();
        }
    }
}
