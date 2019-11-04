using DapperExtensions;

namespace FineAdmin.Model
{
    [Table("Button")]
    public class ButtonModel : Entity
    {
        /// <summary>
        /// 编码
        /// </summary>
        public string EnCode { get; set; }
        /// <summary>
        /// 名称
        /// </summary>
        public string FullName { get; set; }
        /// <summary>
        /// 位置 0：表内 1：表外
        /// </summary>
        public int Location { get; set; }
        /// <summary>
        /// 按钮样式
        /// </summary>
        public string ClassName { get; set; }
    }
}
