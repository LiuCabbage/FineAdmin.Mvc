using DapperExtensions;

namespace FineAdmin.Model
{
    [Table("ItemsDetail")]
    public class ItemsDetailModel : Entity
    {
        /// <summary>
        /// 主表主键
        /// </summary>
        public int ItemId { get; set; }
        /// <summary>
        /// 编码
        /// </summary>
        public string ItemCode { get; set; }
        /// <summary>
        /// 名称
        /// </summary>
        public string ItemName { get; set; }
    }
}
