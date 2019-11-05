using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IService;

namespace FineAdmin.Service
{
    public class BaseService<T> : IBaseService<T> where T : class, new()
    {

    }
}
