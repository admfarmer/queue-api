-- #2019-04-09
ALTER TABLE `queue`.`q4u_service_points` ADD COLUMN sound_speed decimal(3,2) NULL DEFAULT NULL

-- #2019-04-04

ALTER TABLE `queue`.`q4u_service_points` ADD COLUMN sound_id int(11) NULL DEFAULT NULL COMMENT 'รหัสเสียงเรียก' AFTER `priority_queue_running`;

CREATE TABLE `queue`.`q4u_sounds`  (
  sound_id int(11) NOT NULL AUTO_INCREMENT,
  sound_name varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  sound_file varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sound_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (1, ' ที่ช่องบริการ', 'channel.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (2, 'ที่โต๊ะคัดกรอง', 'screen-table.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (3, 'ที่จุดคัดกรอง', 'screen-point.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (4, 'ที่จุดซักประวัติ', 'interview-point.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (5, 'ที่โต๊ะซักประวัติ', 'interview-table.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (6, 'ที่ช่องการเงิน', 'cashier.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (7, 'ที่ช่องจ่ายเงิน', 'pay-cashier.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (8, 'ที่ห้องจ่ายยา', 'pay-drug.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (9, 'ที่ห้องรับยา', 'receive-drug.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (10, 'ที่โต๊ะ', 'table.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (11, 'ที่เคาเตอร์', 'couter.mp3');
INSERT INTO `queue`.`q4u_sounds`(`sound_id`, `sound_name`, `sound_file`) VALUES (12, 'ที่ห้องตรวจ', 'doctor_room.mp3');