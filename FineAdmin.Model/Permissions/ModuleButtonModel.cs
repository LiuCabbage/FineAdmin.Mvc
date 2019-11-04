using DapperExtensions;

namespace FineAdmin.Model
{
    [Table("ModuleButton")]
    public class ModuleButtonModel
    {
        /// <summary>
        /// 模块主键
        /// </summary>
        public int ModuleId { get; set; }
        /// <summary>
        /// 按钮主键
        /// </summary>
        public int ButtonId { get; set; }
    }
}
