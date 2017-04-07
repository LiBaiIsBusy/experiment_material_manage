/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : experiment_material_manage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-07 09:34:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_code` varchar(255) DEFAULT NULL COMMENT '耗材编号',
  `product_name` varchar(255) DEFAULT NULL COMMENT '耗材名称',
  `current_number` int(255) unsigned zerofill DEFAULT NULL COMMENT '当前库容',
  `max_number` int(255) DEFAULT NULL COMMENT '最大库容',
  `mini_number` int(255) DEFAULT NULL COMMENT '最小库容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='库存表';
