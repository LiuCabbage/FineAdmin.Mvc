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
   Id                   int not null auto_increment comment '����',
   ParentId             int comment '����',
   EnCode               varchar(50) comment '����',
   FullName             varchar(50) comment '����',
   SortCode             int comment '������',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table Items comment '�ֵ��';

/*==============================================================*/
/* Table: ItemsDetail                                           */
/*==============================================================*/
create table ItemsDetail
(
   Id                   int not null auto_increment comment '����',
   ItemId               int comment '��������',
   ItemCode             varchar(50) comment '����',
   ItemName             varchar(50) comment '����',
   SortCode             int comment '������',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table ItemsDetail comment '�ֵ���ϸ��';

/*==============================================================*/
/* Table: LogonLog                                              */
/*==============================================================*/
create table LogonLog
(
   Id                   int not null auto_increment comment '����',
   LogType              varchar(50) comment '��¼����',
   Account              varchar(50) comment '�˻�',
   RealName             varchar(50) comment '����',
   Description          varchar(200) comment '����',
   IPAddress            varchar(50) comment 'IP��ַ',
   IPAddressName        varchar(50) comment 'IP���ڳ���',
   CreateTime           datetime comment '����ʱ��',
   primary key (Id)
);

alter table LogonLog comment '��¼��־��';

/*==============================================================*/
/* Table: Module                                                */
/*==============================================================*/
create table Module
(
   Id                   int not null auto_increment comment '����',
   ParentId             int comment '����',
   FullName             varchar(50) comment '����',
   FontFamily           varchar(50) comment '��������',
   Icon                 varchar(50) comment '����',
   UrlAddress           varchar(100) comment '����',
   IsMenu               bit comment '�Ƿ�˵�',
   SortCode             int comment '������',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table Module comment 'ģ���';

/*==============================================================*/
/* Table: ModuleButton                                          */
/*==============================================================*/
create table ModuleButton
(
   Id                   int not null auto_increment comment '����',
   ModuleId             int comment 'ģ������',
   EnCode               varchar(50) comment '����',
   FullName             varchar(50) comment '����',
   Location             int comment 'λ��',
   ClassName            varchar(50) comment '��ť��ʽ',
   SortCode             int comment '������',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table ModuleButton comment 'ģ�鰴ť��';

/*==============================================================*/
/* Table: Organize                                              */
/*==============================================================*/
create table Organize
(
   Id                   int not null auto_increment comment '����',
   ParentId             int comment '����',
   EnCode               varchar(50) comment '����',
   FullName             varchar(50) comment '����',
   CategoryId           varchar(50) comment '����',
   ManagerId            int comment '������',
   TelePhone            varchar(50) comment '�绰',
   MobilePhone          varchar(50) comment '�ֻ�',
   WeChat               varchar(50) comment '΢��',
   Fax                  varchar(50) comment '����',
   Email                varchar(50) comment '����',
   Address              varchar(200) comment '��ϵ��ַ',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table Organize comment '��֯��';

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role
(
   Id                   int not null auto_increment comment '����',
   OrganizeId           int comment '��֯����',
   Category             int comment '��������',
   EnCode               varchar(50) comment '����',
   FullName             varchar(50) comment '����',
   TypeClass            varchar(50) comment '����',
   SortCode             int comment '������',
   Description          varchar(200) comment '����',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table Role comment '��ɫ-��λ��';

/*==============================================================*/
/* Table: RoleAuthorize                                         */
/*==============================================================*/
create table RoleAuthorize
(
   RoleId               char(10) not null comment '��ɫ����',
   ModuleId             char(10) not null comment 'ģ������',
   ModuleButtonId       char(10) not null comment '��ť����',
   primary key (RoleId, ModuleId, ModuleButtonId)
);

alter table RoleAuthorize comment '��ɫ��Ȩ��';

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   Id                   int not null auto_increment comment '����',
   Account              varchar(50) comment '�˻�',
   UserPassword         varchar(50) comment '����',
   RealName             varchar(50) comment '����',
   HeadIcon             varchar(50) comment 'ͷ��',
   Gender               bit comment '�Ա�',
   Birthday             datetime comment '����',
   MobilePhone          varchar(50) comment '�ֻ�',
   Email                varchar(50) comment '����',
   WeChat               varchar(50) comment '΢��',
   Description          varchar(200) comment '����',
   OrganizeId           int comment '��֯����',
   DepartmentId         int comment '��������',
   DutyId               int comment '��λ����',
   RoleId               int comment '��ɫ����',
   IsAdministrator      bit comment '�Ƿ����Ա',
   EnabledMark          bit comment '��Ч��־',
   CreateTime           datetime comment '����ʱ��',
   CreateUserId         int comment '�����û�����',
   UpdateTime           datetime comment '�޸�ʱ��',
   UpdateUserId         int comment '�޸��û�����',
   primary key (Id)
);

alter table User comment '�û���';

