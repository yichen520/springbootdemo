/*
Navicat MySQL Data Transfer

Source Server         : dhht
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : dhht_seal

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-05-25 17:39:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archives
-- ----------------------------
DROP TABLE IF EXISTS `archives`;
CREATE TABLE `archives` (
  `archives_code` varchar(255) NOT NULL,
  `department_status` varchar(255) NOT NULL,
  `archives_type` varchar(255) NOT NULL,
  `archives_page` varchar(255) NOT NULL,
  `archives_image` varchar(255) NOT NULL,
  `commit_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`archives_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of archives
-- ----------------------------

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_code` varchar(22) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_id` varchar(18) NOT NULL,
  `employee_job` varchar(50) DEFAULT NULL,
  `employee_nation` varchar(50) DEFAULT NULL,
  `family_address` varchar(50) NOT NULL,
  `family_address_detail` varchar(255) NOT NULL,
  `now_address` varchar(50) NOT NULL,
  `now_address_detail` varchar(255) NOT NULL,
  `employee_image` varchar(255) NOT NULL,
  `telphone` varchar(20) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `content_telphone` varchar(20) NOT NULL,
  `office_code` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `register_name` varchar(50) NOT NULL,
  `register_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `logout_office_code` varchar(50) DEFAULT NULL,
  `logout_office_name` varchar(50) DEFAULT NULL,
  `logout_name` varchar(50) DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for employee_punish
-- ----------------------------
DROP TABLE IF EXISTS `employee_punish`;
CREATE TABLE `employee_punish` (
  `makedepartment_code` varchar(18) NOT NULL,
  `punish_employee_code` varchar(22) NOT NULL,
  `punish_employee_name` varchar(50) NOT NULL,
  `punish_employee_id` varchar(18) NOT NULL,
  `punish_detail` varchar(255) DEFAULT NULL,
  `punish_reason` varchar(255) DEFAULT NULL,
  `punish_result` varchar(255) DEFAULT NULL,
  `office_code` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `transaction_name` varchar(50) DEFAULT NULL,
  `punish_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_punish
-- ----------------------------

-- ----------------------------
-- Table structure for makedepartment
-- ----------------------------
DROP TABLE IF EXISTS `makedepartment`;
CREATE TABLE `makedepartment` (
  `makedepartment_code` varchar(18) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_nation_name` varchar(50) DEFAULT NULL,
  `department_english_name` varchar(50) DEFAULT NULL,
  `department_english_ahhr` varchar(50) DEFAULT NULL,
  `seal_makedepartment_status` varchar(2) NOT NULL,
  `legal_name` varchar(50) NOT NULL,
  `legal_id` varchar(18) NOT NULL,
  `legal_id_type` varchar(50) NOT NULL,
  `legal_englishsurname` varchar(50) DEFAULT NULL,
  `legal_englishname` varchar(50) DEFAULT NULL,
  `legal_telphone` varchar(50) DEFAULT NULL,
  `department_address` varchar(50) NOT NULL,
  `department_address_detail` varchar(255) DEFAULT NULL,
  `telphone` varchar(50) NOT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `department_status` varchar(20) NOT NULL,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makedepartment
-- ----------------------------
INSERT INTO `makedepartment` VALUES ('12111111', '测试仪', '11', 'af', 'ss', '·1', '新泽西州', '564', 'fa', 'fa', 'fa1', '1597984df6a4f56a4', '江西', '南昌', '15646746', '333665', '2018-05-24 16:24:58', '2');

-- ----------------------------
-- Table structure for makedepartment_case
-- ----------------------------
DROP TABLE IF EXISTS `makedepartment_case`;
CREATE TABLE `makedepartment_case` (
  `makedepartment_code` varchar(18) NOT NULL,
  `case_code` varchar(50) NOT NULL,
  `case_type_status` varchar(50) DEFAULT NULL,
  `case_character` varchar(255) DEFAULT NULL,
  `case_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `case_detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makedepartment_case
-- ----------------------------

-- ----------------------------
-- Table structure for makedepartment_punish
-- ----------------------------
DROP TABLE IF EXISTS `makedepartment_punish`;
CREATE TABLE `makedepartment_punish` (
  `makedepartment_code` varchar(18) NOT NULL,
  `punish_code` varchar(50) NOT NULL,
  `punish_detail` varchar(50) DEFAULT NULL,
  `punish_reason` varchar(255) DEFAULT NULL,
  `punish_result` varchar(20) DEFAULT NULL,
  `office_code` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `transaction_name` varchar(50) DEFAULT NULL,
  `punish_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makedepartment_punish
-- ----------------------------

-- ----------------------------
-- Table structure for makedepartment_suspicious
-- ----------------------------
DROP TABLE IF EXISTS `makedepartment_suspicious`;
CREATE TABLE `makedepartment_suspicious` (
  `makedepartment_code` varchar(18) NOT NULL,
  `suspicious_type_status` varchar(50) NOT NULL,
  `suspicious_detail` varchar(255) DEFAULT NULL,
  `declare_employee_code` varchar(22) NOT NULL,
  `declare_employee_id` varchar(18) NOT NULL,
  `declare_employee_name` varchar(50) NOT NULL,
  `declare_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `receive_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makedepartment_suspicious
-- ----------------------------

-- ----------------------------
-- Table structure for makedepartment_update
-- ----------------------------
DROP TABLE IF EXISTS `makedepartment_update`;
CREATE TABLE `makedepartment_update` (
  `makedepartment_code` varchar(18) NOT NULL,
  `update_data_item` varchar(50) NOT NULL,
  `update_reason` varchar(255) DEFAULT NULL,
  `update_before_content` varchar(255) DEFAULT NULL,
  `update_after_content` varchar(255) DEFAULT NULL,
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `office_code` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `transaction_name` varchar(50) NOT NULL,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of makedepartment_update
-- ----------------------------

-- ----------------------------
-- Table structure for office_check
-- ----------------------------
DROP TABLE IF EXISTS `office_check`;
CREATE TABLE `office_check` (
  `makedepartment_code` varchar(18) NOT NULL,
  `check_name` varchar(50) NOT NULL,
  `office_code` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `check_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `check_problem` varchar(255) DEFAULT NULL,
  `handle_result` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`makedepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of office_check
-- ----------------------------

-- ----------------------------
-- Table structure for recorddepartment
-- ----------------------------
DROP TABLE IF EXISTS `recorddepartment`;
CREATE TABLE `recorddepartment` (
  `recorddepartment_code` varchar(18) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `principal_name` varchar(50) NOT NULL,
  `principal_id` varchar(18) NOT NULL,
  `department_address` varchar(50) NOT NULL,
  `department_address_detail` varchar(255) DEFAULT NULL,
  `telphone` varchar(50) NOT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`recorddepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recorddepartment
-- ----------------------------

-- ----------------------------
-- Table structure for seal
-- ----------------------------
DROP TABLE IF EXISTS `seal`;
CREATE TABLE `seal` (
  `seal_code` varchar(18) NOT NULL,
  `seal_name` varchar(50) NOT NULL,
  `seal_status` varchar(2) NOT NULL,
  `seal_userdepartment_code` varchar(18) NOT NULL,
  `seal_recorddepartment_code` varchar(18) DEFAULT NULL,
  `seal_makedepartment_code` varchar(18) DEFAULT NULL,
  `seal_type_status` varchar(2) NOT NULL,
  `seal_materials_status` varchar(2) DEFAULT NULL,
  `seal_mimeograph_description` varchar(255) DEFAULT NULL,
  `seal_operator_name` varchar(50) NOT NULL,
  `seal_operator_id` varchar(18) NOT NULL,
  `seal_operator_id_type` varchar(50) NOT NULL,
  `seal_operator_telphone` varchar(20) DEFAULT NULL,
  `seal_recorder_name` varchar(50) DEFAULT NULL,
  `seal_record_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_record_accpect_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_make_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_delivery_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_waste_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_clean_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_loss_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seal_image_width` double DEFAULT NULL,
  `seal_image_height` double DEFAULT NULL,
  `seal_image_compress_status` varchar(50) DEFAULT NULL,
  `seal_image_data` varchar(255) DEFAULT NULL,
  `seal_getter_name` varchar(50) DEFAULT NULL,
  `seal_getter_id` varchar(18) DEFAULT NULL,
  `seal_getter_id_type` varchar(50) DEFAULT NULL,
  `seal_shape` varchar(50) NOT NULL,
  `seal_size` double(50,0) NOT NULL,
  `seal_center_image` varchar(255) NOT NULL,
  `seal_specification` varchar(255) DEFAULT NULL,
  `seal_storage` varchar(255) DEFAULT NULL,
  `seal_maketype_status` varchar(50) DEFAULT NULL,
  `seal_recordtype_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seal_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seal
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for userdepartment
-- ----------------------------
DROP TABLE IF EXISTS `userdepartment`;
CREATE TABLE `userdepartment` (
  `userdepartment_code` varchar(18) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_nation_name` varchar(255) DEFAULT NULL,
  `department_english_name` varchar(255) DEFAULT NULL,
  `department_english_ahhr` varchar(255) DEFAULT NULL,
  `seal_userdepartment_status` varchar(18) NOT NULL,
  `query_password` varchar(50) DEFAULT NULL,
  `legal_name` varchar(50) NOT NULL,
  `legal_id` varchar(18) NOT NULL,
  `legal_id_type` varchar(50) NOT NULL,
  `legal_telphone` varchar(50) DEFAULT NULL,
  `legal_country` varchar(50) NOT NULL,
  `department_address` varchar(50) NOT NULL,
  `department_address_detail` varchar(255) DEFAULT NULL,
  `telphone` varchar(50) NOT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  `department_status` varchar(10) NOT NULL,
  `department_certificate` varchar(255) DEFAULT NULL,
  `department_certificate_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userdepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdepartment
-- ----------------------------

-- ----------------------------
-- Table structure for userdepartment_update
-- ----------------------------
DROP TABLE IF EXISTS `userdepartment_update`;
CREATE TABLE `userdepartment_update` (
  `userdepartment_code` varchar(18) NOT NULL,
  `update_data_item` varchar(50) NOT NULL,
  `update_reason` varchar(255) DEFAULT NULL,
  `update_before_content` varchar(255) DEFAULT NULL,
  `update_after_content` varchar(255) DEFAULT NULL,
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `handler_department` varchar(255) DEFAULT NULL,
  `office_code` varchar(255) NOT NULL,
  `office_name` varchar(255) NOT NULL,
  `transaction_name` varchar(255) NOT NULL,
  PRIMARY KEY (`userdepartment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdepartment_update
-- ----------------------------
