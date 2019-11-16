using DapperExtensions;

namespace FineAdmin.Model
{
    [Table("Organize")]
    public class OrganizeModel : Entity
    {
        /// <summary>
        /// 父级
        /// </summary>
        public int ParentId { get; set; }
        /// <summary>
        /// 编码
        /// </summary>
        public string EnCode { get; set; }
        /// <summary>
        /// 名称
        /// </summary>
        public string FullName { get; set; }
        /// <summary>
        /// 分类
        /// </summary>
        public int CategoryId { get; set; }
    }
}
