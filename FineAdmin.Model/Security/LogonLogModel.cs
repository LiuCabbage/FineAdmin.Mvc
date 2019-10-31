using System;

namespace FineAdmin.Model
{
    public class LogonLogModel
    {
        /// <summary>
        /// 主键
        /// </summary>
        [DapperExtensions.Key(true)]
        public int Id { get; set; }
        /// <summary>
        /// 登录类型
        /// </summary>
        public string LogType { get; set; }
        /// <summary>
        /// 账户
        /// </summary>
        public string Account { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        public string RealName { get; set; }
        /// <summary>
        /// 描述
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// IP地址
        /// </summary>
        public string IPAddress { get; set; }
        /// <summary>
        /// IP所在城市
        /// </summary>
        public string IPAddressName { get; set; }
        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }
    }
}
