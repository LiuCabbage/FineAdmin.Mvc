using DapperExtensions;
using System;

namespace FineAdmin.Model
{
    [Table("User")]
    public class UserModel : Entity
    {
        /// <summary>
        /// 账户
        /// </summary>
        public string Account { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        public string UserPassword { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        public string RealName { get; set; }
        /// <summary>
        /// 头像
        /// </summary>
        public string HeadIcon { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public bool Gender { get; set; }
        /// <summary>
        /// 生日
        /// </summary>
        public DateTime Birthday { get; set; }
        /// <summary>
        /// 手机
        /// </summary>
        public string MobilePhone { get; set; }
        /// <summary>
        /// 邮箱
        /// </summary>
        public string Email { get; set; }
        /// <summary>
        /// 微信
        /// </summary>
        public string WeChat { get; set; }
        /// <summary>
        /// 部门主键
        /// </summary>
        public int DepartmentId { get; set; }
        /// <summary>
        /// 角色主键
        /// </summary>
        public int RoleId { get; set; }
        /// <summary>
        /// 是否管理员
        /// </summary>
        public int IsAdministrator { get; set; }
        /// <summary>
        /// 排序码
        /// </summary>
        [Computed]
        public override int SortCode { get; set; }
        /// <summary>
        /// 部门
        /// </summary>
        [Computed]
        public string DepartmentName { get; set; }
        /// <summary>
        /// 角色
        /// </summary>
        [Computed]
        public string RoleName { get; set; }
    }
}
