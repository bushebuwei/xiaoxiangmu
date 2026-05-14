/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80040
 Source Host           : localhost:3306
 Source Schema         : my_project

 Target Server Type    : MySQL
 Target Server Version : 80040
 File Encoding         : 65001

 Date: 12/04/2025 11:08:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cust_address
-- ----------------------------
DROP TABLE IF EXISTS `cust_address`;
CREATE TABLE `cust_address`  (
  `cust_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户ID号',
  `addr_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址ID号',
  `seq_no` smallint(0) NOT NULL COMMENT '序号',
  `receiver` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货人',
  `cellphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `area` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货详细地址',
  `create_date` datetime(0) NOT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `isDefault` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '默认地址：0 -否 1-是',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_address
-- ----------------------------

-- ----------------------------
-- Table structure for cust_bank
-- ----------------------------
DROP TABLE IF EXISTS `cust_bank`;
CREATE TABLE `cust_bank`  (
  `cust_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户id',
  `bank_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '开户银行代码。下拉选择来自 pub_bank',
  `account_no` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '银行账号：用于支付和结算',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '卡类型 C-储蓄卡 D-信用卡',
  `create_date` datetime(0) NOT NULL COMMENT '创建日期',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_bank
-- ----------------------------

-- ----------------------------
-- Table structure for cust_information
-- ----------------------------
DROP TABLE IF EXISTS `cust_information`;
CREATE TABLE `cust_information`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户id，系统自动生成',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户账号，唯一，用于登录',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `nick_name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别：M 男 F 女',
  `photo_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像照片文件名，保存图片存放的位置',
  `date_of_birth` datetime(0) NULL DEFAULT NULL COMMENT '出生日期：自动计算年龄',
  `id_no` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `font_of_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证正面文件名',
  `back_of_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证反面文件名',
  `enterprise_code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位编号，自动回填',
  `enterprise` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位名称',
  `ent_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位地址',
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `cellphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `wechat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信号',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'qq号',
  `email_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期，系统自动填写',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态 1 正常 2 注销',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_information
-- ----------------------------
INSERT INTO `cust_information` VALUES ('1414134', 'cust111', '12345', '小李', '小米', 'M', NULL, NULL, '312312', NULL, NULL, '34242', '234234', '4234234', '4234', '234324', '324234', NULL, NULL, '2025-02-21 14:17:54', '1', NULL);
INSERT INTO `cust_information` VALUES ('1897894640812670977', 'cust3', NULL, '小卓', '卓小小', 'M', NULL, NULL, NULL, NULL, NULL, '12434', '哈哈好1', '湖省娄底市娄区', NULL, '1822942466', NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO `cust_information` VALUES ('1897895163024490497', 'cust1', NULL, '小胡', '胡校', 'M', NULL, NULL, NULL, NULL, NULL, '戴森field', '鄂大', '大肥肥', NULL, '123546', NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO `cust_information` VALUES ('1897895766760996866', '12321', NULL, '小刘', '刘大', 'M', NULL, NULL, NULL, NULL, NULL, '12321', '3213', '3123123', NULL, '312312', NULL, NULL, NULL, NULL, '1', NULL);

-- ----------------------------
-- Table structure for farm_information
-- ----------------------------
DROP TABLE IF EXISTS `farm_information`;
CREATE TABLE `farm_information`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '农场id',
  `farmer_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产户id',
  `farm_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农场编号',
  `farm_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农场名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收货详细地址',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农场简介',
  `director` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农场负责人',
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `cellphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `cust_service` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客服',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of farm_information
-- ----------------------------
INSERT INTO `farm_information` VALUES ('325425fryg', '214543d', '2048', '大兴农场', '湖南', '大大大', 'lemon', '13256456998', '8860121', '张三', '2025-03-08 19:05:30', '最便宜');

-- ----------------------------
-- Table structure for farmer_information
-- ----------------------------
DROP TABLE IF EXISTS `farmer_information`;
CREATE TABLE `farmer_information`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '产户id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产户账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产户姓名',
  `nickname` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别 M-男 F-女',
  `photo_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像照片文件名',
  `date_of_birth` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `id_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `font_of_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证正面',
  `back_of_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证反面',
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `cellphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `wechat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信号',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'qq号',
  `email_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `audit_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核标志 0-未通过 1-通过',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态 1-正常 2-注销',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of farmer_information
-- ----------------------------
INSERT INTO `farmer_information` VALUES ('214543d', 'farmer', '12345', 'hah', '李程', 'Y', '312321', '2025-03-08 11:43:22', '123243245435', '234234', '5647354', '1232432', '324324', '432423', '4234234', '432432', '1', '2025-03-08 11:43:44', '1', NULL);

-- ----------------------------
-- Table structure for farmer_product
-- ----------------------------
DROP TABLE IF EXISTS `farmer_product`;
CREATE TABLE `farmer_product`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '农产品id',
  `farm_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农场编号',
  `farmer_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产户id',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农产品名称',
  `count` int(0) NULL DEFAULT NULL COMMENT '数量',
  `count_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数量单位',
  `price` double NULL DEFAULT NULL COMMENT '单价',
  `price_unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单价单位',
  `spec` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格',
  `quality_category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品质类别',
  `product_size` double NULL DEFAULT NULL COMMENT '尺寸',
  `product_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色',
  `product_part` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部位',
  `package_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '包装方式',
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存储方式',
  `product_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农产品简介',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态 0- 现售 1-限售 2-预售 3-售完 4-已下架',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '上架日期',
  `handler` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of farmer_product
-- ----------------------------
INSERT INTO `farmer_product` VALUES ('4789234785', '325425fryg', '214543d', '喜之郎', 344, '个', 40, '元', '哈哈', '好', 20, '绿色', '部分', '真空', '无阳光', '好吃', '好', '1', '2025-03-08 19:07:43', 'lemon');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `order_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单id',
  `seq_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '序号',
  `fprod_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农产品名称',
  `fprod_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农产品编号',
  `fprod_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '农产品描述',
  `order_qty` int(0) NULL DEFAULT NULL COMMENT '订购数量',
  `order_unit` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数量单位 来自 pub_unit',
  `cost` double(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `cost_unit` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单价单位，默认元',
  `received_qty` int(0) NULL DEFAULT NULL COMMENT '接收数',
  `received_date` datetime(0) NULL DEFAULT NULL COMMENT '接收时间',
  `return_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否退货 0-否 1-是',
  `reject_qty` int(0) NULL DEFAULT NULL COMMENT '已退货数量',
  `reject_date` datetime(0) NULL DEFAULT NULL COMMENT '退货时刻',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`seq_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('12312344324', '1', '喜之郎', '4789234785', '好吃', 1, '个', 40.00, '元', 10, '2025-03-11 19:42:00', '0', 0, '2025-03-11 19:42:11', '挺好的');
INSERT INTO `order_detail` VALUES ('1901076063501438978', '1901076063564353537', '喜之郎', '4789234785', '好吃', 1, '个', 40.00, '元', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_detail` VALUES ('1901078052847243266', '1901078052910157826', '喜之郎', '4789234785', '好吃', 1, '个', 40.00, '元', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for order_head
-- ----------------------------
DROP TABLE IF EXISTS `order_head`;
CREATE TABLE `order_head`  (
  `order_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `cust_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户id',
  `order_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单状态 1-已支付 2-已接单 3-已发货 4-已签收',
  `order_date` datetime(0) NULL DEFAULT NULL COMMENT '订单时间',
  `addr_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址id',
  `pay_method` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支付方式 0-微信 1-银行卡·',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `deliver_date` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `log_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流状态',
  `arrival_date` datetime(0) NULL DEFAULT NULL COMMENT '到达时间',
  `signatory` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签收人',
  `signing_date` datetime(0) NULL DEFAULT NULL COMMENT '签单时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_head
-- ----------------------------
INSERT INTO `order_head` VALUES ('12312344324', '1414134', '1', '2025-03-11 18:55:35', '432432', '0', '2025-03-11 18:55:43', '2025-03-11 18:55:46', '1', '2025-03-11 18:55:49', 'lemon', '2025-03-11 18:56:01');
INSERT INTO `order_head` VALUES ('1901076063501438978', '1414134', '1', '2025-03-16 09:02:00', '11,1101,110101', '0', NULL, NULL, '0', NULL, '3123', NULL);
INSERT INTO `order_head` VALUES ('1901078052847243266', '1414134', '1', '2025-03-16 09:08:23', '11,1101,110101', '0', NULL, NULL, '0', NULL, '3213', NULL);

-- ----------------------------
-- Table structure for pub_bank
-- ----------------------------
DROP TABLE IF EXISTS `pub_bank`;
CREATE TABLE `pub_bank`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行代码',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pub_bank
-- ----------------------------

-- ----------------------------
-- Table structure for pub_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `pub_enterprise`;
CREATE TABLE `pub_enterprise`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业代码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型 1-客户 2-产户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pub_enterprise
-- ----------------------------
INSERT INTO `pub_enterprise` VALUES ('4234235', '1235', '湖南人文科技学院', 1);
INSERT INTO `pub_enterprise` VALUES ('fesfsdfe', '1234', '湖南大学', 1);
INSERT INTO `pub_enterprise` VALUES ('rfgvdfew', '4567', '长沙理工大学', 1);

-- ----------------------------
-- Table structure for pub_unit
-- ----------------------------
DROP TABLE IF EXISTS `pub_unit`;
CREATE TABLE `pub_unit`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '计量单位编号',
  `description` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pub_unit
-- ----------------------------

-- ----------------------------
-- Table structure for settlement_invite
-- ----------------------------
DROP TABLE IF EXISTS `settlement_invite`;
CREATE TABLE `settlement_invite`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邀请单号',
  `invite_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请名称',
  `settlement_cycle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结算周期',
  `settlement_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结算方式',
  `initiator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起方',
  `invite_time` datetime(0) NULL DEFAULT NULL COMMENT '发起日期',
  `recipient` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接受方',
  `confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '确定时间',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settlement_invite
-- ----------------------------
INSERT INTO `settlement_invite` VALUES ('1908716978730725378', '234234', 'm', '1', '1', '2025-04-06 11:02:45', '214543d', '2025-04-06 08:00:00', '0', '4324');
INSERT INTO `settlement_invite` VALUES ('1908717369681801217', '23423', 'm', '1', '1', '2025-04-06 11:04:18', '214543d', '2025-04-06 11:04:14', '0', '');

-- ----------------------------
-- Table structure for settlement_main
-- ----------------------------
DROP TABLE IF EXISTS `settlement_main`;
CREATE TABLE `settlement_main`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '系统id',
  `invite_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请单号',
  `transaction_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易总金额',
  `procedure_rate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手续比例',
  `procedure_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手续费总金额',
  `procedure_unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '金额单位',
  `settlement_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结算方式',
  `farmer_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产户账号',
  `settlement_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支出金额',
  `settlement_time` datetime(0) NULL DEFAULT NULL COMMENT '支付日期',
  `sys_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '平台账号',
  `received_amout` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收款金额',
  `received_time` datetime(0) NULL DEFAULT NULL COMMENT '收款时间',
  `difference` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '差额',
  `platform_signature` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '平台方签字',
  `platform_confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '平台方确认日期',
  `farmer_signature` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产户方签字',
  `farmer_confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '产户方确认日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settlement_main
-- ----------------------------

-- ----------------------------
-- Table structure for sys_authority_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_permission`;
CREATE TABLE `sys_authority_permission`  (
  `perm_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `perm_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限名称',
  `perm_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限路由',
  PRIMARY KEY (`perm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_permission
-- ----------------------------
INSERT INTO `sys_authority_permission` VALUES ('1423314', '系统管理', '/SysManage');
INSERT INTO `sys_authority_permission` VALUES ('4234gfdgrf', '客户管理', '/CustManage');
INSERT INTO `sys_authority_permission` VALUES ('4235436', '产户管理', '/FarmerManage');
INSERT INTO `sys_authority_permission` VALUES ('dawd214', '公共数据管理', '/SysManage/BaseDataManage');
INSERT INTO `sys_authority_permission` VALUES ('fdserf435', '订单管理', '/OrderManage');
INSERT INTO `sys_authority_permission` VALUES ('sfesfes', '用户管理', '/SysManage/SysUserManage');

-- ----------------------------
-- Table structure for sys_authority_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_role`;
CREATE TABLE `sys_authority_role`  (
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色具体名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_role
-- ----------------------------
INSERT INTO `sys_authority_role` VALUES ('1897163935900037121', '4234', '423');
INSERT INTO `sys_authority_role` VALUES ('1897164321213968386', 'demo', '测试');
INSERT INTO `sys_authority_role` VALUES ('213123123', 'admin', '管理员权限');
INSERT INTO `sys_authority_role` VALUES ('23421545665gtg', 'cust', '客户权限');
INSERT INTO `sys_authority_role` VALUES ('2344dfswer', 'order', '订单权限');
INSERT INTO `sys_authority_role` VALUES ('gvdrt456345', 'farmer', '产户权限');

-- ----------------------------
-- Table structure for sys_authority_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_role_permission`;
CREATE TABLE `sys_authority_role_permission`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色id',
  `perm_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限id集合 用 , 分隔',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否启用',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_role_permission
-- ----------------------------
INSERT INTO `sys_authority_role_permission` VALUES ('1897164024651509761', '1897163935900037121', '4234gfdgrf,fdserf435', '1', NULL);
INSERT INTO `sys_authority_role_permission` VALUES ('1897164321272688641', '1897164321213968386', '1423314,4235436,fdserf435', '1', NULL);
INSERT INTO `sys_authority_role_permission` VALUES ('23523', 'gvdrt456345', '4235436', '1', '2025-03-05 12:25:15');
INSERT INTO `sys_authority_role_permission` VALUES ('423412', '2344dfswer', 'fdserf435', '1', '2025-03-03 20:32:50');
INSERT INTO `sys_authority_role_permission` VALUES ('fsecdsfeg', '23421545665gtg', '4234gfdgrf', '1', '2025-02-21 15:14:30');
INSERT INTO `sys_authority_role_permission` VALUES ('rdawsdw312', '213123123', '4234gfdgrf', '1', '2025-03-03 20:31:46');

-- ----------------------------
-- Table structure for sys_authority_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_user_role`;
CREATE TABLE `sys_authority_user_role`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户id 用户可以来自 系统用户，客户，产户，平台',
  `role_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色id集合，用 , 拼接',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户类型 1：系统用户 2：客户 3：产户 4 平台',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否启用 1 启用 0 未启用',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_user_role
-- ----------------------------
INSERT INTO `sys_authority_user_role` VALUES ('1414134wewg', '1414134', '23421545665gtg', '2', '1', '2025-02-21 20:55:54');
INSERT INTO `sys_authority_user_role` VALUES ('1895809854132576258', '1895809853977387009', '2344dfswer', '1', '1', '2025-03-01 20:14:26');
INSERT INTO `sys_authority_user_role` VALUES ('1895811526359638017', '1895811526229614594', 'gvdrt456345,2344dfswer', '1', '1', '2025-03-01 20:21:05');
INSERT INTO `sys_authority_user_role` VALUES ('1896073726529757186', '1896073726441676801', '213123123', '1', '1', '2025-03-02 13:42:58');
INSERT INTO `sys_authority_user_role` VALUES ('1896074106030383106', '1896074105904553986', '213123123', '1', '1', '2025-03-02 13:44:29');
INSERT INTO `sys_authority_user_role` VALUES ('1896074284921643009', '1896074284854534146', '213123123', '1', '1', '2025-03-02 13:45:12');
INSERT INTO `sys_authority_user_role` VALUES ('1896075304024268803', '1896075304024268802', '213123123', '1', '1', '2025-03-02 13:49:15');
INSERT INTO `sys_authority_user_role` VALUES ('1896075786406854658', '1896075786356523009', '213123123', '1', '1', '2025-03-02 13:51:10');
INSERT INTO `sys_authority_user_role` VALUES ('1896181847826636802', '1896181847692419073', 'gvdrt456345', '1', '1', '2025-03-02 20:52:37');
INSERT INTO `sys_authority_user_role` VALUES ('1896181932987785218', '1896181932987785217', '213123123', '1', '1', '2025-03-02 20:52:57');
INSERT INTO `sys_authority_user_role` VALUES ('1897250667890761730', '1897250667823652866', '1897164321213968386', '1', '1', '2025-03-05 19:39:43');
INSERT INTO `sys_authority_user_role` VALUES ('1909955847329472513', '1909955847300112386', '1897164321213968386', '1', '1', '2025-04-09 21:05:34');
INSERT INTO `sys_authority_user_role` VALUES ('1909955964216336387', '1909955964216336386', '213123123,23421545665gtg', '1', '1', '2025-04-09 21:06:02');
INSERT INTO `sys_authority_user_role` VALUES ('423423324', '423423', '213123123', '1', '1', '2025-02-21 15:15:48');
INSERT INTO `sys_authority_user_role` VALUES ('5347667', '214543d', 'gvdrt456345', '3', '1', '2025-03-06 20:18:06');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '系统id号',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `user_level` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户级别 来自syslevel',
  `max_count` int(0) NOT NULL COMMENT '最大登录用户数',
  `current_count` int(0) NOT NULL COMMENT '当前用户登录数',
  `msg_manager` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否为消息管理员 Y 是 N 否',
  `user_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录用户名',
  `user_group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户组 预留',
  `parent_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人 使用此值来建立一个用户树形结构以便进行分级管理',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `enterprise_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户所属农场',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户状态。0-禁用，1-启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1893273623574097922', '3232', '12345', '1', 1, 0, 'Y', 'admin1', 'ewqeq', '34234', '2025-02-25 12:16:22', '34234', '0');
INSERT INTO `sys_user` VALUES ('1895811526229614594', NULL, '12345', NULL, 1, 0, 'Y', 'jun', NULL, NULL, '2025-03-01 20:21:05', '34234', '0');
INSERT INTO `sys_user` VALUES ('1896075304024268802', NULL, '1234', NULL, 1, 0, 'Y', '1222', NULL, NULL, '2025-03-02 13:49:15', '1235', '1');
INSERT INTO `sys_user` VALUES ('1896075786356523009', NULL, '1234', NULL, 1, 0, 'Y', 'ceshi', NULL, NULL, '2025-03-02 13:51:09', '1234', '1');
INSERT INTO `sys_user` VALUES ('1896181847692419073', NULL, '123', NULL, 1, 0, 'Y', 'haha23', NULL, NULL, '2025-03-02 20:52:36', '1234', '1');
INSERT INTO `sys_user` VALUES ('1896181932987785217', NULL, '12345', NULL, 1, 0, 'Y', 'jjjj', NULL, NULL, '2025-03-02 20:52:57', '1235', '1');
INSERT INTO `sys_user` VALUES ('1897250667823652866', NULL, '12345', NULL, 1, 0, 'Y', 'cccc', NULL, NULL, '2025-03-05 19:39:43', '1234', '1');
INSERT INTO `sys_user` VALUES ('1909955847300112386', NULL, '123654', NULL, 1, 0, 'Y', 'demo', NULL, NULL, '2025-04-09 21:05:34', '1235', '1');
INSERT INTO `sys_user` VALUES ('1909955964216336386', NULL, '1235', NULL, 1, 0, 'Y', 'admin', NULL, NULL, '2025-04-09 21:06:02', '1235', '1');
INSERT INTO `sys_user` VALUES ('423423', '43242', '12345', '1', 1, 1, '1', 'admin', '1', NULL, '2025-02-22 11:03:01', NULL, '1');
INSERT INTO `sys_user` VALUES ('4324423121', '4343', NULL, '4', 43242, 12345, 'Y', '1', '1', '1', '2025-02-23 14:50:52', '1', '0');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号类型 1-系统用户 2- 客户 3-产户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1895811526544187394', 'jun', '1');
INSERT INTO `user_account` VALUES ('1896075786473963522', 'ceshi', '1');
INSERT INTO `user_account` VALUES ('1896181847893745665', 'haha23', '1');
INSERT INTO `user_account` VALUES ('1896181933050699778', 'jjjj', '1');
INSERT INTO `user_account` VALUES ('1897250667957870594', 'cccc', '1');
INSERT INTO `user_account` VALUES ('1909955847392387074', 'demo', '1');
INSERT INTO `user_account` VALUES ('1909955964216336388', 'admin', '1');
INSERT INTO `user_account` VALUES ('214543d', 'farmer', '3');
INSERT INTO `user_account` VALUES ('3423423gtgt', 'cust111', '2');
INSERT INTO `user_account` VALUES ('5345wrer', 'admin', '1');
INSERT INTO `user_account` VALUES ('79bc33beae2bf5591', '1222', '1');
INSERT INTO `user_account` VALUES ('sfedfesf343', 'admin1', '1');

SET FOREIGN_KEY_CHECKS = 1;
