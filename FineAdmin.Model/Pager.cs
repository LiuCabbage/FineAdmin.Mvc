using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FineAdmin.Model
{
    public class Pager
    {
        public static dynamic Paging(IEnumerable<dynamic> list, long total)
        {
            return new { code = 0, msg = "", count = total, data = list };
        }
    }
}
