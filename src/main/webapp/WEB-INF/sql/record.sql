/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : experiment_material_manage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-07 09:33:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_code` varchar(255) DEFAULT NULL COMMENT '产品编号',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `type` varchar(255) DEFAULT NULL COMMENT '类别 入库为RK 出库为CK',
  `update_number` int(11) DEFAULT NULL COMMENT '入库/出库数量',
  `update_date` datetime DEFAULT NULL COMMENT '入库/出库时间',
  `price` decimal(10,2) DEFAULT NULL COMMENT '入库价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='出入库记录表';
