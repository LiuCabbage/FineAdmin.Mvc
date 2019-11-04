﻿using DapperExtensions;

namespace FineAdmin.Model
{
    [Table("Role")]
    public class RoleModel : Entity
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
        /// 类型
        /// </summary>
        public int TypeClass { get; set; }
    }
}
