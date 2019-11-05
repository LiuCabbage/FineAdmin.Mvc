using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.Model;

namespace FineAdmin.IRepository
{
    public interface IBaseRepository<T> where T : class, new()
    {

    }
}
