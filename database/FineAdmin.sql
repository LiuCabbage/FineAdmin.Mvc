/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : fineadmin

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 12/10/2019 17:58:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for donation
-- ----------------------------
DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '捐赠人',
  `Price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '捐赠金额',
  `Detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donation
-- ----------------------------
INSERT INTO `donation` VALUES (1, '蚯蚓', '1', '爱你么么哒', '2019-10-12 11:41:39');
INSERT INTO `donation` VALUES (2, '蚯蚓', '2', '爱你么么哒', '2019-10-12 11:42:55');
INSERT INTO `donation` VALUES (3, '小蚯蚓', '1', '爱你么么哒', '2019-10-12 11:43:09');
INSERT INTO `donation` VALUES (4, '小小蚯蚓', '1', '爱你么么哒', '2019-10-12 11:43:32');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '父级',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?ֵ??' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 0, 'Sys_Items', '通用字典', 0, '通用字典', b'0', '2019-10-12 11:47:23', 1, '2019-10-12 11:48:08', 1);
INSERT INTO `items` VALUES (2, 1, 'OrganizeCategory', '机构分类', 1, '机构分类', b'0', '2019-10-12 15:44:12', 1, '2019-10-12 15:44:17', 1);
INSERT INTO `items` VALUES (3, 1, 'RoleType', '角色类型', 2, '角色类型', b'0', '2019-10-12 15:45:26', 1, '2019-10-12 15:45:30', 1);
INSERT INTO `items` VALUES (4, 1, 'Certificate', '证件名称', 3, '证件名称', b'0', '2019-10-12 15:49:04', 1, '2019-10-12 15:49:08', 1);
INSERT INTO `items` VALUES (5, 1, 'Education', '学历', 4, '学历', b'0', '2019-10-12 15:49:57', 1, '2019-10-12 15:50:00', 1);
INSERT INTO `items` VALUES (6, 1, 'Marry', '婚姻', 5, '婚姻', b'0', '2019-10-12 15:51:05', 1, '2019-10-12 15:51:09', 1);
INSERT INTO `items` VALUES (7, 1, 'Birth', '生育', 6, '生育', b'0', '2019-10-12 15:57:43', 1, '2019-10-12 15:57:48', 1);
INSERT INTO `items` VALUES (8, 1, 'Nation', '民族', 7, '民族', b'0', '2019-10-12 15:58:43', 1, '2019-10-12 15:58:40', 1);
INSERT INTO `items` VALUES (9, 1, 'Gender', '性别', 8, '性别', b'0', '2019-10-12 15:59:06', 1, '2019-10-12 15:59:09', 1);

-- ----------------------------
-- Table structure for itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `itemsdetail`;
CREATE TABLE `itemsdetail`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ItemId` int(11) NULL DEFAULT NULL COMMENT '主表主键',
  `ItemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `ItemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?ֵ???ϸ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itemsdetail
-- ----------------------------
INSERT INTO `itemsdetail` VALUES (1, 2, 'Company', '公司', 1, '公司', b'0', '2019-10-12 16:08:09', 1, '2019-10-12 16:08:15', 1);
INSERT INTO `itemsdetail` VALUES (2, 2, 'Department', '部门', 2, '部门', b'0', '2019-10-12 16:09:34', 1, '2019-10-12 16:09:37', 1);
INSERT INTO `itemsdetail` VALUES (3, 2, 'WorkGroup', '小组', 3, '小组', b'0', '2019-10-12 16:10:05', 1, '2019-10-12 16:10:07', 1);
INSERT INTO `itemsdetail` VALUES (4, 3, 'Sys_Role', '系统角色', 1, '系统角色', b'0', '2019-10-12 16:13:10', 1, '2019-10-12 16:13:14', 1);
INSERT INTO `itemsdetail` VALUES (5, 3, 'Bus_Role', '业务角色', 2, '业务角色', b'0', '2019-10-12 16:15:16', 1, '2019-10-12 16:15:30', 1);
INSERT INTO `itemsdetail` VALUES (6, 3, 'Other_Role', '其他角色', 3, '其他角色', b'0', '2019-10-12 16:16:07', 1, '2019-10-12 16:16:09', 1);
INSERT INTO `itemsdetail` VALUES (7, 4, 'Id_Card', '身份证', 1, '身份证', b'0', '2019-10-12 16:17:45', 1, '2019-10-12 16:17:49', 1);
INSERT INTO `itemsdetail` VALUES (8, 4, 'Other_Card', '其他', 2, '其他', b'0', '2019-10-12 16:19:06', 1, '2019-10-12 16:19:08', 1);
INSERT INTO `itemsdetail` VALUES (9, 5, 'Junior College', '大专', 1, '大专', b'0', '2019-10-12 16:26:16', 1, '2019-10-12 16:26:19', 1);
INSERT INTO `itemsdetail` VALUES (10, 5, 'Undergraduate', '本科', 2, '本科', b'0', '2019-10-12 16:26:45', 1, '2019-10-12 16:26:49', 1);
INSERT INTO `itemsdetail` VALUES (11, 5, 'Master', '硕士', 3, '硕士', b'0', '2019-10-12 16:30:22', 1, '2019-10-12 16:30:26', 1);
INSERT INTO `itemsdetail` VALUES (12, 5, 'Doctor', '博士', 4, '博士', b'0', '2019-10-12 16:31:18', 1, '2019-10-12 16:31:21', 1);
INSERT INTO `itemsdetail` VALUES (13, 5, 'Other', '其他', 5, '其他', b'0', '2019-10-12 16:31:44', 1, '2019-10-12 16:31:47', 1);

-- ----------------------------
-- Table structure for logonlog
-- ----------------------------
DROP TABLE IF EXISTS `logonlog`;
CREATE TABLE `logonlog`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `LogType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录类型',
  `Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `IPAddressName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP所在城市',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??¼??־?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '父级',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `FontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体类型',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体',
  `UrlAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `IsMenu` bit(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ģ???' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (1, 0, '系统管理', NULL, NULL, NULL, b'0', 1, '系统管理', b'0', '2019-09-19 15:28:17', 1, '2019-09-19 15:28:29', 1);
INSERT INTO `module` VALUES (2, 0, '系统安全', NULL, NULL, NULL, b'0', 2, '系统安全', b'0', '2019-09-19 15:48:28', 1, '2019-09-19 15:48:33', 1);
INSERT INTO `module` VALUES (3, 0, '系统设置', NULL, NULL, NULL, b'0', 3, '系统设置', b'0', '2019-09-19 15:49:03', 1, '2019-09-19 15:49:07', 1);
INSERT INTO `module` VALUES (4, 1, '机构管理', NULL, NULL, '/', b'1', 1, '机构管理', b'0', '2019-09-19 16:51:51', 1, '2019-09-19 16:51:55', 1);
INSERT INTO `module` VALUES (5, 1, '角色管理', NULL, NULL, '/', b'1', 2, '角色管理', b'0', '2019-09-19 16:54:54', 1, '2019-09-19 16:54:58', 1);
INSERT INTO `module` VALUES (6, 1, '岗位管理', NULL, NULL, '/', b'1', 3, '岗位管理', b'0', '2019-09-19 16:56:10', 1, '2019-09-19 16:56:13', 1);
INSERT INTO `module` VALUES (7, 1, '用户管理', NULL, NULL, '/', b'1', 4, '用户管理', b'0', '2019-09-19 16:57:34', 1, '2019-09-19 16:57:38', 1);
INSERT INTO `module` VALUES (8, 1, '数据字典', NULL, NULL, '/', b'1', 5, '数据字典', b'0', '2019-09-19 16:58:27', 1, '2019-09-19 16:58:31', 1);
INSERT INTO `module` VALUES (9, 1, '系统菜单', NULL, NULL, '/', b'1', 6, '系统菜单', b'0', '2019-09-19 16:58:49', 1, '2019-09-19 16:58:45', 1);
INSERT INTO `module` VALUES (10, 2, '登录日志', NULL, NULL, '/', b'1', 1, '登录日志', b'0', '2019-09-23 18:17:12', 1, '2019-09-23 18:17:18', 1);
INSERT INTO `module` VALUES (11, 3, '系统设置', NULL, NULL, '/', b'1', 1, '系统设置', b'0', '2019-09-23 18:18:43', 1, '2019-09-23 18:18:49', 1);
INSERT INTO `module` VALUES (12, 3, '邮件设置', NULL, NULL, '/', b'1', 2, '邮件设置', b'0', '2019-09-23 18:19:34', 1, '2019-09-23 18:19:38', 1);
INSERT INTO `module` VALUES (13, 3, '上传设置', NULL, NULL, '/', b'1', 3, '上传设置', b'0', '2019-09-23 18:20:02', 1, '2019-09-23 18:19:59', 1);

-- ----------------------------
-- Table structure for modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `modulebutton`;
CREATE TABLE `modulebutton`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ModuleId` int(11) NULL DEFAULT NULL COMMENT '模块主键',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `Location` int(11) NULL DEFAULT NULL COMMENT '位置',
  `ClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮样式',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ģ?鰴ť?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organize
-- ----------------------------
DROP TABLE IF EXISTS `organize`;
CREATE TABLE `organize`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '父级',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `ManagerId` int(11) NULL DEFAULT NULL COMMENT '负责人',
  `TelePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `MobilePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `Fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??֯?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organize
-- ----------------------------
INSERT INTO `organize` VALUES (1, 0, 'Company', '江西皮皮虾公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', '2019-09-26 17:52:17', 1, '2019-09-26 17:52:12', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `OrganizeId` int(11) NULL DEFAULT NULL COMMENT '组织主键',
  `Category` int(11) NULL DEFAULT NULL COMMENT '分类类型',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `TypeClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??ɫ-??λ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `roleauthorize`;
CREATE TABLE `roleauthorize`  (
  `RoleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色主键',
  `ModuleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块主键',
  `ModuleButtonId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮主键',
  PRIMARY KEY (`RoleId`, `ModuleId`, `ModuleButtonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??ɫ??Ȩ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `HeadIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `Gender` bit(1) NULL DEFAULT NULL COMMENT '性别',
  `Birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `MobilePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `OrganizeId` int(11) NULL DEFAULT NULL COMMENT '组织主键',
  `DepartmentId` int(11) NULL DEFAULT NULL COMMENT '部门主键',
  `DutyId` int(11) NULL DEFAULT NULL COMMENT '岗位主键',
  `RoleId` int(11) NULL DEFAULT NULL COMMENT '角色主键',
  `IsAdministrator` bit(1) NULL DEFAULT NULL COMMENT '是否管理员',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?û??' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
