﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Model;

namespace FineAdmin.IService
{
    public interface IItemsService : IBaseService<ItemsModel>
    {
        IEnumerable<TreeSelect> GetItemsTreeSelect();
    }
}
