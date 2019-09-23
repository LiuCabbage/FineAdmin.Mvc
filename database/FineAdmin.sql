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

 Date: 23/09/2019 18:25:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '????',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '???',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?ֵ??' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `itemsdetail`;
CREATE TABLE `itemsdetail`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `ItemId` int(11) NULL DEFAULT NULL COMMENT '????????',
  `ItemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `ItemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '???',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?ֵ???ϸ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for logonlog
-- ----------------------------
DROP TABLE IF EXISTS `logonlog`;
CREATE TABLE `logonlog`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `LogType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??¼???',
  `Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?˻?',
  `RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP??ַ',
  `IPAddressName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP???ڳ??',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??¼??־?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '????',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `FontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `UrlAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `IsMenu` bit(1) NULL DEFAULT NULL COMMENT '?Ƿ??˵?',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '???',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
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
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `ModuleId` int(11) NULL DEFAULT NULL COMMENT 'ģ??????',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `Location` int(11) NULL DEFAULT NULL COMMENT 'λ?',
  `ClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??ť??ʽ',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '???',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ģ?鰴ť?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organize
-- ----------------------------
DROP TABLE IF EXISTS `organize`;
CREATE TABLE `organize`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '????',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `ManagerId` int(11) NULL DEFAULT NULL COMMENT '???',
  `TelePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?绰',
  `MobilePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?ֻ?',
  `WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢?',
  `Fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??ϵ??ַ',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??֯?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `OrganizeId` int(11) NULL DEFAULT NULL COMMENT '??֯????',
  `Category` int(11) NULL DEFAULT NULL COMMENT '???????',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `TypeClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '???',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??ɫ-??λ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `roleauthorize`;
CREATE TABLE `roleauthorize`  (
  `RoleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??ɫ????',
  `ModuleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ģ??????',
  `ModuleButtonId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??ť????',
  PRIMARY KEY (`RoleId`, `ModuleId`, `ModuleButtonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??ɫ??Ȩ?' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????',
  `Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?˻?',
  `UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `HeadIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͷ?',
  `Gender` bit(1) NULL DEFAULT NULL COMMENT '?Ա',
  `Birthday` datetime(0) NULL DEFAULT NULL COMMENT '???',
  `MobilePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?ֻ?',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???',
  `WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢?',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????',
  `OrganizeId` int(11) NULL DEFAULT NULL COMMENT '??֯????',
  `DepartmentId` int(11) NULL DEFAULT NULL COMMENT '????????',
  `DutyId` int(11) NULL DEFAULT NULL COMMENT '??λ????',
  `RoleId` int(11) NULL DEFAULT NULL COMMENT '??ɫ????',
  `IsAdministrator` bit(1) NULL DEFAULT NULL COMMENT '?Ƿ?????Ա',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '??Ч??־',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '????ʱ?',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '?????û?????',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '?޸?ʱ?',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '?޸??û?????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?û??' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
