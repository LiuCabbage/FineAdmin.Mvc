namespace FineAdmin.Model
{
    public class ModuleModel : Entity
    {
        /// <summary>
        /// 父级
        /// </summary>
        public int ParentId { get; set; }
        /// <summary>
        /// 名称
        /// </summary>
        public string FullName { get; set; }
        /// <summary>
        /// 字体类型 layui-icon|ok-icon|my-icon
        /// </summary>
        public string FontFamily { get; set; }
        /// <summary>
        /// 图标
        /// </summary>
        public string Icon { get; set; }
        /// <summary>
        /// 链接
        /// </summary>
        public string UrlAddress { get; set; }
        /// <summary>
        /// 是否菜单
        /// </summary>
        public bool IsMenu { get; set; }
    }
}
