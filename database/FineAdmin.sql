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

 Date: 11/11/2019 17:42:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for button
-- ----------------------------
DROP TABLE IF EXISTS `button`;
CREATE TABLE `button`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `Location` int(11) NULL DEFAULT NULL COMMENT '位置',
  `ClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮样式',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '按钮表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button
-- ----------------------------
INSERT INTO `button` VALUES (1, 'add', '添加', 1, '', 'ok-icon-roundadd', 1, '添加', b'0', '2019-10-29 16:25:25', 1, '2019-10-29 16:25:29', 1);
INSERT INTO `button` VALUES (2, 'del', '删除', 0, 'layui-btn-danger', 'ok-icon-deletefill', 2, '删除', b'0', '2019-10-29 16:29:17', 1, '2019-10-29 16:29:20', 1);
INSERT INTO `button` VALUES (3, 'edit', '修改', 0, '', 'ok-icon-writefill', 3, '修改', b'0', '2019-10-29 16:30:32', 1, '2019-10-29 16:30:36', 1);
INSERT INTO `button` VALUES (4, 'batchDel', '批量删除', 1, 'layui-btn-danger', 'ok-icon-deletefill', 4, '批量删除', b'0', '2019-10-29 16:35:16', 1, '2019-10-29 16:35:19', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '捐赠表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itemsdetail
-- ----------------------------
INSERT INTO `itemsdetail` VALUES (1, 2, 'Company', '公司', 1, '公司', b'0', '2019-10-12 16:08:09', 1, '2019-10-12 16:08:15', 1);
INSERT INTO `itemsdetail` VALUES (2, 2, 'Department', '部门', 2, '部门', b'0', '2019-10-12 16:09:34', 1, '2019-10-12 16:09:37', 1);
INSERT INTO `itemsdetail` VALUES (3, 2, 'WorkGroup', '小组', 3, '小组', b'0', '2019-10-12 16:10:05', 1, '2019-10-12 16:10:07', 1);
INSERT INTO `itemsdetail` VALUES (4, 3, 'Sys_Role', '系统角色', 1, '系统角色', b'0', '2019-10-12 16:13:10', 1, '2019-10-12 16:13:14', 1);
INSERT INTO `itemsdetail` VALUES (5, 3, 'Bus_Role', '业务角色', 2, '业务角色', b'0', '2019-10-12 16:15:16', 1, '2019-10-12 16:15:30', 1);
INSERT INTO `itemsdetail` VALUES (6, 3, 'Other', '其他角色', 3, '其他角色', b'0', '2019-10-12 16:16:07', 1, '2019-10-12 16:16:09', 1);
INSERT INTO `itemsdetail` VALUES (7, 4, 'Id_Card', '身份证', 1, '身份证', b'0', '2019-10-12 16:17:45', 1, '2019-10-12 16:17:49', 1);
INSERT INTO `itemsdetail` VALUES (8, 4, 'Other', '其他', 2, '其他', b'0', '2019-10-12 16:19:06', 1, '2019-10-12 16:19:08', 1);
INSERT INTO `itemsdetail` VALUES (9, 5, 'Junior College', '大专', 1, '大专', b'0', '2019-10-12 16:26:16', 1, '2019-10-12 16:26:19', 1);
INSERT INTO `itemsdetail` VALUES (10, 5, 'Undergraduate', '本科', 2, '本科', b'0', '2019-10-12 16:26:45', 1, '2019-10-12 16:26:49', 1);
INSERT INTO `itemsdetail` VALUES (11, 5, 'Master', '硕士', 3, '硕士', b'0', '2019-10-12 16:30:22', 1, '2019-10-12 16:30:26', 1);
INSERT INTO `itemsdetail` VALUES (12, 5, 'Doctor', '博士', 4, '博士', b'0', '2019-10-12 16:31:18', 1, '2019-10-12 16:31:21', 1);
INSERT INTO `itemsdetail` VALUES (13, 5, 'Other', '其他', 5, '其他', b'0', '2019-10-12 16:31:44', 1, '2019-10-12 16:31:47', 1);
INSERT INTO `itemsdetail` VALUES (14, 6, 'Married', '已婚', 1, '已婚', b'0', '2019-10-29 14:26:15', 1, '2019-10-29 14:26:20', 1);
INSERT INTO `itemsdetail` VALUES (15, 6, 'UnMarried', '未婚', 2, '未婚', b'0', '2019-10-29 14:26:48', 1, '2019-10-29 14:26:50', 1);
INSERT INTO `itemsdetail` VALUES (16, 6, 'Divorce', '离异', 3, '离异', b'0', '2019-10-29 14:27:18', 1, '2019-10-29 14:27:21', 1);
INSERT INTO `itemsdetail` VALUES (17, 6, 'Widowed', '丧偶', 4, '丧偶', b'0', '2019-10-29 14:27:50', 1, '2019-10-29 14:27:53', 1);
INSERT INTO `itemsdetail` VALUES (18, 6, 'Other', '其他', 5, '其他', b'0', '2019-10-29 14:28:08', 1, '2019-10-29 14:28:11', 1);
INSERT INTO `itemsdetail` VALUES (19, 7, 'Bred', '未育', 1, '未育', b'0', '2019-10-29 14:33:08', 1, '2019-10-29 14:33:11', 1);
INSERT INTO `itemsdetail` VALUES (20, 7, 'UnBred', '已育', 2, '已育', b'0', '2019-10-29 14:33:46', 1, '2019-10-29 14:33:49', 1);
INSERT INTO `itemsdetail` VALUES (21, 7, 'Other', '其他', 3, '其他', b'0', '2019-10-29 14:34:21', 1, '2019-10-29 14:34:25', 1);
INSERT INTO `itemsdetail` VALUES (22, 8, 'Han', '汉族', 1, '汉族', b'0', '2019-10-29 14:36:30', 1, '2019-10-29 14:36:36', 1);
INSERT INTO `itemsdetail` VALUES (23, 8, 'Other', '其他', 2, '其他', b'0', '2019-10-29 14:36:54', 1, '2019-10-29 14:36:59', 1);
INSERT INTO `itemsdetail` VALUES (24, 9, 'Male', '男', 1, '男', b'0', '2019-10-29 14:38:58', 1, '2019-10-29 14:39:00', 1);
INSERT INTO `itemsdetail` VALUES (25, 9, 'Female', '女', 2, '女', b'0', '2019-10-29 14:39:23', 1, '2019-10-29 14:39:26', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logonlog
-- ----------------------------
INSERT INTO `logonlog` VALUES (1, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:45:55');
INSERT INTO `logonlog` VALUES (2, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:49:03');
INSERT INTO `logonlog` VALUES (3, 'Login', 'ffds', 'ffds', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:50:46');
INSERT INTO `logonlog` VALUES (4, 'Login', 'ffds', 'ffds', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:50:55');
INSERT INTO `logonlog` VALUES (5, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 15:51:07');
INSERT INTO `logonlog` VALUES (6, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:51:36');
INSERT INTO `logonlog` VALUES (7, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:51:48');
INSERT INTO `logonlog` VALUES (8, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:51:54');
INSERT INTO `logonlog` VALUES (9, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 15:52:00');
INSERT INTO `logonlog` VALUES (10, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-09 15:54:13');
INSERT INTO `logonlog` VALUES (11, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 15:59:31');
INSERT INTO `logonlog` VALUES (12, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 16:00:34');
INSERT INTO `logonlog` VALUES (13, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 16:00:37');
INSERT INTO `logonlog` VALUES (14, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-09 16:00:44');
INSERT INTO `logonlog` VALUES (15, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 16:00:51');
INSERT INTO `logonlog` VALUES (16, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 17:19:27');
INSERT INTO `logonlog` VALUES (17, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-09 17:59:15');
INSERT INTO `logonlog` VALUES (18, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 17:59:45');
INSERT INTO `logonlog` VALUES (19, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 18:00:01');
INSERT INTO `logonlog` VALUES (20, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 18:00:05');
INSERT INTO `logonlog` VALUES (21, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-09 18:00:55');
INSERT INTO `logonlog` VALUES (22, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-09 18:01:02');
INSERT INTO `logonlog` VALUES (23, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-09 18:01:07');
INSERT INTO `logonlog` VALUES (24, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 09:58:45');
INSERT INTO `logonlog` VALUES (25, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 10:00:10');
INSERT INTO `logonlog` VALUES (26, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:00:24');
INSERT INTO `logonlog` VALUES (27, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:00:44');
INSERT INTO `logonlog` VALUES (28, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:00:48');
INSERT INTO `logonlog` VALUES (29, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 10:00:52');
INSERT INTO `logonlog` VALUES (30, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 10:04:20');
INSERT INTO `logonlog` VALUES (31, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:04:36');
INSERT INTO `logonlog` VALUES (32, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:04:42');
INSERT INTO `logonlog` VALUES (33, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 10:04:50');
INSERT INTO `logonlog` VALUES (34, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 10:12:39');
INSERT INTO `logonlog` VALUES (35, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 10:12:54');
INSERT INTO `logonlog` VALUES (36, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 10:14:19');
INSERT INTO `logonlog` VALUES (37, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 11:19:12');
INSERT INTO `logonlog` VALUES (38, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 11:19:25');
INSERT INTO `logonlog` VALUES (39, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 11:26:45');
INSERT INTO `logonlog` VALUES (40, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 11:26:48');
INSERT INTO `logonlog` VALUES (41, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 11:26:56');
INSERT INTO `logonlog` VALUES (42, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 11:28:10');
INSERT INTO `logonlog` VALUES (43, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 11:28:43');
INSERT INTO `logonlog` VALUES (44, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 11:30:22');
INSERT INTO `logonlog` VALUES (45, 'Login', 'admin', 'admin', '登录失败，用户名或密码错误', '192.168.1.148', '本地局域网', '2019-11-11 11:30:34');
INSERT INTO `logonlog` VALUES (46, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 11:30:38');
INSERT INTO `logonlog` VALUES (47, 'Login', 'admin', 'admin', '登录失败，验证码错误', '192.168.1.148', '本地局域网', '2019-11-11 11:30:40');
INSERT INTO `logonlog` VALUES (48, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 11:30:44');
INSERT INTO `logonlog` VALUES (49, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 15:43:20');
INSERT INTO `logonlog` VALUES (50, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 15:43:33');
INSERT INTO `logonlog` VALUES (51, 'Exit', 'admin', 'Liu_Cabbage', '安全退出系统', '192.168.1.148', '本地局域网', '2019-11-11 16:05:47');
INSERT INTO `logonlog` VALUES (52, 'Login', 'admin', 'Liu_Cabbage', '登陆成功', '192.168.1.148', '本地局域网', '2019-11-11 16:05:56');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '父级',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `FontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体类型',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (1, 0, '系统管理', 'ok-icon', '&#xe6b0;', '/', b'0', 1, '系统管理', b'0', '2019-09-19 15:28:17', 1, '2019-09-19 15:28:29', 1);
INSERT INTO `module` VALUES (2, 0, '系统安全', 'ok-icon', '&#xe769;', '/', b'0', 2, '系统安全', b'0', '2019-09-19 15:48:28', 1, '2019-09-19 15:48:33', 1);
INSERT INTO `module` VALUES (3, 0, '系统设置', 'ok-icon', '&#xe889;', '/', b'0', 3, '系统设置', b'0', '2019-09-19 15:49:03', 1, '2019-09-19 15:49:07', 1);
INSERT INTO `module` VALUES (4, 1, '机构管理', 'ok-icon', '&#xe726;', '/Permissions/Organize', b'1', 1, '机构管理', b'0', '2019-09-19 16:51:51', 1, '2019-09-19 16:51:55', 1);
INSERT INTO `module` VALUES (5, 1, '角色管理', 'ok-icon', '&#xe7be;', '/Permissions/Role', b'1', 2, '角色管理', b'0', '2019-09-19 16:54:54', 1, '2019-09-19 16:54:58', 1);
INSERT INTO `module` VALUES (6, 1, '用户管理', 'ok-icon', '&#xe736;', '/Permissions/User', b'1', 3, '用户管理', b'0', '2019-09-19 16:57:34', 1, '2019-09-19 16:57:38', 1);
INSERT INTO `module` VALUES (7, 1, '数据字典', 'ok-icon', '&#xe660;', '/Permissions/Items', b'1', 4, '数据字典', b'0', '2019-09-19 16:58:27', 1, '2019-09-19 16:58:31', 1);
INSERT INTO `module` VALUES (8, 1, '系统菜单', 'ok-icon', '&#xe7ad;', '/Permissions/Module', b'1', 5, '系统菜单', b'0', '2019-09-19 16:58:49', 1, '2019-09-19 16:58:45', 1);
INSERT INTO `module` VALUES (9, 2, '登录日志', 'ok-icon', '&#xe706;', '/Security/LogonLog', b'1', 1, '登录日志', b'0', '2019-09-23 18:17:12', 1, '2019-09-23 18:17:18', 1);
INSERT INTO `module` VALUES (10, 3, '网站设置', 'ok-icon', '&#xe7d5;', '/SysSet/WebSet', b'1', 1, '系统设置', b'0', '2019-09-23 18:18:43', 1, '2019-09-23 18:18:49', 1);
INSERT INTO `module` VALUES (11, 3, '开发设置', 'ok-icon', '&#xe738;', '/SysSet/DevSet', b'1', 2, '开发设置', b'0', '2019-09-23 18:19:34', 1, '2019-09-23 18:19:38', 1);
INSERT INTO `module` VALUES (12, 3, '邮件设置', 'ok-icon', '&#xe7bd;', '/SysSet/EmailSet', b'1', 3, '邮件设置', b'0', '2019-09-23 18:20:02', 1, '2019-09-23 18:19:59', 1);

-- ----------------------------
-- Table structure for modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `modulebutton`;
CREATE TABLE `modulebutton`  (
  `ModuleId` int(11) NOT NULL COMMENT '模块主键',
  `ButtonId` int(11) NOT NULL COMMENT '按钮主键',
  PRIMARY KEY (`ModuleId`, `ButtonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模块授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulebutton
-- ----------------------------
INSERT INTO `modulebutton` VALUES (4, 1);
INSERT INTO `modulebutton` VALUES (4, 2);
INSERT INTO `modulebutton` VALUES (4, 3);
INSERT INTO `modulebutton` VALUES (5, 1);
INSERT INTO `modulebutton` VALUES (5, 2);
INSERT INTO `modulebutton` VALUES (5, 3);
INSERT INTO `modulebutton` VALUES (6, 1);
INSERT INTO `modulebutton` VALUES (6, 2);
INSERT INTO `modulebutton` VALUES (6, 3);
INSERT INTO `modulebutton` VALUES (7, 1);
INSERT INTO `modulebutton` VALUES (7, 2);
INSERT INTO `modulebutton` VALUES (7, 3);
INSERT INTO `modulebutton` VALUES (8, 1);
INSERT INTO `modulebutton` VALUES (8, 2);
INSERT INTO `modulebutton` VALUES (8, 3);
INSERT INTO `modulebutton` VALUES (9, 2);
INSERT INTO `modulebutton` VALUES (9, 4);

-- ----------------------------
-- Table structure for organize
-- ----------------------------
DROP TABLE IF EXISTS `organize`;
CREATE TABLE `organize`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ParentId` int(11) NULL DEFAULT NULL COMMENT '父级',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CategoryId` int(11) NULL DEFAULT NULL COMMENT '分类',
  `ManagerId` int(11) NULL DEFAULT NULL COMMENT '负责人',
  `TelePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `MobilePhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `Fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `SortCode` int(4) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organize
-- ----------------------------
INSERT INTO `organize` VALUES (1, 0, 'Company', '皮皮虾公司', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, b'0', '2019-09-26 17:52:17', 1, '2019-09-26 17:52:12', 1);
INSERT INTO `organize` VALUES (2, 1, 'Market', '业务部', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, b'0', '2019-10-29 15:32:27', 1, '2019-10-29 15:32:30', 1);
INSERT INTO `organize` VALUES (3, 1, 'Ministry', '技术部', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, b'0', '2019-10-29 15:32:39', 1, '2019-10-29 15:32:42', 1);
INSERT INTO `organize` VALUES (4, 1, 'HumanResourse', '人事部', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, b'0', '2019-10-29 15:33:27', 1, '2019-10-29 15:33:31', 1);
INSERT INTO `organize` VALUES (5, 1, 'IT Group', '研发小组', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, b'0', '2019-10-29 15:35:10', 1, '2019-10-29 15:35:12', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `TypeClass` int(11) NULL DEFAULT NULL COMMENT '类型',
  `SortCode` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '	administrator', '超级管理员', 4, 1, '超级管理员', b'0', '2019-10-29 17:20:49', 1, '2019-10-29 17:20:47', 1);
INSERT INTO `role` VALUES (2, 'system', '系统管理员', 4, 2, '系统管理员', b'0', '2019-10-29 17:24:13', 1, '2019-10-29 17:24:18', 1);
INSERT INTO `role` VALUES (3, 'user', '普通用户', 5, 3, '普通用户', b'0', '2019-10-29 17:25:42', 1, '2019-10-29 17:25:44', 1);
INSERT INTO `role` VALUES (4, 'test', '测试用户', 6, 4, '测试用户', b'0', '2019-10-29 17:26:07', 1, '2019-10-29 17:26:10', 1);

-- ----------------------------
-- Table structure for roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `roleauthorize`;
CREATE TABLE `roleauthorize`  (
  `RoleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色主键',
  `ModuleId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块主键',
  `ButtonId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮主键',
  PRIMARY KEY (`RoleId`, `ModuleId`, `ButtonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roleauthorize
-- ----------------------------
INSERT INTO `roleauthorize` VALUES ('1', '1', '0');
INSERT INTO `roleauthorize` VALUES ('1', '10', '0');
INSERT INTO `roleauthorize` VALUES ('1', '11', '0');
INSERT INTO `roleauthorize` VALUES ('1', '12', '0');
INSERT INTO `roleauthorize` VALUES ('1', '2', '0');
INSERT INTO `roleauthorize` VALUES ('1', '3', '0');
INSERT INTO `roleauthorize` VALUES ('1', '4', '0');
INSERT INTO `roleauthorize` VALUES ('1', '4', '1');
INSERT INTO `roleauthorize` VALUES ('1', '4', '2');
INSERT INTO `roleauthorize` VALUES ('1', '4', '3');
INSERT INTO `roleauthorize` VALUES ('1', '5', '0');
INSERT INTO `roleauthorize` VALUES ('1', '5', '1');
INSERT INTO `roleauthorize` VALUES ('1', '5', '2');
INSERT INTO `roleauthorize` VALUES ('1', '5', '3');
INSERT INTO `roleauthorize` VALUES ('1', '6', '0');
INSERT INTO `roleauthorize` VALUES ('1', '6', '1');
INSERT INTO `roleauthorize` VALUES ('1', '6', '2');
INSERT INTO `roleauthorize` VALUES ('1', '6', '3');
INSERT INTO `roleauthorize` VALUES ('1', '7', '0');
INSERT INTO `roleauthorize` VALUES ('1', '7', '1');
INSERT INTO `roleauthorize` VALUES ('1', '7', '2');
INSERT INTO `roleauthorize` VALUES ('1', '7', '3');
INSERT INTO `roleauthorize` VALUES ('1', '8', '0');
INSERT INTO `roleauthorize` VALUES ('1', '8', '1');
INSERT INTO `roleauthorize` VALUES ('1', '8', '2');
INSERT INTO `roleauthorize` VALUES ('1', '8', '3');
INSERT INTO `roleauthorize` VALUES ('1', '9', '0');
INSERT INTO `roleauthorize` VALUES ('1', '9', '2');
INSERT INTO `roleauthorize` VALUES ('1', '9', '4');

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
  `DepartmentId` int(11) NULL DEFAULT NULL COMMENT '部门主键',
  `RoleId` int(11) NULL DEFAULT NULL COMMENT '角色主键',
  `IsAdministrator` bit(1) NULL DEFAULT NULL COMMENT '是否管理员',
  `EnabledMark` bit(1) NULL DEFAULT NULL COMMENT '有效标志',
  `CreateTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CreateUserId` int(11) NULL DEFAULT NULL COMMENT '创建用户主键',
  `UpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `UpdateUserId` int(11) NULL DEFAULT NULL COMMENT '修改用户主键',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Liu_Cabbage', '/Content/images/head.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, b'1', b'0', '2019-10-29 15:40:26', 1, '2019-10-29 15:40:28', 1);

SET FOREIGN_KEY_CHECKS = 1;
