namespace FineAdmin.Model
{
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
        /// <summary>
        /// 负责人
        /// </summary>
        public int ManagerId { get; set; }
        /// <summary>
        /// 电话
        /// </summary>
        public string TelePhone { get; set; }
        /// <summary>
        /// 手机
        /// </summary>
        public string MobilePhone { get; set; }
        /// <summary>
        /// 微信
        /// </summary>
        public string WeChat { get; set; }
        /// <summary>
        /// 传真
        /// </summary>
        public string Fax { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        public string Email { get; set; }
        /// <summary>
        /// 联系地址
        /// </summary>
        public string Address { get; set; }
    }
}
