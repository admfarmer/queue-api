/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3307
 Source Schema         : queue

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 19/01/2019 09:39:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for q4u_departments
-- ----------------------------
DROP TABLE IF EXISTS `q4u_departments`;
CREATE TABLE `q4u_departments` (
  `department_id` int(6) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of q4u_departments
-- ----------------------------
BEGIN;
INSERT INTO `q4u_departments` VALUES (1, 'ศัลยกรรม');
INSERT INTO `q4u_departments` VALUES (2, 'สูติกรรม นรีเวช');
INSERT INTO `q4u_departments` VALUES (3, 'ทันตกรรม');
INSERT INTO `q4u_departments` VALUES (4, 'กายภาพบำบัด');
INSERT INTO `q4u_departments` VALUES (5, 'แพทย์แผนไทย');
INSERT INTO `q4u_departments` VALUES (6, 'คลินิคโรคเรื้อรัง');
INSERT INTO `q4u_departments` VALUES (7, 'เวชกรรมชุมชน');
INSERT INTO `q4u_departments` VALUES (8, 'ตรวจโรคทั่วไป');
COMMIT;

-- ----------------------------
-- Table structure for q4u_person
-- ----------------------------
DROP TABLE IF EXISTS `q4u_person`;
CREATE TABLE `q4u_person` (
  `hn` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`hn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_person
-- ----------------------------
BEGIN;
INSERT INTO `q4u_person` VALUES ('0000138', 'นาง', 'ไพวรรณ', 'พรษา', '1972-12-21', NULL, '2019-01-16 11:52:44', '2');
INSERT INTO `q4u_person` VALUES ('0000321', 'นาง', 'บุญมี', 'ช่างยันต์', '1942-07-01', NULL, '2019-01-16 14:19:13', '2');
INSERT INTO `q4u_person` VALUES ('0000382', 'นาง', 'คำ', 'คณะอนันต์', '1957-09-11', NULL, '2019-01-19 09:23:18', '2');
INSERT INTO `q4u_person` VALUES ('0000996', 'นาย', 'มรกต', 'โนนคำเฮือง', '1951-01-10', NULL, '2018-11-28 18:24:00', '1');
INSERT INTO `q4u_person` VALUES ('0001161', 'นาง', 'เลิศ', 'ไชยบล', '1930-09-14', NULL, '2019-01-16 11:46:13', '2');
INSERT INTO `q4u_person` VALUES ('0001425', 'นาย', 'วิชิต', 'ทองทิพย์', '1966-05-07', NULL, '2019-01-16 14:19:21', '1');
INSERT INTO `q4u_person` VALUES ('0001740', 'นาง', 'เอ็ดศรี', 'ชิณเกตุ', '1947-08-07', NULL, '2019-01-16 14:09:59', '2');
INSERT INTO `q4u_person` VALUES ('0001752', 'น.ส.', 'สุภัทรา', 'ทะบันแดน', '1976-02-25', NULL, '2019-01-16 11:52:40', '2');
INSERT INTO `q4u_person` VALUES ('0001868', 'นาง', 'ณิชาพร', 'โนนคำเฮือง', '1973-01-14', NULL, '2019-01-16 14:01:35', '2');
INSERT INTO `q4u_person` VALUES ('0002228', 'ด.ญ.', 'กิตติยาพร', 'หาวิเลิศ', '2004-04-21', NULL, '2019-01-16 14:19:17', '2');
INSERT INTO `q4u_person` VALUES ('0006223', 'นาย', 'จักรพงษ์', 'พุทธวงษ์', '1990-02-12', NULL, '2019-01-16 14:00:57', '1');
INSERT INTO `q4u_person` VALUES ('0006768', 'ส.อ.', 'บุญมี', 'อัคพิน', '1959-02-17', NULL, '2018-11-28 19:22:10', '1');
INSERT INTO `q4u_person` VALUES ('10001', 'นาย', 'สถิตย์', 'เรียนพิศ', '1980-09-09', NULL, '2019-01-16 14:35:19', '1');
INSERT INTO `q4u_person` VALUES ('100010', 'นาย', 'สถิตย์xx', 'เรียนพิศxx', '1980-09-09', NULL, '2019-01-16 14:38:51', '1');
INSERT INTO `q4u_person` VALUES ('10829', '', 'นาคแก้ว', 'เดชพันธ์', '1960-05-26', NULL, '2018-11-27 11:02:00', '2');
INSERT INTO `q4u_person` VALUES ('10892', '', 'ทองพูน', 'ทวีแก้ว', '1956-06-25', NULL, '2018-11-27 18:47:34', '1');
INSERT INTO `q4u_person` VALUES ('111833', '', 'บุญนอง', 'ชูเนตร', '1958-12-05', NULL, '2018-11-28 17:25:15', '2');
INSERT INTO `q4u_person` VALUES ('111899', '', 'ไพรัตน์', 'ตระการจันทร์', '1945-10-11', NULL, '2018-12-04 19:56:03', '2');
INSERT INTO `q4u_person` VALUES ('11436', '', 'ประยูร', 'ลุนราศรี', '1957-09-24', NULL, '2018-11-27 10:02:13', '2');
INSERT INTO `q4u_person` VALUES ('126860', '', 'สมศักดิ์', 'บุญอุ้ม', '1953-03-23', NULL, '2018-11-28 00:22:53', '1');
INSERT INTO `q4u_person` VALUES ('129894', '', 'ปรียาภรณ์', 'รัตนนท์', '1996-01-19', NULL, '2018-11-22 20:09:04', '2');
INSERT INTO `q4u_person` VALUES ('130174', '', 'จันที', 'สารกาล', '1950-06-23', NULL, '2018-11-27 18:47:29', '2');
INSERT INTO `q4u_person` VALUES ('13099', '', 'วิเชียร', 'พงษ์สถิตย์', '1948-01-01', NULL, '2019-01-13 02:10:52', '1');
INSERT INTO `q4u_person` VALUES ('143728', '', 'จักรวิชญ์', 'รองทอง', '2008-06-22', NULL, '2018-11-28 17:25:38', '1');
INSERT INTO `q4u_person` VALUES ('145676', '', 'นาลอน', 'ตระการไทย', '1964-09-03', NULL, '2018-11-27 10:02:00', '2');
INSERT INTO `q4u_person` VALUES ('146245', '', 'เบญจมาศ', 'เชื้ออุ่น', '1982-12-30', NULL, '2018-11-28 17:25:36', '2');
INSERT INTO `q4u_person` VALUES ('14807', '', 'ก่อง', 'ทองชุม', '1938-08-14', NULL, '2018-11-22 20:08:15', '2');
INSERT INTO `q4u_person` VALUES ('176886', '', 'วารี', 'หลักกำแพง', '1983-05-18', NULL, '2018-11-22 20:07:10', '2');
INSERT INTO `q4u_person` VALUES ('21696', '', 'วันดี', 'ระดาบุตร', '1949-01-27', NULL, '2018-11-22 20:14:36', '2');
INSERT INTO `q4u_person` VALUES ('22926', '', 'คำผา', 'อินอร่าม', '1953-01-01', NULL, '2018-11-27 15:50:18', '2');
INSERT INTO `q4u_person` VALUES ('2414', '', 'ทองสูรย์', 'ชูเนตร', '1941-01-06', NULL, '2018-11-29 16:04:25', '1');
INSERT INTO `q4u_person` VALUES ('28392', '', 'สุพา', 'สังกะเพศ', '1957-07-20', NULL, '2018-12-04 19:56:09', '2');
INSERT INTO `q4u_person` VALUES ('32993', '', 'บำรุง', 'ตระการจันทร์', '1955-01-01', NULL, '2018-11-29 16:04:27', '1');
INSERT INTO `q4u_person` VALUES ('34406', '', 'นาง', 'คันธจันทร์', '1955-03-04', NULL, '2018-12-04 19:56:06', '2');
INSERT INTO `q4u_person` VALUES ('39678', '', 'ประยูร', 'วงศาสนธิ์', '1954-01-01', NULL, '2018-11-27 10:02:06', '2');
INSERT INTO `q4u_person` VALUES ('45849', '', 'สุวัฒน์', 'ประสานสุข', '1948-01-01', NULL, '2018-11-27 15:50:13', '1');
INSERT INTO `q4u_person` VALUES ('49635', '', 'ฝาน', 'สายธนู', '1937-11-19', NULL, '2018-11-27 10:02:17', '1');
INSERT INTO `q4u_person` VALUES ('55593', '', 'สุพิศ', 'คำเสมอ', '1968-08-11', NULL, '2018-11-27 11:01:49', '2');
INSERT INTO `q4u_person` VALUES ('58373', '', 'นิรินทร์', 'สมนึก', '1998-01-15', NULL, '2018-11-22 20:08:59', '2');
INSERT INTO `q4u_person` VALUES ('6020', '', 'ทอง', 'บุญชื่น', '1957-05-02', NULL, '2018-11-28 17:25:41', '1');
INSERT INTO `q4u_person` VALUES ('6968', '', 'สมหวัง', 'ตระการจันทร์', '1949-01-01', NULL, '2018-12-04 19:55:58', '1');
INSERT INTO `q4u_person` VALUES ('74991', '', 'กัญญารัตน์', 'พงษ์สำราญ', '1999-02-07', NULL, '2018-11-23 13:06:22', '2');
INSERT INTO `q4u_person` VALUES ('75762', '', 'กัญจนา', 'มีคุณ', '1999-09-13', NULL, '2018-11-22 20:14:31', '2');
INSERT INTO `q4u_person` VALUES ('82963', '', 'สุพันธ์', 'เครือดี', '1944-12-17', NULL, '2018-11-22 20:13:17', '2');
INSERT INTO `q4u_person` VALUES ('85575', '', 'สมศักดิ์', 'ไชยรัตน์', '1963-05-09', NULL, '2018-11-29 15:55:36', '1');
INSERT INTO `q4u_person` VALUES ('86376', '', 'ลำใย', 'หลักคำ', '1962-07-05', NULL, '2018-12-25 18:08:28', '2');
INSERT INTO `q4u_person` VALUES ('92941', '', 'ฮู้', 'ชูเนตร', '1942-04-01', NULL, '2018-11-28 17:25:17', '2');
INSERT INTO `q4u_person` VALUES ('97256', '', 'นาง', 'พวงเพชร', '1947-07-01', NULL, '2018-11-29 16:04:32', '2');
INSERT INTO `q4u_person` VALUES ('97265', '', 'เพ็ง', 'กากแก้ว', '1941-04-14', NULL, '2018-11-29 16:04:29', '1');
INSERT INTO `q4u_person` VALUES ('98659', '', 'คำหล้า', 'บุญเนตร', '1953-11-11', NULL, '2018-11-23 14:52:07', '1');
COMMIT;

-- ----------------------------
-- Table structure for q4u_priorities
-- ----------------------------
DROP TABLE IF EXISTS `q4u_priorities`;
CREATE TABLE `q4u_priorities` (
  `priority_id` int(3) NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `priority_prefix` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `prority_color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`priority_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_priorities
-- ----------------------------
BEGIN;
INSERT INTO `q4u_priorities` VALUES (1, 'ปกติ', '1', NULL);
INSERT INTO `q4u_priorities` VALUES (2, 'URGENT', '2', NULL);
INSERT INTO `q4u_priorities` VALUES (3, 'EMERGENCY', '3', NULL);
INSERT INTO `q4u_priorities` VALUES (4, 'VIP', '4', NULL);
INSERT INTO `q4u_priorities` VALUES (5, '70 ปีขึ้นไป', '5', NULL);
INSERT INTO `q4u_priorities` VALUES (6, 'ผู้นำศาสนา พระ', '6', NULL);
INSERT INTO `q4u_priorities` VALUES (7, 'รถนั่ง-รถนอน', '7', NULL);
INSERT INTO `q4u_priorities` VALUES (8, 'เจ้าหน้าที่', '8', NULL);
COMMIT;

-- ----------------------------
-- Table structure for q4u_provider_types
-- ----------------------------
DROP TABLE IF EXISTS `q4u_provider_types`;
CREATE TABLE `q4u_provider_types` (
  `provider_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_type_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'รหัสประเภทผู้ให้บริการ',
  PRIMARY KEY (`provider_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for q4u_queue
-- ----------------------------
DROP TABLE IF EXISTS `q4u_queue`;
CREATE TABLE `q4u_queue` (
  `queue_id` int(12) NOT NULL AUTO_INCREMENT,
  `hn` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vn` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `service_point_id` int(3) NOT NULL,
  `priority_id` int(3) DEFAULT NULL,
  `room_id` int(2) DEFAULT NULL COMMENT 'ช่องบริการ',
  `date_serv` date NOT NULL COMMENT 'วันที่รับบริการ',
  `time_serv` time DEFAULT NULL,
  `queue_number` varchar(10) DEFAULT NULL COMMENT 'หมายเลขQ',
  `his_queue` varchar(6) DEFAULT NULL COMMENT 'หมายเลขQ(Hosxp)',
  `queue_status_id` int(1) DEFAULT NULL COMMENT 'สถานะQ',
  `mark_pending` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT 'N=Not pending Y=pending',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'หมายเหตุรับบริการ',
  `date_create` datetime NOT NULL COMMENT 'เวลาสร้างQ',
  `date_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'เวลาปรับปรุ่งQ',
  `pending_to_service_point_id` int(3) DEFAULT NULL COMMENT 'แผนกที่ถูกส่งคิวต่อ',
  `is_interview` char(1) DEFAULT 'N',
  `is_completed` char(1) DEFAULT 'N',
  PRIMARY KEY (`vn`,`service_point_id`) USING BTREE,
  UNIQUE KEY `q4u_queue_un` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_queue
-- ----------------------------
BEGIN;
INSERT INTO `q4u_queue` VALUES (10, '10001', '100009', 6, 1, NULL, '2019-01-16', '00:12:30', '50003', '12', NULL, 'N', NULL, '2019-01-16 14:35:20', '2019-01-16 14:35:20', NULL, 'N', 'N');
INSERT INTO `q4u_queue` VALUES (11, '100010', '1000090', 6, 1, NULL, '2019-01-16', '00:12:30', '50004', '12', NULL, 'N', NULL, '2019-01-16 14:38:51', '2019-01-16 14:38:51', NULL, 'N', 'N');
INSERT INTO `q4u_queue` VALUES (1, '0001161', '470115080001', 6, 3, 14, '2019-01-16', '08:00:01', '00001', '', NULL, 'N', NULL, '2019-01-16 11:46:13', '2019-01-16 11:51:13', NULL, 'Y', 'N');
INSERT INTO `q4u_queue` VALUES (3, '0000138', '470722082053', 7, 7, 20, '2019-01-16', '08:20:53', '00002', '', NULL, 'N', NULL, '2019-01-16 11:52:44', '2019-01-16 14:03:20', NULL, 'Y', 'Y');
INSERT INTO `q4u_queue` VALUES (5, '0001868', '471110084255', 7, 7, 20, '2019-01-16', '08:42:55', '60003', '', NULL, 'N', NULL, '2019-01-16 14:01:35', '2019-01-16 14:14:41', NULL, 'Y', 'Y');
INSERT INTO `q4u_queue` VALUES (6, '0001740', '480207085758', 7, 7, 21, '2019-01-16', '08:57:58', '60004', '', NULL, 'N', NULL, '2019-01-16 14:09:59', '2019-01-16 14:25:25', NULL, 'N', 'Y');
INSERT INTO `q4u_queue` VALUES (7, '0000321', '481026095235', 7, 8, 20, '2019-01-16', '09:52:35', '60005', '', NULL, 'N', NULL, '2019-01-16 14:19:13', '2019-01-16 14:26:06', NULL, 'Y', 'N');
INSERT INTO `q4u_queue` VALUES (8, '0002228', '481120095550', 7, 6, 20, '2019-01-16', '09:55:50', '60006', '', NULL, 'N', NULL, '2019-01-16 14:19:17', '2019-01-16 14:27:24', NULL, 'N', 'Y');
INSERT INTO `q4u_queue` VALUES (9, '0001425', '490410101946', 7, 7, NULL, '2019-01-16', '10:19:46', '60007', '', NULL, 'N', NULL, '2019-01-16 14:19:22', '2019-01-16 14:19:22', NULL, 'N', 'N');
INSERT INTO `q4u_queue` VALUES (4, '0006223', '500718080002', 6, 6, NULL, '2019-01-16', '08:00:02', '50002', '', NULL, 'N', NULL, '2019-01-16 14:00:57', '2019-01-16 14:00:57', NULL, 'N', 'N');
INSERT INTO `q4u_queue` VALUES (2, '0001752', '501017081813', 7, 7, 21, '2019-01-16', '08:18:13', '00001', '', NULL, 'N', NULL, '2019-01-16 11:52:40', '2019-01-16 11:54:20', NULL, 'Y', 'Y');
INSERT INTO `q4u_queue` VALUES (12, '0000382', '550226100846', 6, 3, NULL, '2019-01-19', '10:08:46', '50001', '7', NULL, 'N', NULL, '2019-01-19 09:23:18', '2019-01-19 09:23:18', NULL, 'N', 'N');
COMMIT;

-- ----------------------------
-- Table structure for q4u_queue_detail
-- ----------------------------
DROP TABLE IF EXISTS `q4u_queue_detail`;
CREATE TABLE `q4u_queue_detail` (
  `service_point_id` int(3) NOT NULL,
  `date_serv` date NOT NULL,
  `last_queue` int(11) DEFAULT NULL,
  `room_id` int(3) NOT NULL,
  `queue_id` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_point_id`,`date_serv`,`room_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_queue_detail
-- ----------------------------
BEGIN;
INSERT INTO `q4u_queue_detail` VALUES (6, '2019-01-16', NULL, 14, 1, '2019-01-16 11:51:13');
INSERT INTO `q4u_queue_detail` VALUES (7, '2019-01-16', NULL, 20, 8, '2019-01-16 14:27:24');
INSERT INTO `q4u_queue_detail` VALUES (7, '2019-01-16', NULL, 21, 6, '2019-01-16 14:25:25');
COMMIT;

-- ----------------------------
-- Table structure for q4u_queue_number
-- ----------------------------
DROP TABLE IF EXISTS `q4u_queue_number`;
CREATE TABLE `q4u_queue_number` (
  `service_point_id` int(3) NOT NULL,
  `date_serv` date NOT NULL,
  `current_queue` int(11) DEFAULT '0',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_point_id`,`date_serv`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_queue_number
-- ----------------------------
BEGIN;
INSERT INTO `q4u_queue_number` VALUES (1, '2019-01-13', 7, '2019-01-13 19:42:00');
INSERT INTO `q4u_queue_number` VALUES (1, '2019-01-14', 4, '2019-01-14 14:47:05');
INSERT INTO `q4u_queue_number` VALUES (1, '2019-01-16', 2, '2019-01-16 09:24:16');
INSERT INTO `q4u_queue_number` VALUES (2, '2019-01-14', 3, '2019-01-14 14:35:52');
INSERT INTO `q4u_queue_number` VALUES (2, '2019-01-15', 2, '2019-01-16 00:40:00');
INSERT INTO `q4u_queue_number` VALUES (3, '2019-01-14', 1, '2019-01-14 14:43:23');
INSERT INTO `q4u_queue_number` VALUES (6, '2019-01-16', 4, '2019-01-16 14:38:51');
INSERT INTO `q4u_queue_number` VALUES (6, '2019-01-19', 1, '2019-01-19 09:23:18');
INSERT INTO `q4u_queue_number` VALUES (7, '2019-01-16', 7, '2019-01-16 14:19:22');
COMMIT;

-- ----------------------------
-- Table structure for q4u_queue_status
-- ----------------------------
DROP TABLE IF EXISTS `q4u_queue_status`;
CREATE TABLE `q4u_queue_status` (
  `queue_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_status_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `queue_status_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`queue_status_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_queue_status
-- ----------------------------
BEGIN;
INSERT INTO `q4u_queue_status` VALUES (1, 'waiting', 'รอตรวจ');
INSERT INTO `q4u_queue_status` VALUES (2, 'cancel', 'ยกเลิการให้บริการ');
INSERT INTO `q4u_queue_status` VALUES (3, 'skip', 'ข้าม(เรียกแล้วไม่มา)');
INSERT INTO `q4u_queue_status` VALUES (4, 'transfer', 'ส่งตรวจต่อ');
INSERT INTO `q4u_queue_status` VALUES (5, 'consult', 'รอกลับมาตรวจให้(เช่นส่ง lab)');
INSERT INTO `q4u_queue_status` VALUES (9, 'serviced', 'ให้บริการเรียบร้อย');
COMMIT;

-- ----------------------------
-- Table structure for q4u_service_point_prefix
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_point_prefix`;
CREATE TABLE `q4u_service_point_prefix` (
  `service_point_id` int(3) NOT NULL COMMENT 'รหัสจุดบริการ',
  `prefix` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'อักษรย่อ(แต่ละแผนก)',
  `service_point_status_id` int(3) DEFAULT '1' COMMENT '0=ไม่ใช้งาน 1=ใช้าน ',
  PRIMARY KEY (`service_point_id`,`prefix`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_service_point_prefix
-- ----------------------------
BEGIN;
INSERT INTO `q4u_service_point_prefix` VALUES (1, 'A', 1);
INSERT INTO `q4u_service_point_prefix` VALUES (2, 'B', 1);
INSERT INTO `q4u_service_point_prefix` VALUES (3, 'C', 1);
INSERT INTO `q4u_service_point_prefix` VALUES (4, 'D', 1);
COMMIT;

-- ----------------------------
-- Table structure for q4u_service_point_status
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_point_status`;
CREATE TABLE `q4u_service_point_status` (
  `service_point_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_point_status_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`service_point_status_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_service_point_status
-- ----------------------------
BEGIN;
INSERT INTO `q4u_service_point_status` VALUES (1, 'active');
INSERT INTO `q4u_service_point_status` VALUES (2, 'pending');
COMMIT;

-- ----------------------------
-- Table structure for q4u_service_point_type
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_point_type`;
CREATE TABLE `q4u_service_point_type` (
  `service_point_type_id` int(3) NOT NULL,
  `service_point_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`service_point_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for q4u_service_points
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_points`;
CREATE TABLE `q4u_service_points` (
  `service_point_id` int(3) NOT NULL AUTO_INCREMENT,
  `service_point_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อจุดบริการ',
  `service_point_abbr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อย่อจุดบริการ',
  `local_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'รหัสที่ใช้ภายในสถานพยาบาล',
  `standard43_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'รหัส clinic ตามมาตรฐาน 43 แฟ้ม',
  `service_point_type_id` int(3) DEFAULT NULL COMMENT 'รหัสประเภทจุดบริการ',
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'publisher ของ mqtt (กรณี h4udb hdc+topic_h4u)',
  `prefix` char(1) DEFAULT NULL,
  `department_id` int(3) DEFAULT NULL COMMENT 'แผนก',
  PRIMARY KEY (`service_point_id`),
  UNIQUE KEY `service_point_un_point_name` (`service_point_name`),
  UNIQUE KEY `idx_topic` (`topic`),
  UNIQUE KEY `idx_prefix` (`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_service_points
-- ----------------------------
BEGIN;
INSERT INTO `q4u_service_points` VALUES (1, 'แผนกทันตกรรม', 'DENT', '40100', NULL, NULL, '2730617698', '1', NULL);
INSERT INTO `q4u_service_points` VALUES (2, 'เวชปฏิบัติทั่วไป', 'HHC', '10100', NULL, NULL, '9707710908', '2', NULL);
INSERT INTO `q4u_service_points` VALUES (3, 'กายภาพบำบัด', 'TMM', '041', NULL, NULL, '4676424790', '3', 4);
INSERT INTO `q4u_service_points` VALUES (4, 'แพทย์แผนไทย', 'TMT', 'E0100', NULL, NULL, '6945080335', '4', NULL);
INSERT INTO `q4u_service_points` VALUES (6, 'ตรวจโรคทั่วไป', 'OPD', '014', NULL, NULL, '3070877541', '5', 8);
INSERT INTO `q4u_service_points` VALUES (7, 'ทันตกรรม', 'DENT', '005', NULL, NULL, '8213968819', '6', 3);
COMMIT;

-- ----------------------------
-- Table structure for q4u_service_points_copy1
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_points_copy1`;
CREATE TABLE `q4u_service_points_copy1` (
  `service_point_id` int(3) NOT NULL AUTO_INCREMENT,
  `service_point_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อจุดบริการ',
  `service_point_abbr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อย่อจุดบริการ',
  `local_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'รหัสที่ใช้ภายในสถานพยาบาล',
  `standard43_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'รหัส clinic ตามมาตรฐาน 43 แฟ้ม',
  `service_point_type_id` int(3) DEFAULT NULL COMMENT 'รหัสประเภทจุดบริการ',
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'publisher ของ mqtt (กรณี h4udb hdc+topic_h4u)',
  `prefix` char(1) DEFAULT NULL,
  PRIMARY KEY (`service_point_id`),
  UNIQUE KEY `service_point_un_point_name` (`service_point_name`),
  UNIQUE KEY `idx_topic` (`topic`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_service_points_copy1
-- ----------------------------
BEGIN;
INSERT INTO `q4u_service_points_copy1` VALUES (1, 'แผนกทันตกรรม', 'DENT', '40100', NULL, NULL, '2730617698', '1');
INSERT INTO `q4u_service_points_copy1` VALUES (2, 'เวชปฏิบัติทั่วไป', 'HHC', '10100', NULL, NULL, '9707710908', '2');
INSERT INTO `q4u_service_points_copy1` VALUES (3, 'กายภาพบำบัด', 'TMM', 'F0100', NULL, NULL, '6605098968', '3');
INSERT INTO `q4u_service_points_copy1` VALUES (4, 'แพทย์แผนไทย', 'TMT', 'E0100', NULL, NULL, '6945080335', '4');
COMMIT;

-- ----------------------------
-- Table structure for q4u_service_rooms
-- ----------------------------
DROP TABLE IF EXISTS `q4u_service_rooms`;
CREATE TABLE `q4u_service_rooms` (
  `service_point_id` int(3) NOT NULL COMMENT 'รหัสจุดบริการ',
  `room_number` int(2) NOT NULL COMMENT 'หมายเลขห้องตรวจ',
  `room_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อห้องตรวจ',
  `room_id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`service_point_id`,`room_number`),
  UNIQUE KEY `service_rooms_un` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of q4u_service_rooms
-- ----------------------------
BEGIN;
INSERT INTO `q4u_service_rooms` VALUES (1, 1, 'ทันตกรรมพิเศษ 1', 2);
INSERT INTO `q4u_service_rooms` VALUES (1, 2, 'ทันตกรรมพิเศษ 2', 4);
INSERT INTO `q4u_service_rooms` VALUES (1, 3, 'ทันตกรรมนอกเวลา', 5);
INSERT INTO `q4u_service_rooms` VALUES (2, 1, 'ห้องตรวจเด็ก 1', 6);
INSERT INTO `q4u_service_rooms` VALUES (2, 2, 'ห้องตรวจเด็ก 2', 7);
INSERT INTO `q4u_service_rooms` VALUES (2, 3, 'ห้องตรวจเด็ก 3', 8);
INSERT INTO `q4u_service_rooms` VALUES (3, 1, 'ห้องตรวจ 1', 16);
INSERT INTO `q4u_service_rooms` VALUES (3, 2, 'ห้องตรวจ 2', 17);
INSERT INTO `q4u_service_rooms` VALUES (4, 1, 'แผนไทย 1', 11);
INSERT INTO `q4u_service_rooms` VALUES (4, 2, 'แผนไทยนอกเวลา', 15);
INSERT INTO `q4u_service_rooms` VALUES (5, 1, 'ห้องตรวจโรค 1 ', 13);
INSERT INTO `q4u_service_rooms` VALUES (6, 1, 'ห้องตรวจ 1', 18);
INSERT INTO `q4u_service_rooms` VALUES (6, 2, 'ห้องตรวจโรค 2', 14);
INSERT INTO `q4u_service_rooms` VALUES (6, 3, 'ห้องตรวจ 3', 19);
INSERT INTO `q4u_service_rooms` VALUES (7, 1, 'ทันตกรรมทั่วไป', 20);
INSERT INTO `q4u_service_rooms` VALUES (7, 2, 'ทันกรรมนอกเวลา', 21);
COMMIT;

-- ----------------------------
-- Table structure for q4u_system
-- ----------------------------
DROP TABLE IF EXISTS `q4u_system`;
CREATE TABLE `q4u_system` (
  `hoscode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`hoscode`),
  UNIQUE KEY `idx_hoscode` (`hoscode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of q4u_system
-- ----------------------------
BEGIN;
INSERT INTO `q4u_system` VALUES ('11053', 'โรงพยาบาลกันทรวิชัย');
COMMIT;

-- ----------------------------
-- Table structure for q4u_tokens
-- ----------------------------
DROP TABLE IF EXISTS `q4u_tokens`;
CREATE TABLE `q4u_tokens` (
  `token` varchar(200) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of q4u_tokens
-- ----------------------------
BEGIN;
INSERT INTO `q4u_tokens` VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3N1ZSI6Img0dSIsImRlc2NyaXB0aW9uIjoiZm9yIGFjY2VzcyBRNFUgYXBpIiwiaWF0IjoxNTQ3NjIzNzcwLCJleHAiOjE1NzkxODEzNzB9.wcyyFQXJuqR8LiMWfBPILIVQrvJeE5AD4oYWjqMtl90', '2019-01-16 14:29:30', '2020-01-16 14:29:30');
COMMIT;

-- ----------------------------
-- Table structure for q4u_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `q4u_user_roles`;
CREATE TABLE `q4u_user_roles` (
  `user_id` int(11) NOT NULL,
  `service_point_id` int(4) NOT NULL,
  `is_active` int(1) DEFAULT '1' COMMENT '0=ยกเลิก 1=ใช้งาน',
  PRIMARY KEY (`user_id`,`service_point_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for q4u_user_service_points
-- ----------------------------
DROP TABLE IF EXISTS `q4u_user_service_points`;
CREATE TABLE `q4u_user_service_points` (
  `user_service_point_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `service_point_id` int(3) NOT NULL,
  PRIMARY KEY (`user_id`,`service_point_id`),
  UNIQUE KEY `use_service_point_id` (`user_service_point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of q4u_user_service_points
-- ----------------------------
BEGIN;
INSERT INTO `q4u_user_service_points` VALUES (10, 2, 2);
INSERT INTO `q4u_user_service_points` VALUES (11, 2, 1);
INSERT INTO `q4u_user_service_points` VALUES (12, 1, 7);
INSERT INTO `q4u_user_service_points` VALUES (13, 1, 6);
COMMIT;

-- ----------------------------
-- Table structure for q4u_users
-- ----------------------------
DROP TABLE IF EXISTS `q4u_users`;
CREATE TABLE `q4u_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` char(1) DEFAULT 'Y',
  `user_type` enum('ADMIN','MEMBER') DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_password` (`password`),
  KEY `idx_is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of q4u_users
-- ----------------------------
BEGIN;
INSERT INTO `q4u_users` VALUES (1, 'สถิตย์ เรียนพิศ', 'satit', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'ADMIN');
INSERT INTO `q4u_users` VALUES (2, 'พิชญาภา เรียนพิศ', 'nurse', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'MEMBER');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
