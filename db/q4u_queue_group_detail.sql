/*
 Navicat Premium Data Transfer

 Source Server         : LOCALServer
 Source Server Type    : MySQL
 Source Server Version : 100014
 Source Host           : localhost:3306
 Source Schema         : queue

 Target Server Type    : MySQL
 Target Server Version : 100014
 File Encoding         : 65001

 Date: 07/03/2019 13:24:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for q4u_queue_group_detail
-- ----------------------------
DROP TABLE IF EXISTS `q4u_queue_group_detail`;
CREATE TABLE `q4u_queue_group_detail`  (
  `service_point_id` int(3) NOT NULL,
  `date_serv` date NOT NULL,
  `last_queue` int(11) NULL DEFAULT NULL,
  `room_id` int(3) NOT NULL,
  `queue_id` int(11) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `queue_running` int(6) NOT NULL,
  PRIMARY KEY (`service_point_id`, `date_serv`, `room_id`, `queue_running`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
