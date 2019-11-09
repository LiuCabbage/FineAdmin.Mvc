using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FineAdmin.Model
{
    public class Tree
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Href { get; set; }
        public string FontFamily { get; set; }
        public string Icon { get; set; }
        public IEnumerable<Tree> Children { get; set; }
    }
}
