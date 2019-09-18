/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/9/18 18:10:43                           */
/*==============================================================*/


drop table if exists Items;

drop table if exists ItemsDetail;

drop table if exists LogonLog;

drop table if exists Module;

drop table if exists ModuleButton;

drop table if exists Organize;

drop table if exists Role;

drop table if exists RoleAuthorize;

drop table if exists User;

/*==============================================================*/
/* Table: Items                                                 */
/*==============================================================*/
create table Items
(
   Id                   int not null auto_increment comment '主键',
   ParentId             int comment '父级',
   EnCode               varchar(50) comment '编码',
   FullName             varchar(50) comment '名称',
   SortCode             int comment '排序码',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table Items comment '字典表';

/*==============================================================*/
/* Table: ItemsDetail                                           */
/*==============================================================*/
create table ItemsDetail
(
   Id                   int not null auto_increment comment '主键',
   ItemId               int comment '主表主键',
   ItemCode             varchar(50) comment '编码',
   ItemName             varchar(50) comment '名称',
   SortCode             int comment '排序码',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table ItemsDetail comment '字典明细表';

/*==============================================================*/
/* Table: LogonLog                                              */
/*==============================================================*/
create table LogonLog
(
   Id                   int not null auto_increment comment '主键',
   LogType              varchar(50) comment '登录类型',
   Account              varchar(50) comment '账户',
   RealName             varchar(50) comment '姓名',
   Description          varchar(200) comment '描述',
   IPAddress            varchar(50) comment 'IP地址',
   IPAddressName        varchar(50) comment 'IP所在城市',
   CreateTime           datetime comment '创建时间',
   primary key (Id)
);

alter table LogonLog comment '登录日志表';

/*==============================================================*/
/* Table: Module                                                */
/*==============================================================*/
create table Module
(
   Id                   int not null auto_increment comment '主键',
   ParentId             int comment '父级',
   FullName             varchar(50) comment '名称',
   FontFamily           varchar(50) comment '字体类型',
   Icon                 varchar(50) comment '字体',
   UrlAddress           varchar(100) comment '链接',
   IsMenu               bit comment '是否菜单',
   SortCode             int comment '排序码',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table Module comment '模块表';

/*==============================================================*/
/* Table: ModuleButton                                          */
/*==============================================================*/
create table ModuleButton
(
   Id                   int not null auto_increment comment '主键',
   ModuleId             int comment '模块主键',
   EnCode               varchar(50) comment '编码',
   FullName             varchar(50) comment '名称',
   Location             int comment '位置',
   ClassName            varchar(50) comment '按钮样式',
   SortCode             int comment '排序码',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table ModuleButton comment '模块按钮表';

/*==============================================================*/
/* Table: Organize                                              */
/*==============================================================*/
create table Organize
(
   Id                   int not null auto_increment comment '主键',
   ParentId             int comment '父级',
   EnCode               varchar(50) comment '编码',
   FullName             varchar(50) comment '名称',
   CategoryId           varchar(50) comment '分类',
   ManagerId            int comment '负责人',
   TelePhone            varchar(50) comment '电话',
   MobilePhone          varchar(50) comment '手机',
   WeChat               varchar(50) comment '微信',
   Fax                  varchar(50) comment '传真',
   Email                varchar(50) comment '邮箱',
   Address              varchar(200) comment '联系地址',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table Organize comment '组织表';

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role
(
   Id                   int not null auto_increment comment '主键',
   OrganizeId           int comment '组织主键',
   Category             int comment '分类类型',
   EnCode               varchar(50) comment '编码',
   FullName             varchar(50) comment '名称',
   TypeClass            varchar(50) comment '类型',
   SortCode             int comment '排序码',
   Description          varchar(200) comment '描述',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table Role comment '角色-岗位表';

/*==============================================================*/
/* Table: RoleAuthorize                                         */
/*==============================================================*/
create table RoleAuthorize
(
   RoleId               char(10) not null comment '角色主键',
   ModuleId             char(10) not null comment '模块主键',
   ModuleButtonId       char(10) not null comment '按钮主键',
   primary key (RoleId, ModuleId, ModuleButtonId)
);

alter table RoleAuthorize comment '角色授权表';

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   Id                   int not null auto_increment comment '主键',
   Account              varchar(50) comment '账户',
   UserPassword         varchar(50) comment '密码',
   RealName             varchar(50) comment '姓名',
   HeadIcon             varchar(50) comment '头像',
   Gender               bit comment '性别',
   Birthday             datetime comment '生日',
   MobilePhone          varchar(50) comment '手机',
   Email                varchar(50) comment '邮箱',
   WeChat               varchar(50) comment '微信',
   Description          varchar(200) comment '描述',
   OrganizeId           int comment '组织主键',
   DepartmentId         int comment '部门主键',
   DutyId               int comment '岗位主键',
   RoleId               int comment '角色主键',
   IsAdministrator      bit comment '是否管理员',
   EnabledMark          bit comment '有效标志',
   CreateTime           datetime comment '创建时间',
   CreateUserId         int comment '创建用户主键',
   UpdateTime           datetime comment '修改时间',
   UpdateUserId         int comment '修改用户主键',
   primary key (Id)
);

alter table User comment '用户表';

