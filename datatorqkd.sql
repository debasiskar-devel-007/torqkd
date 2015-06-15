/*
Navicat MySQL Data Transfer

Source Server         : LocalHost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : datatorqkd

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-02-17 17:54:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addvertise`
-- ----------------------------
DROP TABLE IF EXISTS `addvertise`;
CREATE TABLE `addvertise` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `banner_name` text,
  `isactive` int(2) DEFAULT NULL,
  `priority` bigint(255) DEFAULT NULL,
  `banner_url` text,
  `datetype` int(2) DEFAULT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `image_name` text,
  `page_id` bigint(255) DEFAULT NULL,
  `area_id` bigint(255) DEFAULT NULL,
  `desc` text,
  `pagetype` int(11) DEFAULT NULL,
  `addvertiser` varchar(255) DEFAULT NULL,
  `show_page` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0' COMMENT '0=>Flat Rate;1=>Cost Per Click',
  `rate` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of addvertise
-- ----------------------------
INSERT INTO `addvertise` VALUES ('5', 'The best online ads of 2012 weren’t ads333', '1', '3', 'http://pando.com/2012/12/25/the-best-online-ads-of-2012-werent-ads/', '0', '', '', '1411646646.jpg', '0', '0', '<p>As part of the cookie&rsquo;s 100th birthday, each day from June 25 to October 2, Oreo posted on Facebook one image of an Oreo celebrating the day.</p>\r\n', '0', 'test', '1990', '0', '1.30');
INSERT INTO `addvertise` VALUES ('7', 'The best online ads of 2012 weren’t ads', '1', '1', 'http://pando.com/2012/12/25/the-best-online-ads-of-2012-werent-ads/', '0', '', '', '1411646855.jpg', '0', '0', '<p>As part of the cookie&rsquo;s 100th birthday, each day from June 25 to October 2, Oreo posted on Facebook one image of an Oreo celebrating the day.</p>\r\n', '0', 'test', '1991', '0', '6.32');
INSERT INTO `addvertise` VALUES ('13', 'Hot Air Balloon', '0', '1', 'http://cheapducky.com', '1', '09/30/2014', '10/03/2014', '1412116153.jpg', '0', '0', '', '0', 'test', '0', '0', '5.60');
INSERT INTO `addvertise` VALUES ('14', 'nike', '0', '1', 'http://www.nike.com/in/en_gb/', '1', '10/19/2014', '10/23/2014', '1413884784.jpeg', '0', '0', '<p>http://www.nike.com/in/en_gb/</p>\r\n', '0', 'test', '0', '0', '5.00');
INSERT INTO `addvertise` VALUES ('15', 'http://www.adidas.co.in/', '1', '21', 'http://www.adidas.co.in/', '1', '10/19/2014', '10/19/2015', '1413885526.jpg', '0', '0', '<p>http://www.adidas.co.in/</p>\r\n', '1', 'Adidas', '10810', '1', '1.50');
INSERT INTO `addvertise` VALUES ('18', 'World Snowboard Tour', '1', '1', 'http://www.worldsnowboardtour.com/', '1', '10/21/2014', '10/31/2014', '1413936521.jpg', '0', '0', '<p>Test</p>\r\n', '0', 'World Snowboard Tour', '0', '0', '2.80');
INSERT INTO `addvertise` VALUES ('22', 'Run', '1', '1', 'http://cheapducky.com', '1', '10/28/2014', '11/05/2014', null, '0', '0', '', '0', 'Road - Land Test', '0', '0', '1.20');
INSERT INTO `addvertise` VALUES ('23', 'Riders', '1', '1', 'http://google.com', '1', '10/28/2014', '11/02/2014', null, '0', '0', '', '0', 'BMX Riders ', '0', '0', '1.90');
INSERT INTO `addvertise` VALUES ('24', 'test', '1', '10', 'http://pando.com/2012/12/25/the-best-online-ads-of-2012-werent-ads/', '0', '', '', null, '0', '0', '<p>http://pando.com/2012/12/25/the-best-online-ads-of-2012-werent-ads/</p>\r\n', '0', 'test', '0', '0', '5.66');
INSERT INTO `addvertise` VALUES ('25', 'sdfs', '1', '10', 'http://cheapducky.com', '0', '', '', null, '0', '0', '<p>dfgdf dfgd dfg</p>\r\n', '0', 'World Snowboard Tour', '0', '1', '1.40');
INSERT INTO `addvertise` VALUES ('26', 'dgdf', '1', '33', 'http://cheapducky.com', '0', '', '', null, '0', '0', '<p>http://cheapducky.com</p>\r\n', '0', 'fdfdf', '0', '1', '1.70');
INSERT INTO `addvertise` VALUES ('27', 'new banner', '1', '52', 'http://pando.com/2012/12/25/the-best-online-ads-of-2012-werent-ads/', '0', '', '', null, '0', '0', '<p>zxczx</p>\r\n', '0', 'Road - Land Test', '0', '1', '3.80');

-- ----------------------------
-- Table structure for `addvertisepage`
-- ----------------------------
DROP TABLE IF EXISTS `addvertisepage`;
CREATE TABLE `addvertisepage` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `page_id` bigint(255) DEFAULT NULL,
  `page_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of addvertisepage
-- ----------------------------
INSERT INTO `addvertisepage` VALUES ('1', '1', 'Experience');
INSERT INTO `addvertisepage` VALUES ('2', '2', 'Sports');
INSERT INTO `addvertisepage` VALUES ('3', '3', 'Profile');
INSERT INTO `addvertisepage` VALUES ('4', '4', 'Group');

-- ----------------------------
-- Table structure for `advertisearea`
-- ----------------------------
DROP TABLE IF EXISTS `advertisearea`;
CREATE TABLE `advertisearea` (
  `area_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `area_name` text,
  `height` bigint(255) DEFAULT NULL,
  `width` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertisearea
-- ----------------------------
INSERT INTO `advertisearea` VALUES ('1', 'Right top', '300', '220');
INSERT INTO `advertisearea` VALUES ('2', 'Bottom right up', '101', '356');
INSERT INTO `advertisearea` VALUES ('3', 'Bottom right down', '253', '356');

-- ----------------------------
-- Table structure for `advertise_area_relation`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_area_relation`;
CREATE TABLE `advertise_area_relation` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(255) DEFAULT NULL,
  `area_id` bigint(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_area_relation
-- ----------------------------
INSERT INTO `advertise_area_relation` VALUES ('55', '18', '3', '1414483353.jpg');
INSERT INTO `advertise_area_relation` VALUES ('60', '15', '1', '1414484720.jpg');
INSERT INTO `advertise_area_relation` VALUES ('61', '15', '2', '1414484743.jpg');
INSERT INTO `advertise_area_relation` VALUES ('62', '15', '3', '1414484772.jpg');
INSERT INTO `advertise_area_relation` VALUES ('77', '23', '1', '1414638212.jpg');
INSERT INTO `advertise_area_relation` VALUES ('78', '23', '2', '1414638242.jpg');
INSERT INTO `advertise_area_relation` VALUES ('79', '23', '3', '1414638279.jpg');
INSERT INTO `advertise_area_relation` VALUES ('86', '5', '2', '1414485457.jpg');
INSERT INTO `advertise_area_relation` VALUES ('87', '7', '2', '1414485275.jpg');
INSERT INTO `advertise_area_relation` VALUES ('88', '13', '1', '1414485037.jpg');
INSERT INTO `advertise_area_relation` VALUES ('89', '14', '1', '1414484872.jpg');
INSERT INTO `advertise_area_relation` VALUES ('90', '14', '2', '1414484912.jpg');
INSERT INTO `advertise_area_relation` VALUES ('91', '14', '3', '1414484957.jpg');
INSERT INTO `advertise_area_relation` VALUES ('92', '22', '3', '1414511066.jpg');
INSERT INTO `advertise_area_relation` VALUES ('99', '25', '3', '1423721130.jpg');
INSERT INTO `advertise_area_relation` VALUES ('100', '26', '1', '1423723565.jpg');
INSERT INTO `advertise_area_relation` VALUES ('101', '27', '1', '1423737948.jpg');
INSERT INTO `advertise_area_relation` VALUES ('102', '24', '1', '1423720718.jpg');
INSERT INTO `advertise_area_relation` VALUES ('103', '24', '2', '1423720742.jpg');
INSERT INTO `advertise_area_relation` VALUES ('104', '24', '3', '1423720775.jpg');

-- ----------------------------
-- Table structure for `advertise_click`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_click`;
CREATE TABLE `advertise_click` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  `sports_id` int(11) DEFAULT '0',
  `time` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_click
-- ----------------------------
INSERT INTO `advertise_click` VALUES ('1', '60', '3', '15', '0', '1415901809', null, '1');
INSERT INTO `advertise_click` VALUES ('2', '60', '1', '5', '0', '1415171851', null, '2');
INSERT INTO `advertise_click` VALUES ('3', '60', '1', '15', '0', '1415991865', null, '3');
INSERT INTO `advertise_click` VALUES ('4', '60', '1', '7', '0', '1415991869', null, '1');
INSERT INTO `advertise_click` VALUES ('5', '60', '1', '7', '0', '1415171870', null, '2');
INSERT INTO `advertise_click` VALUES ('6', '60', '1', '15', '0', '1415801877', null, '3');
INSERT INTO `advertise_click` VALUES ('7', '85', '1', '15', '0', '1415701917', null, '1');
INSERT INTO `advertise_click` VALUES ('8', '60', '1', '5', '0', '1415172043', null, '2');
INSERT INTO `advertise_click` VALUES ('9', '60', '1', '5', '0', '1415172093', null, '3');
INSERT INTO `advertise_click` VALUES ('10', '60', '1', '5', '0', '1415172157', null, '1');
INSERT INTO `advertise_click` VALUES ('11', '60', '1', '7', '0', '1415172170', null, '2');
INSERT INTO `advertise_click` VALUES ('12', '60', '1', '7', '0', '1415172283', null, '3');
INSERT INTO `advertise_click` VALUES ('13', '60', '1', '15', '0', '1415602289', null, '1');
INSERT INTO `advertise_click` VALUES ('14', '60', '1', '5', '0', '1415172297', null, '2');
INSERT INTO `advertise_click` VALUES ('15', '60', '1', '15', '0', '1415502154', null, '3');
INSERT INTO `advertise_click` VALUES ('16', '60', '4', '15', '0', '1415182305', null, '1');
INSERT INTO `advertise_click` VALUES ('17', '60', '1', '15', '0', '1415184574', null, '2');
INSERT INTO `advertise_click` VALUES ('18', '60', '2', '15', '15', '1415185508', null, '3');
INSERT INTO `advertise_click` VALUES ('19', '60', '2', '15', '47', '1415185559', null, '1');
INSERT INTO `advertise_click` VALUES ('20', '60', '2', '15', '52', '1415185910', null, '2');
INSERT INTO `advertise_click` VALUES ('21', '60', '3', '15', '0', '1416391003', null, '3');
INSERT INTO `advertise_click` VALUES ('22', '60', '3', '15', '0', '1416391010', null, '1');
INSERT INTO `advertise_click` VALUES ('23', '60', '3', '15', '0', '1416391015', null, '2');
INSERT INTO `advertise_click` VALUES ('24', '60', '3', '15', '0', '1416391020', null, '3');
INSERT INTO `advertise_click` VALUES ('25', '60', '3', '15', '0', '1416393797', null, '1');
INSERT INTO `advertise_click` VALUES ('26', '60', '3', '15', '0', '1417438020', null, '2');
INSERT INTO `advertise_click` VALUES ('27', '60', '3', '15', '0', '1417438021', null, '3');
INSERT INTO `advertise_click` VALUES ('28', '85', '3', '15', '0', '1418121248', null, '1');
INSERT INTO `advertise_click` VALUES ('29', '85', '3', '15', '0', '1418121251', null, '2');
INSERT INTO `advertise_click` VALUES ('30', '85', '3', '15', '0', '1418121253', null, '3');
INSERT INTO `advertise_click` VALUES ('31', '85', '3', '5', '0', '1418121254', null, '1');
INSERT INTO `advertise_click` VALUES ('32', '85', '3', '15', '0', '1418121256', null, '2');
INSERT INTO `advertise_click` VALUES ('33', '85', '3', '15', '0', '1418121258', null, '3');
INSERT INTO `advertise_click` VALUES ('34', '85', '3', '5', '0', '1418121260', null, '1');
INSERT INTO `advertise_click` VALUES ('35', '85', '3', '5', '0', '1418121262', null, '2');
INSERT INTO `advertise_click` VALUES ('36', '85', '3', '15', '0', '1418121265', null, '3');
INSERT INTO `advertise_click` VALUES ('37', '85', '3', '15', '0', '1418121266', null, '1');
INSERT INTO `advertise_click` VALUES ('38', '85', '3', '5', '0', '1418121268', null, '2');
INSERT INTO `advertise_click` VALUES ('39', '85', '3', '15', '0', '1418121270', null, '3');
INSERT INTO `advertise_click` VALUES ('40', '85', '3', '15', '0', '1418121271', null, '1');
INSERT INTO `advertise_click` VALUES ('41', '85', '3', '5', '0', '1418121273', null, '2');
INSERT INTO `advertise_click` VALUES ('42', '85', '3', '15', '0', '1418121275', null, '3');
INSERT INTO `advertise_click` VALUES ('43', '85', '3', '15', '0', '1418121276', null, '1');
INSERT INTO `advertise_click` VALUES ('44', '85', '3', '15', '0', '1418121278', null, '2');
INSERT INTO `advertise_click` VALUES ('45', '85', '3', '5', '0', '1418121280', null, '3');
INSERT INTO `advertise_click` VALUES ('46', '85', '3', '15', '0', '1418121281', null, '1');
INSERT INTO `advertise_click` VALUES ('47', '85', '3', '15', '0', '1418121283', null, '2');
INSERT INTO `advertise_click` VALUES ('48', '85', '3', '15', '0', '1418121285', null, '3');
INSERT INTO `advertise_click` VALUES ('49', '85', '3', '15', '0', '1418121286', null, '1');
INSERT INTO `advertise_click` VALUES ('50', '60', '3', '15', '0', '1418278814', null, '2');
INSERT INTO `advertise_click` VALUES ('51', '60', '3', '15', '0', '1418623278', null, '3');
INSERT INTO `advertise_click` VALUES ('52', '60', '3', '15', '0', '1418969695', null, '1');
INSERT INTO `advertise_click` VALUES ('73', '60', '3', '15', '0', '1419323572', '192.168.0.131', '1');
INSERT INTO `advertise_click` VALUES ('74', '60', '3', '15', '0', '1419328029', '192.168.0.131', '2');
INSERT INTO `advertise_click` VALUES ('75', '60', '1', '15', '0', '1419328204', '127.0.0.1', '3');
INSERT INTO `advertise_click` VALUES ('76', '60', '1', '15', '0', '1419328358', '192.168.0.130', '1');
INSERT INTO `advertise_click` VALUES ('77', '60', '1', '7', '0', '1419328414', '192.168.0.130', '2');
INSERT INTO `advertise_click` VALUES ('78', '60', '1', '5', '0', '1419328607', '192.168.0.130', '3');
INSERT INTO `advertise_click` VALUES ('79', '60', '1', '5', '0', '1419415379', '192.168.0.131', '1');
INSERT INTO `advertise_click` VALUES ('80', '60', '2', '15', '47', '1419850183', null, '2');
INSERT INTO `advertise_click` VALUES ('81', '60', '1', '15', '0', '1420094324', '192.168.0.135', '3');
INSERT INTO `advertise_click` VALUES ('82', '60', '3', '15', '0', '1420724039', '192.168.0.20', '1');
INSERT INTO `advertise_click` VALUES ('83', '60', '1', '5', '0', '1421242395', '192.168.0.48', '2');
INSERT INTO `advertise_click` VALUES ('84', '75', '3', '15', '0', '1422943149', '192.168.0.131', '3');
INSERT INTO `advertise_click` VALUES ('87', '75', '3', '15', '0', '1423735967', '192.168.0.131', '2');
INSERT INTO `advertise_click` VALUES ('88', '99', '3', '15', '0', '1423736122', '::1', '3');
INSERT INTO `advertise_click` VALUES ('89', '60', '3', '15', '0', '1423736247', '::1', '3');

-- ----------------------------
-- Table structure for `advertise_page_relation`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_page_relation`;
CREATE TABLE `advertise_page_relation` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `page_id` bigint(255) DEFAULT NULL,
  `advertise_id` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_page_relation
-- ----------------------------
INSERT INTO `advertise_page_relation` VALUES ('1', '1', '2');
INSERT INTO `advertise_page_relation` VALUES ('2', '2', '2');
INSERT INTO `advertise_page_relation` VALUES ('3', '3', '2');
INSERT INTO `advertise_page_relation` VALUES ('4', '1', '3');
INSERT INTO `advertise_page_relation` VALUES ('5', '2', '3');
INSERT INTO `advertise_page_relation` VALUES ('32', '2', '18');
INSERT INTO `advertise_page_relation` VALUES ('45', '2', '23');
INSERT INTO `advertise_page_relation` VALUES ('49', '1', '5');
INSERT INTO `advertise_page_relation` VALUES ('50', '1', '7');
INSERT INTO `advertise_page_relation` VALUES ('51', '1', '14');
INSERT INTO `advertise_page_relation` VALUES ('52', '2', '14');
INSERT INTO `advertise_page_relation` VALUES ('53', '2', '22');
INSERT INTO `advertise_page_relation` VALUES ('54', '3', '23');
INSERT INTO `advertise_page_relation` VALUES ('55', '4', '23');
INSERT INTO `advertise_page_relation` VALUES ('56', '4', '23');

-- ----------------------------
-- Table structure for `advertise_payment`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_payment`;
CREATE TABLE `advertise_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_payment
-- ----------------------------
INSERT INTO `advertise_payment` VALUES ('1', '5', '12/17/2014', '01/09/2015', '184.25', '1');
INSERT INTO `advertise_payment` VALUES ('2', '7', '12/24/2014', '01/02/2015', '155.32', '1');
INSERT INTO `advertise_payment` VALUES ('3', '5', '12/29/2014', '01/10/2015', '32.25', '1');

-- ----------------------------
-- Table structure for `advertise_sports_relation`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_sports_relation`;
CREATE TABLE `advertise_sports_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sports_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_sports_relation
-- ----------------------------
INSERT INTO `advertise_sports_relation` VALUES ('11', '5', '5');
INSERT INTO `advertise_sports_relation` VALUES ('12', '12', '5');
INSERT INTO `advertise_sports_relation` VALUES ('13', '57', '5');
INSERT INTO `advertise_sports_relation` VALUES ('14', '58', '5');
INSERT INTO `advertise_sports_relation` VALUES ('15', '59', '5');
INSERT INTO `advertise_sports_relation` VALUES ('16', '5', '7');
INSERT INTO `advertise_sports_relation` VALUES ('17', '12', '7');
INSERT INTO `advertise_sports_relation` VALUES ('18', '57', '7');
INSERT INTO `advertise_sports_relation` VALUES ('19', '58', '7');
INSERT INTO `advertise_sports_relation` VALUES ('20', '59', '7');
INSERT INTO `advertise_sports_relation` VALUES ('21', '81', '13');
INSERT INTO `advertise_sports_relation` VALUES ('22', '82', '13');
INSERT INTO `advertise_sports_relation` VALUES ('23', '20', '13');
INSERT INTO `advertise_sports_relation` VALUES ('24', '13', '13');
INSERT INTO `advertise_sports_relation` VALUES ('25', '14', '13');
INSERT INTO `advertise_sports_relation` VALUES ('26', '48', '13');
INSERT INTO `advertise_sports_relation` VALUES ('27', '15', '14');
INSERT INTO `advertise_sports_relation` VALUES ('28', '16', '14');
INSERT INTO `advertise_sports_relation` VALUES ('29', '17', '14');
INSERT INTO `advertise_sports_relation` VALUES ('30', '70', '14');
INSERT INTO `advertise_sports_relation` VALUES ('31', '47', '22');
INSERT INTO `advertise_sports_relation` VALUES ('32', '52', '22');
INSERT INTO `advertise_sports_relation` VALUES ('33', '53', '22');
INSERT INTO `advertise_sports_relation` VALUES ('34', '55', '22');
INSERT INTO `advertise_sports_relation` VALUES ('35', '56', '22');
INSERT INTO `advertise_sports_relation` VALUES ('36', '63', '23');
INSERT INTO `advertise_sports_relation` VALUES ('37', '60', '23');
INSERT INTO `advertise_sports_relation` VALUES ('38', '53', '23');
INSERT INTO `advertise_sports_relation` VALUES ('52', '5', '25');
INSERT INTO `advertise_sports_relation` VALUES ('53', '12', '25');
INSERT INTO `advertise_sports_relation` VALUES ('54', '57', '25');
INSERT INTO `advertise_sports_relation` VALUES ('55', '5', '26');
INSERT INTO `advertise_sports_relation` VALUES ('56', '12', '26');
INSERT INTO `advertise_sports_relation` VALUES ('57', '57', '26');
INSERT INTO `advertise_sports_relation` VALUES ('58', '4', '27');
INSERT INTO `advertise_sports_relation` VALUES ('59', '5', '27');
INSERT INTO `advertise_sports_relation` VALUES ('60', '12', '27');
INSERT INTO `advertise_sports_relation` VALUES ('61', '57', '27');
INSERT INTO `advertise_sports_relation` VALUES ('62', '4', '24');
INSERT INTO `advertise_sports_relation` VALUES ('63', '5', '24');
INSERT INTO `advertise_sports_relation` VALUES ('64', '12', '24');
INSERT INTO `advertise_sports_relation` VALUES ('65', '57', '24');

-- ----------------------------
-- Table structure for `advertise_sport_page_relation`
-- ----------------------------
DROP TABLE IF EXISTS `advertise_sport_page_relation`;
CREATE TABLE `advertise_sport_page_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sports_id` int(11) DEFAULT NULL,
  `adv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of advertise_sport_page_relation
-- ----------------------------
INSERT INTO `advertise_sport_page_relation` VALUES ('6', '2', '23');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `banner_img` text,
  `start_date` varchar(30) DEFAULT NULL,
  `end_date` varchar(30) DEFAULT NULL,
  `isactive` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('2', '1403590878.jpg', '06/17/2014', '10/31/2014', '1');
INSERT INTO `banner` VALUES ('3', '1406198845.png', '06/01/2014', '06/03/2014', '1');

-- ----------------------------
-- Table structure for `catagory`
-- ----------------------------
DROP TABLE IF EXISTS `catagory`;
CREATE TABLE `catagory` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `categorydesc` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL,
  `parentcategoryid` bigint(255) NOT NULL,
  `isactive` int(2) DEFAULT '0',
  `isfeatured` int(2) NOT NULL DEFAULT '0',
  `createdon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of catagory
-- ----------------------------

-- ----------------------------
-- Table structure for `chat_group`
-- ----------------------------
DROP TABLE IF EXISTS `chat_group`;
CREATE TABLE `chat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_list` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chat_group
-- ----------------------------
INSERT INTO `chat_group` VALUES ('1', '60,84,85', null);

-- ----------------------------
-- Table structure for `chat_history`
-- ----------------------------
DROP TABLE IF EXISTS `chat_history`;
CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text,
  `time` bigint(20) DEFAULT NULL,
  `is_read` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chat_history
-- ----------------------------
INSERT INTO `chat_history` VALUES ('378', '60', '84', 'sdfsd sdfs sdf sd s\n', '1418126117', '1418126296');
INSERT INTO `chat_history` VALUES ('379', '85', '60', 'ertreer er\n', '1418126235', '1418186205');
INSERT INTO `chat_history` VALUES ('380', '84', '60', 'sdfs sds\n', '1418126297', '1418127881');
INSERT INTO `chat_history` VALUES ('381', '60', '84', 'hi\n', '1418127887', '1418128193');
INSERT INTO `chat_history` VALUES ('382', '60', '84', 'hi\n', '1418127909', '1418128193');
INSERT INTO `chat_history` VALUES ('383', '84', '60', 'ghj\n', '1418128203', '1418128445');
INSERT INTO `chat_history` VALUES ('384', '60', '84', '123\n', '1418128451', '1418129729');
INSERT INTO `chat_history` VALUES ('385', '85', '84', '123\n', '1418128457', '1418129547');
INSERT INTO `chat_history` VALUES ('386', '60', '84', '2\n3', '1418129261', '1418129729');
INSERT INTO `chat_history` VALUES ('387', '60', '84', '2541\n', '1418129264', '1418129729');
INSERT INTO `chat_history` VALUES ('388', '84', '60', '513\n', '1418129727', '1418129730');
INSERT INTO `chat_history` VALUES ('389', '60', '84', '1434\n', '1418129739', '1418129772');
INSERT INTO `chat_history` VALUES ('390', '60', '85', ':))', '1418186196', '1418195659');
INSERT INTO `chat_history` VALUES ('391', '60', '85', 'eflr[gpprgbptkbopktrbotkrbootrkboktrkbotrkbokortkboktrbkortkboktrkbortkboktrkbokrtbkotkbopktroprtb\n', '1418187090', '1418195659');
INSERT INTO `chat_history` VALUES ('392', '60', '85', ' gr \'b g[tlbp[ rpblp  grlpblpl rlblp rlbpl grlbl \n', '1418187105', '1418195659');
INSERT INTO `chat_history` VALUES ('393', '60', '85', 'lp[gpt[  kbkopfk  kopbkorbk  koplkroepkopgb kkopgkopre opjpojr kopjkopjg opjopjg ojopjopjg ojopjopiu joiujhi \n', '1418187124', '1418195659');
INSERT INTO `chat_history` VALUES ('394', '60', '85', '=((', '1418189417', '1418195659');
INSERT INTO `chat_history` VALUES ('395', '60', '85', '=((', '1418189743', '1418195659');
INSERT INTO `chat_history` VALUES ('396', '60', '85', ':D', '1418189750', '1418195659');
INSERT INTO `chat_history` VALUES ('397', '60', '85', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnpooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo\n', '1418189771', '1418195659');
INSERT INTO `chat_history` VALUES ('398', '60', '85', '111111111111111111111111111111111111112222222222222222222222222223333333333333333333333333333333333344444444444444444444444444444455555555555555555555555555555555555556666666666666666666666666666666666666666677777777777777777777777777777777777777777777788888888888888888888888888888888888888888888888899999999999999999999999999999999999999999999999999990000000000000000000000000000000000000000000000000000\n', '1418190064', '1418195659');
INSERT INTO `chat_history` VALUES ('399', '60', '85', '>:)', '1418190070', '1418195659');
INSERT INTO `chat_history` VALUES ('400', '60', '85', ':))', '1418190073', '1418195659');
INSERT INTO `chat_history` VALUES ('401', '60', '85', '=((', '1418190078', '1418195659');
INSERT INTO `chat_history` VALUES ('402', '60', '85', '=((', '1418195334', '1418195659');
INSERT INTO `chat_history` VALUES ('403', '60', '85', ':>', '1418195351', '1418195659');
INSERT INTO `chat_history` VALUES ('404', '85', '60', 'hi\n', '1418195661', '1418195685');
INSERT INTO `chat_history` VALUES ('405', '60', '85', ':))', '1418195991', '1418196721');
INSERT INTO `chat_history` VALUES ('406', '60', '85', ':((', '1418196025', '1418196721');
INSERT INTO `chat_history` VALUES ('407', '60', '85', 'fd fg dfg dfg dfgdfg dfg dfg dfg dfg ddfg dfg dfgfd dfg dfg dfgdf gdfg dfg dfgd gdfg \n', '1418196326', '1418196721');
INSERT INTO `chat_history` VALUES ('408', '60', '85', 'dfg\n', '1418196330', '1418196721');
INSERT INTO `chat_history` VALUES ('409', '60', '85', 'dfg\n', '1418196333', '1418196721');
INSERT INTO `chat_history` VALUES ('410', '60', '85', 'd gdf dfg\n', '1418196334', '1418196721');
INSERT INTO `chat_history` VALUES ('411', '60', '85', 'df\ng', '1418196334', '1418196721');
INSERT INTO `chat_history` VALUES ('412', '60', '85', 'dfg\n', '1418196334', '1418196721');
INSERT INTO `chat_history` VALUES ('413', '60', '85', 'dfg\n', '1418196340', '1418196721');
INSERT INTO `chat_history` VALUES ('414', '60', '85', 'dfg\n', '1418196341', '1418196721');
INSERT INTO `chat_history` VALUES ('415', '60', '85', 'dfg\n', '1418196341', '1418196721');
INSERT INTO `chat_history` VALUES ('416', '60', '85', 'g\n', '1418196342', '1418196721');
INSERT INTO `chat_history` VALUES ('417', '60', '85', 'gf\n', '1418196346', '1418196721');
INSERT INTO `chat_history` VALUES ('418', '60', '85', 'dfgdfg\n', '1418196349', '1418196721');
INSERT INTO `chat_history` VALUES ('419', '60', '85', 'g\ndf', '1418196350', '1418196721');
INSERT INTO `chat_history` VALUES ('420', '60', '85', 'g\n', '1418196351', '1418196721');
INSERT INTO `chat_history` VALUES ('421', '60', '85', 'dfg\n', '1418196352', '1418196721');
INSERT INTO `chat_history` VALUES ('422', '60', '85', 'dfg\n', '1418196353', '1418196721');
INSERT INTO `chat_history` VALUES ('423', '60', '85', 'dfg\nd', '1418196354', '1418196721');
INSERT INTO `chat_history` VALUES ('424', '60', '85', 'fg\nd', '1418196357', '1418196721');
INSERT INTO `chat_history` VALUES ('425', '60', '85', 'fg\nd', '1418196358', '1418196721');
INSERT INTO `chat_history` VALUES ('426', '60', '85', 'fg\nd', '1418196358', '1418196721');
INSERT INTO `chat_history` VALUES ('427', '60', '85', 'dfg\n', '1418196359', '1418196721');
INSERT INTO `chat_history` VALUES ('428', '60', '85', 'fg\nd', '1418196359', '1418196721');
INSERT INTO `chat_history` VALUES ('429', '60', '85', 'fg\n', '1418196360', '1418196721');
INSERT INTO `chat_history` VALUES ('430', '60', '85', 'dfg\n', '1418196362', '1418196721');
INSERT INTO `chat_history` VALUES ('431', '60', '85', 'dfg\nf', '1418196362', '1418196721');
INSERT INTO `chat_history` VALUES ('432', '60', '85', 'g\nfd', '1418196363', '1418196721');
INSERT INTO `chat_history` VALUES ('433', '60', '85', 'g\ndf', '1418196364', '1418196721');
INSERT INTO `chat_history` VALUES ('434', '60', '85', 'g\ndf', '1418196364', '1418196721');
INSERT INTO `chat_history` VALUES ('435', '60', '85', 'g\ndf', '1418196367', '1418196721');
INSERT INTO `chat_history` VALUES ('436', '60', '85', 'g\n', '1418196371', '1418196721');
INSERT INTO `chat_history` VALUES ('437', '60', '85', 'dfg\n', '1418196371', '1418196721');
INSERT INTO `chat_history` VALUES ('438', '60', '85', 'dfg\n', '1418196371', '1418196721');
INSERT INTO `chat_history` VALUES ('439', '60', '85', 'dfg\n', '1418196376', '1418196721');
INSERT INTO `chat_history` VALUES ('440', '60', '85', 'dfg\n', '1418196377', '1418196721');
INSERT INTO `chat_history` VALUES ('441', '60', '85', 'dfg\n', '1418196378', '1418196721');
INSERT INTO `chat_history` VALUES ('442', '60', '85', 'dfg\n', '1418196378', '1418196721');
INSERT INTO `chat_history` VALUES ('443', '60', '85', 'dfg\n', '1418196378', '1418196721');
INSERT INTO `chat_history` VALUES ('444', '60', '85', 'dfg\n', '1418196378', '1418196721');
INSERT INTO `chat_history` VALUES ('445', '60', '85', 'fd\ng', '1418196381', '1418196721');
INSERT INTO `chat_history` VALUES ('446', '60', '85', 'g\nd', '1418196381', '1418196721');
INSERT INTO `chat_history` VALUES ('447', '60', '85', 'fd\ndf', '1418196382', '1418196721');
INSERT INTO `chat_history` VALUES ('448', '60', '85', 'fg\nd', '1418196382', '1418196721');
INSERT INTO `chat_history` VALUES ('449', '60', '85', 'fg\nd', '1418196382', '1418196721');
INSERT INTO `chat_history` VALUES ('450', '60', '85', 'fg\n', '1418196383', '1418196721');
INSERT INTO `chat_history` VALUES ('451', '60', '85', 'dfg\nd', '1418196385', '1418196721');
INSERT INTO `chat_history` VALUES ('452', '60', '85', 'dfg\n', '1418196386', '1418196721');
INSERT INTO `chat_history` VALUES ('453', '60', '85', 'fgdfgdf dfg \ng', '1418196386', '1418196721');
INSERT INTO `chat_history` VALUES ('454', '60', '85', 'dfg\n', '1418196387', '1418196721');
INSERT INTO `chat_history` VALUES ('455', '60', '85', 'dfg\n', '1418196387', '1418196721');
INSERT INTO `chat_history` VALUES ('456', '60', '85', 'gf\ndf', '1418196388', '1418196721');
INSERT INTO `chat_history` VALUES ('457', '60', '85', 'g\n', '1418196390', '1418196721');
INSERT INTO `chat_history` VALUES ('458', '60', '85', 'fg\n', '1418196391', '1418196721');
INSERT INTO `chat_history` VALUES ('459', '60', '85', 'dfg\nd', '1418196391', '1418196721');
INSERT INTO `chat_history` VALUES ('460', '60', '85', 'dfg\n', '1418196392', '1418196721');
INSERT INTO `chat_history` VALUES ('461', '60', '85', 'dfg\n', '1418196393', '1418196721');
INSERT INTO `chat_history` VALUES ('462', '60', '85', 'dfg\n', '1418196393', '1418196721');
INSERT INTO `chat_history` VALUES ('463', '60', '85', 'dfg\n', '1418196396', '1418196721');
INSERT INTO `chat_history` VALUES ('464', '60', '85', 'dfg\n', '1418196396', '1418196721');
INSERT INTO `chat_history` VALUES ('465', '60', '85', 'dfg\n', '1418196397', '1418196721');
INSERT INTO `chat_history` VALUES ('466', '60', '85', 'fg\n', '1418196398', '1418196721');
INSERT INTO `chat_history` VALUES ('467', '60', '85', 'dfg\n', '1418196398', '1418196721');
INSERT INTO `chat_history` VALUES ('468', '60', '85', 'dfg\n', '1418196398', '1418196721');
INSERT INTO `chat_history` VALUES ('469', '60', '85', 'fg\n', '1418196400', '1418196721');
INSERT INTO `chat_history` VALUES ('470', '85', '60', 'zzz\n', '1418196724', '1418197150');
INSERT INTO `chat_history` VALUES ('471', '60', '85', 'dfgdf dsfsd\n', '1418197155', '1418197452');
INSERT INTO `chat_history` VALUES ('472', '60', '85', 'sdfsd sdfs\n', '1418197176', '1418197452');
INSERT INTO `chat_history` VALUES ('473', '60', '85', 'ghds dsfd sdsf dsds dsfvds dssdf dfs dsf\n', '1418198519', '1418198557');
INSERT INTO `chat_history` VALUES ('474', '60', '85', 'fbdsbdsbh   dsfvds dsjhf dsfds fdsf dsf dsr ter re ret retre\n', '1418198535', '1418198557');
INSERT INTO `chat_history` VALUES ('475', '60', '85', ':P', '1418198544', '1418198557');
INSERT INTO `chat_history` VALUES ('476', '85', '60', 'trehjerb retnre ret ert retre tre tre  rete rret er  tre ret ret retretre\n', '1418198565', '1418198708');
INSERT INTO `chat_history` VALUES ('477', '60', '85', 'dsczfdsfs\n', '1418198703', '1418198708');
INSERT INTO `chat_history` VALUES ('478', '85', '60', 'dfs\n', '1418198755', '1418198895');
INSERT INTO `chat_history` VALUES ('479', '60', '85', '54312\n', '1418199088', '1418199191');
INSERT INTO `chat_history` VALUES ('480', '85', '60', '4513\n', '1418199186', '1418199190');
INSERT INTO `chat_history` VALUES ('481', '60', '85', 'sdfd\n', '1418199299', '1418202997');
INSERT INTO `chat_history` VALUES ('482', '85', '60', 'dsfs dsf\n', '1418204856', '1418204896');
INSERT INTO `chat_history` VALUES ('483', '85', '60', 'ghjg\n', '1418205402', '1418205533');
INSERT INTO `chat_history` VALUES ('484', '60', '85', '=((', '1418205940', '1418206206');
INSERT INTO `chat_history` VALUES ('485', '85', '60', ':>', '1418206333', '1418207782');
INSERT INTO `chat_history` VALUES ('486', '85', '60', ':*', '1418206339', '1418207782');
INSERT INTO `chat_history` VALUES ('487', '60', '85', ':((', '1418211624', '1418213709');
INSERT INTO `chat_history` VALUES ('488', '60', '85', ':((', '1418211627', '1418213709');
INSERT INTO `chat_history` VALUES ('489', '60', '85', ':((', '1418211627', '1418213709');
INSERT INTO `chat_history` VALUES ('490', '60', '85', ':>', '1418211635', '1418213709');
INSERT INTO `chat_history` VALUES ('491', '85', '60', 'fdxcvg dsfs dsf sdf\n', '1418213713', '1418213749');
INSERT INTO `chat_history` VALUES ('492', '85', '60', 'sfse sdfds sdfs sdf\n', '1418214129', '1418214257');
INSERT INTO `chat_history` VALUES ('493', '85', '60', 'dfgd dfg dfg\n', '1418214260', '1418380574');
INSERT INTO `chat_history` VALUES ('494', '60', '80', 'cxvb xdcfv\n', '1418989496', '0');
INSERT INTO `chat_history` VALUES ('495', '60', '85', 'dfg dfg dfg\n', '1419224236', '0');
INSERT INTO `chat_history` VALUES ('496', '60', '85', ':)\n', '1419224241', '0');
INSERT INTO `chat_history` VALUES ('497', '60', '85', ':D\n', '1419224246', '0');

-- ----------------------------
-- Table structure for `chat_turn_off_list`
-- ----------------------------
DROP TABLE IF EXISTS `chat_turn_off_list`;
CREATE TABLE `chat_turn_off_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `turnoff_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chat_turn_off_list
-- ----------------------------
INSERT INTO `chat_turn_off_list` VALUES ('5', '60', '74');

-- ----------------------------
-- Table structure for `condition_policy`
-- ----------------------------
DROP TABLE IF EXISTS `condition_policy`;
CREATE TABLE `condition_policy` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `terms` text NOT NULL,
  `policy` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of condition_policy
-- ----------------------------
INSERT INTO `condition_policy` VALUES ('1', '<p align=\"center\" style=\"font-size: 20px; color: #C97413; text-align: center;\">&nbsp;</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>1.INTRODUCTION</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.&nbsp; Acceptance of Terms of Service</strong><br />\r\nWelcome to Torqkd (a.k.a. &quot;we&quot; or &quot;us&quot; or the &quot;Company&quot;), we are excited to have you as a user.&nbsp; The following terms and conditions, together with the Privacy Policy which is set forth below, apply to your use of <a href=\"http://www.Torqkd.com\">www.Torqkd.com</a> (the &ldquo;<em>Site&rdquo;)</em>, including any content, functionality and goods or services offered on or through the <em>Site</em>.&nbsp; We want to keep our relationship with you as lean and informal as possible, but please read the Terms and Conditions carefully before you start to use the <em>Site</em>.&nbsp; By using the <em>Site</em> you accept and agree to be bound by these Terms and Conditions.&nbsp;</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp; These Terms and Conditions apply to the <em>Site</em>, as well as any other affiliated <em>Site</em>s, digital services, or applications on which a link to these Terms and Conditions appears<em>.</em> As used herein, <em>Torqkd </em>refers to Red Balloon Enterprises, Inc., doing business as Torqkd.com<em>.</em></p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.</strong>&nbsp; These Terms and Conditions apply to all visitors (which shall include persons and representatives of all legal entities, whether such representatives are persons or digital engines of a kind that crawls, indexes, scrapes, copies, stores or transmits digital content).</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>D.</strong>&nbsp; These Terms and Conditions may be modified at any time and from time to time; the date of the most recent revisions will appear on this page, so check back periodically. You agree that your use of the <em>Site</em> is subject to the Terms and Conditions then in effect. Continued access to the <em>Site</em> by you following any modification in the Terms and Conditions will constitute your acceptance of the Terms and Conditions as modified. Should you disagree with some of the provisions herein, please leave the Site.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>2.&nbsp; ELIGIBILITY TO USE THIS <em>SITE</em></strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AGE REQUIREMENT:</strong> The Service is intended solely for persons who are 13 or older. Any access to or use of the Service by anyone under 13 is expressly prohibited. By accessing or using the Service you represent and warrant that you are 13 or older.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.&nbsp; WARNING:</strong> Even if you are old enough to use the <em>Site</em> and/or have your parent&#39;s or guardian&#39;s permission, some of the content available within the <em>Site</em> may not be appropriate for you. If you are under 18, do not view such content.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>3.&nbsp; WEBSITE PROVIDED AS-IS, AS-AVAILABLE</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.</strong>&nbsp; The materials comprising the <em>Site</em> are provided by us as a service to you on an <strong><em>as-is, as-available basis</em></strong>. You acknowledge that you are using the <em>Site</em> at your own risk.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp; No advice or information given by us or any other party on the <em>Site</em> shall create any warranty or liability. Further, we are not responsible for any content transmitted or posted to the <em>Site</em> by a third party. Any such third party content does not necessarily represent the opinions, beliefs, or positions of <em>Torqkd</em>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.</strong>&nbsp; We periodically schedule system downtime for maintenance and other purposes. Unplanned outages also may occur. <em>Torqkd</em> shall have no liability for the resulting unavailability of the <em>Site</em> or for any loss of data or transactions caused by planned or unplanned system outages, or any outages of webhost providers.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>D.</strong>&nbsp; We make no, and expressly disclaims any, representations or warranties, express or implied, regarding the <em>Site</em>, including, without limitation, any implied warranties of merchantability or fitness for a particular purpose. &nbsp;We make no, and expressly disclaims any, warranties, express or implied, regarding the correctness, accuracy, completeness, timeliness, and reliability of the text, images, graphics, links to other <em>Site</em>s and any other items on the <em>Site</em> or accessed via the <em>Site</em>, or that the <em>Site</em> will be uninterrupted, error-free or free of viruses or other harmful components. Under no circumstances shall <em>Torqkd</em>, its affiliates, or any of their respective partners, officers, directors, employees, agents or representatives be liable for any damages whatsoever, whether direct, indirect, special or consequential damages for lost revenues, lost profits, or otherwise, arising from or in connection with this <em>Site</em>, the materials contained herein, or the Internet generally. These disclaimers of warranties and limitations of liability shall apply to the fullest extent permitted by applicable law.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>E.&nbsp; </strong>We are not responsible for, and do not control, any third party content or advertisements which are posted on this <em>Site</em>, nor do we take any responsibility for the goods or services provided by advertisers on the <em>Site</em>.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>4.&nbsp; INTELLECTUAL PROPERTY RIGHTS</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.&nbsp;<strong>License to Use the <em>Site</em>:&nbsp; </strong></strong>&nbsp;We grant you a limited, non-exclusive license to access and use the Site for your own personal, non-commercial purposes. This includes the right to view content available on the Site. This license is personal to you and may not be assigned or sublicensed to anyone else.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>i.</strong>&nbsp; <strong>Restrictions.&nbsp; </strong>Except as expressly permitted by <em>Torqkd</em> in writing, you will not reproduce, redistribute, sell, create derivative works from, decompile, reverse engineer, or disassemble the <em>Site</em>. Nor will you take any measures to interfere with or damage the <em>Site</em>. All rights not expressly granted by us are reserved.&nbsp;</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp; <strong>Licenses Granted by You to Torkqd for Content: </strong><em>Torqkd</em> does not claim ownership rights in your content.&nbsp; As between you and <em>Torqkd</em>, you own the content that you submit to the <em>Site</em>. By submitting content, you grant <em>Torqkd</em> and its affiliates a worldwide, perpetual, irrevocable, non-exclusive, royalty-free license and right to copy, transmit, distribute, publicly perform and display (through all media now known or hereafter created), and make derivative works from your content for the purpose of (i) displaying the content within the <em>Site</em>; (ii) displaying the content on third party websites and applications through embedding techniques subject to your content privacy choices; (iii) allowing other users to display, download, and embed on third party websites the content, subject to your content privacy choices; (iii) promoting the <em>Site</em>, provided that you have made the content publicly available; and (iv) archiving or preserving the content for disputes, legal proceedings, or investigations. In addition, you waive any so-called &quot;moral rights&quot; in your content.&nbsp; If you make suggestions to us on improving or adding new features to the <em>Site</em>, we shall have the right to use your suggestions without any compensation to you.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.&nbsp; Infringement.&nbsp; </strong>We do not permit infringement of intellectual property rights on the <em>Site</em>. If you believe that any Content on the <em>Site</em> infringes your copyright or other intellectual-property rights, you may notify us at:</p>\r\n\r\n<p>Red Balloon Enterprises, Inc.,</p>\r\n\r\n<p>Doing Business as Torqkd.com<br />\r\nAttn: Copyright/Legal<br />\r\n6890 South 2300 East #71275</p>\r\n\r\n<p>Salt Lake City, Utah 84171</p>\r\n\r\n<p><a href=\"mailto:service@zulily.com\">legal@torqkd.com</a></p>\r\n\r\n<p style=\"padding-bottom:20px;\">To notify us of infringement, please provide the following information as required by the Online Copyright Infringement Liability Limitation Act section of the Digital Millennium Copyright Act, 17 U.S.C. 512 (c)(3):</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>i.</strong>&nbsp; An electronic or physical signature of the person authorized to act on behalf of the owner of the copyright interest;</p>\r\n\r\n<p>ii.&nbsp; A copy of the copyrighted work that you claim has been infringed, or a description of the copyrighted work, including the URL (i.e., web page address) of the location where the copyrighted work exists;</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>iii.</strong>&nbsp; Identification of the URL or other specific location on the <em>Site</em> where the material that you claim is infringing is located;</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>iv.</strong>&nbsp; A statement by you that you have a good faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law;</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>v.</strong>&nbsp; A statement by you, made under penalty of perjury, that the information in your notice is accurate and that you are the copyright owner or authorized to act on the copyright owner&#39;s behalf; and</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>vi.</strong>&nbsp; Your address, telephone number, and e-mail address.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>5.&nbsp; IMPERMISSIBLE USES OF THE WEBSITE</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.</strong>&nbsp; You agree not to: (a) systematically retrieve data or other Content from the <em>Site</em> to create or compile, directly or indirectly, a collection, compilation, database, directory or the like, whether by manual methods, through the use of <strong><em>bots</em></strong> or otherwise; (b) use any trademarks, trade names or other intellectual property of the <em>Torqkd</em> or any other party from the <em>Site</em> as metatags on other Sites, to disparage any party or in any manner that may damage any goodwill in the intellectual property; and (c) collect usernames and/or email addresses of other users by electronic or other means for the purpose of sending unsolicited email or other communications.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp; The following activities on the <em>Site</em> are expressly prohibited: (i) any use of the <em>Site</em>, which in <em>Torqkd</em>&rsquo;s sole judgment, degrades the reliability, speed, or operation of the <em>Site</em> or any underlying hardware or software thereof, and (ii) any use of the <em>Site</em> which is unlawful or in violation of these Terms and Conditions.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.</strong>&nbsp; <em>Torqkd</em> and all other trademarks, trade names, logos and other intellectual property owned by <em>Torqkd</em> are the property of <em>Torqkd</em> and cannot be used without the <em>Torqkd </em>&rsquo;s express prior written permission.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>6.&nbsp; USER CONTENT</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.</strong>&nbsp; We provide users an opportunity to transmit or post text, videos, photographs, images, sound files and/or other content to the <em>Site</em> (collectively, &ldquo;<em>User Content</em>&rdquo;) and provide for the hosting, sharing and/or publishing of such <em>User Content</em>. We do not endorse, support, sanction, encourage, or agree with <em>User Content</em> and expressly disclaim any and all liability in connection with any <em>User Content</em>.</p>\r\n\r\n<p><strong>B.&nbsp;You shall not transmit or post any <em>User Content</em> that:</strong><br />\r\n(i) is unlawful, threatening, harassing, abusive, false, inaccurate, deceptive, misleading, offensive, distasteful, inappropriate, libelous, defamatory, obscene, vulgar, pornographic, profane, indecent, invasive of another&rsquo;s privacy or harmful to minors in any way;<br />\r\n(ii) constitutes or encourages conduct that would constitute a criminal offense, give rise to civil liability, or otherwise violate and local, state, national, or international law;<br />\r\n(iii) is copyrighted, protected by trade secret, patent, trademark or otherwise subject to third party proprietary rights, including privacy and publicity rights, unless you are the owner of such rights or have permission from their rightful owner to submit or post the material and to grant <em>Torqkd </em>all of the license rights granted herein;<br />\r\n(iv) refer derisively to the goods or services of others;<br />\r\n(v) includes any disruptive elements that may damage or interfere with the <em>Site</em> such as computer viruses, bots, worms, bombs, or trojan horses;<br />\r\n(vi) impersonates another person;<br />\r\n(vii) includes any person&rsquo;s full name or personal or identifying information without that person&rsquo;s authorization; or<br />\r\n(viii) violates the law or otherwise violates these Terms and Conditions.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.&nbsp; In connection with any <em>User Content</em> you submit, affirm, represent, and/or warrant that: </strong>(i) you own or have the necessary licenses, rights, consents, and permissions to use and authorize the <em>Owner</em> to use all patent, trademark, trade secret, copyright or other proprietary rights in and to any and all <em>User Content</em> to enable inclusion and use of the <em>User Content</em> in the manner contemplated by the <em>Site</em> and these Terms and Conditions;<br />\r\n(ii) you have the written consent, release, and/or permission of each and every identifiable individual person in the <em>User Content</em> to use the name or likeness of each and every such identifiable individual person to enable inclusion and use of the <em>User Content</em> in the manner contemplated by the <em>Site</em> and these Terms and Conditions; and<br />\r\n(iii) it complies with these Terms and Conditions.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>D.</strong>&nbsp; You understand that all <em>User Content</em> is the sole responsibility of the person who transmits or posts that User Content. This means that you, and not <em>Torqkd</em>, are entirely and solely responsible for all <em>User Content</em> that you transmit or post and for the consequences of publishing such <em>User Content</em>. We do not and cannot review the <em>User Content</em> transmitted or posted by users and are not responsible for such content. However, we shall have the right, but not the obligation, to refuse, delete, move, remove, or edit any <em>User Content</em> that violates these Terms and Conditions or is otherwise objectionable, as determined by us in our sole discretion and without notice. Any specific complaints regarding <em>User Content</em> must be directed to <a href=\"mailto:service@cheapducky.com\">legal@torqkd.com</a>, and any promise by us to investigate, delete, remove, or otherwise edit any <em>User Content</em> shall be non-binding unless expressly provided in writing by us.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>E.</strong>&nbsp; You agree to indemnify <em>Torqkd</em> and its affiliates, and each of their respective partners, officers, directors, employees, agents and representatives, against, and to hold each of them harmless from, any and all claims and liabilities (including attorney&rsquo;s fees) that may arise from your use of the <em>Site</em>, your transmission or posting of <em>User Content</em>, your unauthorized use of material obtained from the <em>Site</em>, your breach of these Terms and Conditions, your violation of any law, regulation or any right of any other person or entity, and any unauthorized use of your account or password. We reserve the right to assume the exclusive defense and control of any matter which is subject to indemnification under this section. In such case, you agree to cooperate with any reasonable requests assisting our defense of such matter.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>7.&nbsp; USER ACCOUNTS AND PASSWORDS</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.</strong>&nbsp; To use certain features and functions of the <em>Site</em> (e.g., purchasing Products from the <em>Site</em>), you must create a user account (&ldquo;<em>Torqkd Account</em>&rdquo;) with a password. You agree to maintain the confidentiality of your <em>Torqkd Account</em> information and password and you agree not to use your <em>Torqkd Account</em> or password for any unauthorized purpose. By creating any <em>Torqkd Account</em>, you represent, warrant and certify that you are at least eighteen (18) years of age. A parent or legal guardian may create a Torqkd account for a child under the age of eighteen (18) years of age provided the child is at least thirteen (13) years of age.&nbsp; By granting your child permission to use the <em>Site</em>, you agree to the terms of this Agreement on behalf of your child. You are responsible for monitoring and supervising your child&#39;s use of the <em>Site</em>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp;You are responsible for actions undertaken by those using your <em>Torqkd Account</em> and password and are fully responsible for all activities that occur under your <em>Torqkd Account</em>. You agree to immediately notify us of any unauthorized use, or suspected unauthorized use of your <em>Torqkd Account</em> or any other breach of security. We cannot and will not be liable for any loss or damage arising from your failure to comply with the above requirements. We will protect your <em>Torqkd Account</em> information in accordance with the Privacy Policy which is set forth below. <em>Torqkd </em>, in its sole discretion, may suspend or terminate your <em>Torqkd Account</em> for any reason without notice, including but not limited to if you or anyone using your user <em>Torqkd Account</em> or password violates or attempts to violate these Terms and Conditions.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.&nbsp; </strong>You agree to (i) keep your password and online ID secure and strictly confidential, providing it only to authorized users of your account,<br />\r\n(ii) instruct each person to whom you give your online ID and password that he or she is not to disclose it to any unauthorized person,<br />\r\n(iii) notify us immediately and select a new online ID and password if you believe your password may have become known to an unauthorized person, and<br />\r\n(iv) notify us immediately if you are contacted by anyone requesting your online ID and password.&nbsp; When you give someone your online ID and online password, you are authorizing that person to access and use your account, and you are responsible for any and all transactions that person performs while using your account, even those transactions that are fraudulent or that you did not intend or want performed.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>8.&nbsp; ASSUMPTION OF RISK </strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">Clicking the &ldquo;I agree&rdquo; button means you understand that the activities portrayed on the <em>Site</em> involve inherent and other risks.&nbsp; You acknowledge that the activities are strenuous and dangerous and require a certain degree of physical condition, ability, maturity, and skill.&nbsp; You acknowledge that you are solely responsible for determining your (or your child&rsquo;s) suitability to participate in the activities.&nbsp; You further acknowledge that these <strong>activities are not rides or amusement devices with guaranteed outcomes but are extreme sports</strong>.&nbsp; &nbsp;As such, you agree that Torqkd does not endorse the activities depicted on the <em>Site</em>.&nbsp; You affirmatively acknowledge that by posting <em>User Content </em>on the site, you choose to voluntarily participate (or allow my child to participate) and observe the activities despite all risks.&nbsp; <strong>You </strong>&nbsp;<strong>assume all inherent and other risks and accept responsibility for any property damage and loss, and for any personal injury,</strong> <strong>illness, disability, emotional distress, and death that you (or your child) may suffer as a result of participating in the activities depicted on the <em>Site</em></strong>.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>9.&nbsp; RELEASE</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>YOU AGREE TO FOREVER RELEASE AND DISCHARGE <em>TORQKD</em> FROM AND AGREE NOT TO SUE FOR ANY AND ALL LIABILITY CLAIMS THAT YOU (OR YOUR CHILD) MAY HAVE FOR ANY PROPERTY DAMAGE AND LOSS, PERSONAL INJURY, EMOTIONAL DISTRESS, ILLNESS, DISABILITY, AND DEATH, RELATED TO YOUR (OR YOUR CHILD&#39;S) PARTICIPATION IN THE ACTIVITIES DEPICTED ON THE <em>SITE.</em>&nbsp; THIS RELEASE IS FOR ANY TYPE OF CLAIM, INCLUDING BREACH OF CONTRACT, FRAUD, OR ANY OTHER TYPE OF SUITE AND INCLUDES LOSSES ALLEGED TO BE CAUSED BY THE NEGLEGENCE OF TORQKD TO THE FULLEST EXTENT PERMITTED BY LAW.</strong></p>\r\n\r\n<p><strong>ADDITIONALLY, IN THE EVENT THAT YOU HAVE A DISPUTE WITH ONE OR MORE OTHER USERS OF THE <em>SITE</em>, YOU HEREBY AGREE TO RELEASE, REMISE AND FOREVER DISCHARGE OWNER AND ANY MEMBER OF THE <em>SITE</em>, EACH OF THEIR RESPECTIVE AGENTS, DIRECTORS, OFFICERS, EMPLOYEES, AND ALL OTHER RELATED PERSONS OR ENTITIES FROM ANY AND ALL MANNER OF RIGHTS, CLAIMS, COMPLAINTS, DEMANDS, CAUSES OF ACTION, PROCEEDINGS, LIABLITIES, OBLIGATIONS, LEGAL FEES, COSTS, AND DISBURSEMENTS OF ANY NATURE WHATSOEVER, WHETHER KNOWN OR UNKNOWN, WHICH NOW OR HEREAFTER ARISE FROM, RELATE TO, OR ARE CONNECTED WITH SUCH DISPUTE AND/OR YOUR USE OF THE <em>SITE</em>. IF YOU ARE A CALIFORNIA RESIDENT, YOU WAIVE CALIFORNIA CIVIL CODE SECTION 1542, WHICH SAYS: &quot;A GENERAL RELEASE DOES NOT EXTEND TO CLAIMS WHICH THE CREDITOR DOES NOT KNOW OR SUSPECT TO EXIST IN HIS FAVOR AT THE TIME OF EXECUTING THE RELEASE, WHICH, IF KNOWN BY HIM MUST HAVE MATERIALLY AFFECTED HIS SETTLEMENT WITH THE DEBTOR.&quot;</strong></p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\">10.&nbsp; INDEMNITY</h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>YOU HEREBY AGREE TO INDEMNIFY, DEFEND AND HOLD <em>TORQKD</em> AND ANY MEMBER OF THE <em>SITE </em>(COLLECTIVELY, THE <em>INDEMNIFIED PARTIES</em>) HARMLESS FROM AND AGAINST ANY AND ALL LIABILITY AND COSTS INCURRED BY THE <em>INDEMNIFIED PARTIES</em> IN CONNECTION WITH ANY CLAIM ARISING OUT OF YOUR USE OF THE <em>SITE</em> (INCLUDING, WITHOUT LIMITATION, ANY DISPUTE BETWEEN USERS REGARDING ANY TRANSACTION), ANY CONTENT POSTED BY YOU TO THE <em>SITE</em> OR ANY BREACH BY YOU OF THESE TERMS OR THE REPRESENTATIONS, WARRANTIES AND COVENANTS MADE BY YOU HEREIN, INCLUDING, WITHOUT LIMITATION, ATTORNEYS&#39; FEES AND COSTS. YOU SHALL COOPERATE AS FULLY AS REASONABLY REQUIRED IN THE DEFENSE OF ANY CLAIM. <em>TORQKD</em> RESERVES THE RIGHT, AT OUR OWN EXPENSE, TO ASSUME THE EXCLUSIVE DEFENSE AND CONTROL OF ANY MATTER OTHERWISE SUBJECT TO INDEMNIFICATION BY YOU AND YOU SHALL NOT IN ANY EVENT SETTLE ANY MATTER WITHOUT OUR WRITTEN CONSENT.</strong></p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>11.&nbsp; DISCLAIMERS</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.</strong>&nbsp; All data, software, and documentation in this <em>Site</em> are provided &quot;as is&quot; without warranty of any kind, either expressed or implied. <em>Torqkd, </em>its affiliates, agents and licensors cannot and do not warrant the accuracy, completeness, non-infringement, merchantability or fitness of any information contained on this <em>Site</em>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.</strong>&nbsp; The views and opinions of authors published on this <em>Site</em> do not necessarily reflect our views<em>.</em></p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.</strong>&nbsp; Reference to any specific commercial products, processes, or services by trade name, trademark, manufacturer, or otherwise does not necessarily constitute or imply our endorsement or recommendation<em>. </em>Nor shall any information or statements contained on this server be used to imply an endorsement or recommendation by us.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>D.</strong>&nbsp; With respect to any documents available from this server, we do not make any warranty, express or implied, including but not limited to the warranties of merchantability and fitness for a particular purpose. Further, we do not assume any legal liability or responsibility for the accuracy, completeness, or usefulness of any information, apparatus, product or process disclosed; nor do we represent that its use would not infringe privately owned rights.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>E.</strong>&nbsp; This disclaimer of liability applies to any damages or injury caused by any failure of performance, error, omission, interruption, deletion, defect, delay in operation or transmission, computer virus, communication line failure, theft or destruction or unauthorized access to, alteration of, or use of record, whether for breach of contract, tortious behavior, negligence, or under any other cause of action. You specifically acknowledge that <em>Torqkd </em>is not liable for your defamatory, offensive, infringing or illegal materials or conduct, or that of third parties, and we reserve the right to remove such materials from the <em>Site </em>without liability.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>F.</strong>&nbsp; The information published on the <em>Site</em> was valid at the time of publication. We reserve the right to make changes and improvements at any time and without notice, and assume no liability for damages incurred directly or indirectly as a result of errors, omissions or discrepancies.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>G.</strong>&nbsp; The <em>Site</em> may contain links to and frames of sites which are not maintained by <em>Torqkd.</em> While we try to include only links to or frames of those sites which are in good taste and safe for our visitors, we are not responsible for the content of those sites and cannot guarantee that sites will not change without our knowledge, and inclusion of such links and frames in the <em>Site</em> does not imply our endorsement of the linked or framed sites or their content.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>H.</strong>&nbsp; By sending us a message in the e-mail area, you agree to have it along with your name posted for public viewing both here and in other promotional and advertising materials of <em>Torqkd </em>without compensation. We will try to post as many of the messages as we can, although we cannot promise to post every submission. All messages that are posted here represent the opinions of other users and do not represent our ideas or opinions<em>. </em>You may copy them as much as you like for personal use, but redistribution in any way requires our permission. In consideration of this authorization, you agree that any copy of this information which you make shall retain all copyright and other proprietary notices contained here in this <em>Site</em>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>I.</strong>&nbsp; Access to this <em>Site</em> is provided to you at no cost, <em>as is.</em> All efforts will be used to maintain the <em>Site</em> but you should <em>not </em>assume that it is error-free or is suitable for the particular purpose that you intended when gaining access to the <em>Site</em>.&nbsp; We are not responsible for the results of any defects that may be found to exist in the <em>Site</em> or any lost profits or other consequential damages that may result from such defects.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>12.&nbsp; LIABILITY</strong></h2>\r\n\r\n<p>To the fullest extent permitted by law, in no event shall <em>Torqkd </em>or any of its directors, employees or agents have any liability whatsoever to any person for any direct or indirect loss, liability, cost, claim, expense or damage of any kind, whether in contract or in tort, including negligence, or otherwise, arising out of or related to the use by you of all or part of this <em>Site.</em></p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>13.&nbsp; GOVERNING LAW</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">This Agreement shall be governed by, construed, and enforced in accordance with the laws of the State of Utah and by entering into contract both parties are accepting the jurisdiction of the courts of the State of Utah in relation to any dispute between them..</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>14.&nbsp; NOTICES</strong></h2>\r\n\r\n<p>Except as explicitly stated otherwise, any notices shall be given (in the case of you contacting <em>Torqkd</em>) by email to <a href=\"mailto:service@zulily.com\">legal@torqkd.com</a> or by postal mail to:</p>\r\n\r\n<p style=\"padding-bottom:20px;\">Red Balloon Enterprises, Inc.</p>\r\n\r\n<p>Doing Business as Torqkd.com<br />\r\nAttn: Copyright/Legal<br />\r\n6890 South 2300 East #71275</p>\r\n\r\n<p>Salt Lake City, Utah 84171</p>\r\n\r\n<p><a href=\"mailto:service@zulily.com\">legal@torqkd.com</a></p>\r\n\r\n<p style=\"padding-bottom:20px;\">If we need to send you notice, we may send such notice to the email address you provide to us during the registration process. Notice shall be deemed given upon receipt or 24 hours after email is sent, unless the sending party is notified that the email address is invalid. Alternatively, we may give you notice by certified mail, postage prepaid and return receipt requested, to any address provided to us during the registration process. In such case, notice shall be deemed given three days after the date of mailing.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>15.&nbsp; ENTIRE AGREEMENT</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">This Agreement shall constitute the entire agreement between the parties and any prior understanding or representation of any kind preceding the date of this Agreement shall not be binding upon either party except to the extent incorporated in this Agreement.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>16.&nbsp; HYPERTEXT LINKS</strong></h2>\r\n\r\n<p>We reserve the right to refuse hypertext links to, or addresses of, other websites from <em>User&rsquo;s Content</em>, and to remove links or addresses without notice at our sole discretion. Further, we reserve the right to charge for hypertext links at any time.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>17.&nbsp; SEVERABILITY</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>The invalidity of any portion of this Agreement will not and shall not be deemed to affect the validity of any other provision. If any provision of this Agreement is held to be invalid, the parties agree that the remaining provisions shall be deemed to be in full force and effect as if they had been executed by both parties subsequent to the expungement of the invalid provision</strong>.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>18.&nbsp; NO WAIVER</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">The failure of either party to this Agreement to insist upon the performance of any of the terms and conditions of this Agreement, or the waiver of any breach of any of the terms and conditions of this Agreement, shall not be construed as subsequently waiving any such terms and conditions, but the same shall continue and remain in full force and effect as if no such forbearance or waiver had occurred.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>19.&nbsp; MANDATORY ARBITRATION</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">Any dispute under this Agreement shall be required to be resolved by binding arbitration of the parties hereto.&nbsp; If the parties cannot agree on an arbitrator, each party shall select one arbitrator and both arbitrators shall then select a third.&nbsp; The third arbitrator so selected shall arbitrate said dispute. The arbitration shall be governed by the rules of the American Arbitration Association then in force and effect.</p>\r\n\r\n<h2 style=\"font-size: 16px; color:#C97413; font-weight: normal;\"><strong>20.&nbsp;PRIVACY POLICY</strong></h2>\r\n\r\n<p style=\"padding-bottom:20px;\">We have established a <a href=\"http://www.nydailynews.com/services/privacy_policy/index.html\">Privacy Policy</a> (which is set forth below) as modified from time to time, which explains how information is collected on the <em>Site</em> and used. The Privacy Policy is part of these Terms and Conditions and is incorporated herein by reference.</p>\r\n', '<p align=\"center\" style=\"font-size: 20px; color: #C97413; text-align: center; padding-bottom: 20px;\">&nbsp;</p>\r\n\r\n<p>This Privacy Policy discloses the privacy practices for torqkd.com (the <em>&ldquo;Site</em>&rdquo;). This Privacy Policy governs the use and collection of information collected from you on the <em>Site.</em> This Privacy Policy does not apply to information you may provide to us offline or through any means other than the <em>Site,</em> other than as specifically identified below. As used herein, we, us and our refers to Torqkd, Inc.</p>\r\n\r\n<p style=\"padding-bottom:20px;\">Please read this Privacy Policy carefully so that you understand our online privacy practices. In addition, please review our <a href=\"http://www.nydailynews.com/services/terms_of_service/index.html\">Terms and</a> Conditions, which also govern your use of this <em>Site </em>and which incorporate this Privacy Policy by reference. Your use of this <em>Site </em>indicates to us that you have read and accept our privacy practices, as outlined in this Privacy Policy.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>1.&nbsp; What Information Is Collected?</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.&nbsp; Personally Identifying Information.</strong> To take advantage of certain optional features or functions of the <em>Site</em>, we may ask you to provide us with certain personally identifying information. Personally identifying information is information that could reasonably be used to identify you personally (such as your full name, address, or email address), and which we may refer to here as PII. For example, you may be asked to supply your name and email address if you complete the optional registration process for the <em>Site</em>. You can choose not to provide such information, but then you may not be able to take advantage of or participate in some features of the <em>Site</em>. We do not automatically collect any PII from visitors to the <em>Site</em>. After creating a profile, if you wish to change any of your profile information, you may do so by clicking the &ldquo;Your Profile&rdquo; link on the <em>Site</em> and then clicking the appropriate link under &ldquo;Manage Your Personal Profile.&rdquo; We may also combine information you have otherwise provided to us with PII you submit on the <em>Site</em>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.&nbsp; Children Under the Age of 13.</strong> We do not knowingly collect or solicit personally identifying information from or about children under the age of 13. By submitting any personally identifying information, you certify that you are at least 13 years of age. If we discover that we have received any information from or about a child under 13 in violation of this statement, we will delete that information. If you believe that we have collected personally identifying information from or about a child under the age of 13, please contact us at the address provided in the &ldquo;QUESTIONS&rdquo; section below.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.&nbsp; Non-Personally Identifying Information</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>i.&nbsp; Cookies.</strong> Like many website operators, we sometimes make use of browser &ldquo;cookies.&rdquo; A &ldquo;cookie&rdquo; is a small piece of information that we use to assign each visitor&rsquo;s computer a unique, random numerical identification code that resides in a designated file on your computer. Our cookies do not automatically collect personally identifying information. We may use information collected from cookies to recognize your browser when you visit the <em>Site</em>, to facilitate easy login, to attempt to personalize the <em>Site</em> for each user, to ensure that your browser does or does not see the same ad over and over again, to sequence ads and offers in a series and to track page usage and paths, to help serve advertisements, or to facilitate your ability to navigate the <em>Site</em>. We may link the cookie to <em>PII </em>you submit or other information we collect. Separately, third party companies that serve advertisements on the <em>Site</em> may use cookies and other tracking information, as further detailed below, to collect information about your visits to this <em>Site</em> and other websites.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>ii.&nbsp; Log Files</strong>. Like most websites, we use tracking programs that collect information about log files, including browser types, internet service providers (ISPs), referring/exit pages, platform types, date/time stamps, number of clicks, and Internet protocol (IP) addresses,. An IP address is a number that is automatically assigned to your computer whenever you access the Internet, which web servers use to identify where to send the information your computer requests. We may use IP addresses for a number of purposes, such as system administration, to report aggregate information to our business partners, or to audit the use of the <em>Site</em>. We may disclose such non-personally identifying information, such as aggregated statistics, to third parties for a variety or purposes, including describing our services, marketing, and improving the experiences of visitors to the <em>Site</em>. The information that we collect regarding log files is not linked to personally identifying information.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>ii.&nbsp; Web Beacons/Web Bugs (Clear GIFs/ Single-Pixel GIFs)</strong>. A web beacon allows the party that set the web beacon to monitor and collect certain limited information about the movements of online Web users. No personally identifying information is collected through web beacons or web bugs. Advertisers on the <em>Site</em> may elect to use third party advertising companies to serve ads on the <em>Site</em>, and they may use such web beacons to recognize your computer each time they send you an advertisement, in order to measure the effectiveness of their ads and to personalize advertising content. In this way, they may compile information about where individuals using your computer or browser saw their advertisements and determine which advertisements are clicked. Advertisers may also place a web beacon to allow them to recognize an existing cookie on your browser if from the same service. We do not control web beacons used by such third parties.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>2.&nbsp; How is the Information Collected Used, and How Can I Opt Out?</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>A.&nbsp; Personally Identifying Information. </strong><em>PII </em>that you voluntarily submit may be used for the purposes authorized when it was submitted. For example, if you submit <em>PII</em> to request services or content, the information that you submit may be used to fulfill your request. We, our advertisers, or third parties selected by us may send you special offers and information, including by email, if you have not opted out of receiving such information and offers. If you do not wish to receive such special offers and information sent by email, you may follow the instructions for unsubscribing included within any of such special offers or informational emails.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>B.&nbsp; Administrative Purposes</strong>. We may use <em>PII</em> you submit to contact you for internal administrative purposes such as site administration, troubleshooting, or processing of e-commerce transactions, or relating to your use of the <em>Site</em> or Content you post on the <em>Site</em>, or in our discretion to notify you of major changes to the <em>Site</em> or this Privacy Policy.</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><strong>C.&nbsp; Service Providers and Third Parties</strong>. Personally identifying information may be shared with third parties as disclosed in this Privacy Policy or at the time you provide your information. Third parties that provide support for the operation of the <em>Site</em> or features thereof may also have access to such information. We may also share personally identifying information we have about our users with third parties so that the third parties can send you information and special offers, unless you choose to opt out from such sharing by clicking on the unsubscribe link included in such emails. We may also share your <em>PII </em>with third parties to accomplish the purposes for which it was submitted. In all cases, we will use the information only as permitted by law.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>3.&nbsp; Facilitating Use of the <em>Site</em> and Customizing Content.</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\">We may use information collected from cookies and other tracking technology to recognize your browser when you visit the <em>Site</em> and to attempt to personalize the <em>Site</em> for each user, to sequence ads and offers in a series and to track page usage and paths. You can configure your browser to refuse all cookies or to indicate when a cookie is being set by choosing this option in the preferences or menu options in your browser. However, if you disable cookies, you may not be able to use certain optional features or functions of the <em>Site.</em></p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>4.&nbsp; Third Party Advertisements</strong>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\">We also use third party companies to serve advertisements on the <em>Site</em>. These companies may use cookies and other tracking information to collect information about your visits to this <em>Site</em> and other websites, so that they can measure the effectiveness of ads, and to track page usage and paths followed during visits. These companies may provide this data to us.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>5.&nbsp; Statistical Analysis</strong>.</p>\r\n\r\n<p style=\"padding-bottom:20px;\">We may use collected information to create aggregate statistics about activity on and visitors to the <em>Site</em>, including the number of return visits to the <em>Site</em> or our advertisers&rsquo; websites, the number of unique visitors that have viewed or &ldquo;clicked&rdquo; a particular ad or visited a particular web page and how much time is spent on each page of the <em>Site</em>. We may also create aggregate demographic statistics. We may use these aggregate statistics to measure interest in various areas of the <em>Site</em>, to better design the <em>Site</em> and to improve our marketing strategy and product offerings. We may share the aggregate statistical information with third parties.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>6.&nbsp; Disclosures Required by Law.</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\">As described above, certain uses of collected information may involve disclosure to third parties. In addition, we may disclose collected information in the good faith belief that we are required to do so by law, or when doing so is reasonably necessary to: (1) comply with the law or legal process; (2) respond to any claims; (3) protect and defend the rights, property or personal safety of <em>Owner </em>and its affiliates, as well as our customers, users or the public; or (4) protect against misuse or unauthorized use of the <em>Site</em>. In addition, collected information may be disclosed as part of any bankruptcy, merger, sale, transfer of company assets or acquisition.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>7.&nbsp; Is My Information Protected?</strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\">We use reasonable administrative, technical, personnel and physical measures to safeguard personally identifying information against loss, theft and unauthorized use, disclosure or modification. As effective as our security measures are, no security system is impenetrable. Moreover, we cannot guarantee that information that you supply will not be intercepted while being transmitted to us. Personally identifying information may also be stored on computers of third parties that provide technical support for the operation of the <em>Site</em> or who otherwise have access to your <em>PII </em>as disclosed in this Privacy Policy. We do not control the security measures used by such third parties.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>8.&nbsp; Changes to this Privacy Policy</strong></p>\r\n\r\n<p style=\"padding-bottom:20px; \">This Privacy Policy may be amended or modified from time to time. We encourage you to periodically review this Privacy Policy to learn about any changes in our Privacy Policy.</p>\r\n\r\n<p style=\"padding-bottom:20px; color: #C97413;\"><strong>9<strong>.&nbsp; Questions</strong></strong></p>\r\n\r\n<p style=\"padding-bottom:20px;\">If you have any more questions, please email us at <a href=\"mailto:service@zulily.com\">support@torqkd.com</a> or write us at the following address:</p>\r\n\r\n<p style=\"padding-bottom:20px;\">Red Balloon Enterprises, Inc.,</p>\r\n\r\n<p style=\"padding-bottom:20px;\">Doing Business as Torqkd.com<br />\r\nAttn: Copyright/Legal<br />\r\n2049 Wildwood Drive<br />\r\nSalt Lake City, Utah 84121</p>\r\n\r\n<p style=\"padding-bottom:20px;\"><a href=\"mailto:service@zulily.com\">legal@torqkd.com</a></p>\r\n');

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `content_type` varchar(10) NOT NULL,
  `content_desc` varchar(100) NOT NULL,
  `content_status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', 'IMAGE', '<p>testing</p>\r\n', '1');
INSERT INTO `content` VALUES ('6', 'HTML', '<p>dfsfs</p>\r\n', '0');
INSERT INTO `content` VALUES ('5', 'VIDEO', '<p>dfsfs</p>\r\n', '0');
INSERT INTO `content` VALUES ('7', 'IMAGE', '<p>safdsaf</p>\r\n', '0');
INSERT INTO `content` VALUES ('8', 'VIDEO', '<p>dfgdfgd</p>\r\n', '0');
INSERT INTO `content` VALUES ('10', 'IMAGE', '<p>qweewqfd</p>\r\n', '0');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(250) NOT NULL DEFAULT '',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `product_available` varchar(50) NOT NULL DEFAULT '',
  `vat_applicable` tinyint(4) NOT NULL DEFAULT '0',
  `s_iso_code` varchar(10) NOT NULL DEFAULT '',
  `s_region` varchar(25) NOT NULL DEFAULT '',
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Afghanistan', '21', '3', '2', '1', 'AF', 'Asia', 'afghanistan.png');
INSERT INTO `country` VALUES ('2', 'Albania', '22', '6', '2', '1', 'AL', 'Europe', 'albania.png');
INSERT INTO `country` VALUES ('3', 'Algeria', '21', '3', '2', '1', 'DZ', 'Africa', 'algeria.png');
INSERT INTO `country` VALUES ('4', 'American Samoa', '21', '3', '2', '1', 'AS', 'Oceania', 'american_samoa.png');
INSERT INTO `country` VALUES ('5', 'Andorra', '22', '2', '2', '1', 'AD', 'Europe', 'andorra.png');
INSERT INTO `country` VALUES ('6', 'Angola', '21', '3', '2', '1', 'AO', 'Africa', 'angola.png');
INSERT INTO `country` VALUES ('7', 'Anguilla', '21', '3', '2', '1', 'AI', 'Central America and the C', 'anguilla.png');
INSERT INTO `country` VALUES ('9', 'Antigua and Barbuda', '21', '3', '2', '1', 'AG', 'Central America and the C', 'antigua_barbuda.png');
INSERT INTO `country` VALUES ('10', 'Argentina', '21', '3', '2', '1', 'AR', 'South America', 'argentina.png');
INSERT INTO `country` VALUES ('11', 'Armenia', '21', '3', '2', '1', 'AM', 'Commonwealth of Independe', 'armenia.png');
INSERT INTO `country` VALUES ('12', 'Aruba', '21', '3', '2', '1', 'AW', 'Central America and the C', 'aruba.png');
INSERT INTO `country` VALUES ('14', 'Australia', '21', '3', '2', '1', 'AU', 'Oceania', 'australia.png');
INSERT INTO `country` VALUES ('15', 'Austria', '22', '2', '2', '1', 'AT', 'Europe', 'austria.png');
INSERT INTO `country` VALUES ('16', 'Azerbaijan', '21', '3', '2', '1', 'AZ', 'Commonwealth of Independe', 'azerbaijan.png');
INSERT INTO `country` VALUES ('17', 'The Bahamas', '21', '3', '2', '1', 'BS', 'Central America and the C', 'bahamas.png');
INSERT INTO `country` VALUES ('18', 'Bahrain', '21', '3', '2', '1', 'BH', 'Middle East', 'bahrain.png');
INSERT INTO `country` VALUES ('20', 'Bangladesh', '21', '3', '2', '1', 'BD', 'Asia', 'bangladesh.png');
INSERT INTO `country` VALUES ('21', 'Barbados', '21', '3', '2', '1', 'BB', 'Central America and the C', 'barbados.png');
INSERT INTO `country` VALUES ('23', 'Belarus', '21', '3', '2', '1', 'BY', 'Commonwealth of Independe', 'belarus.png');
INSERT INTO `country` VALUES ('24', 'Belgium', '22', '2', '2', '1', 'BE', 'Europe', 'belgium.png');
INSERT INTO `country` VALUES ('25', 'Belize', '21', '3', '2', '1', 'BZ', 'Central America and the C', 'belize.png');
INSERT INTO `country` VALUES ('26', 'Benin', '21', '3', '2', '1', 'BJ', 'Africa', 'benin.png');
INSERT INTO `country` VALUES ('27', 'Bermuda', '21', '3', '2', '1', 'BM', 'North America', 'bermuda.png');
INSERT INTO `country` VALUES ('28', 'Bhutan', '21', '3', '2', '1', 'BT', 'Asia', 'bhutan.png');
INSERT INTO `country` VALUES ('29', 'Bolivia', '21', '3', '2', '1', 'BO', 'South America', 'bolivia.png');
INSERT INTO `country` VALUES ('30', 'Bosnia and Herzegovina', '21', '3', '2', '1', 'BA', 'Bosnia and Herzegovina, E', 'bosnia_herzegovina.png');
INSERT INTO `country` VALUES ('31', 'Botswana', '21', '3', '2', '1', 'BW', 'Africa', 'botswana.png');
INSERT INTO `country` VALUES ('32', 'Bouvet Island', '21', '3', '2', '1', 'BV', 'Antarctic Region', 'norway.png');
INSERT INTO `country` VALUES ('33', 'Brazil', '21', '3', '2', '1', 'BR', 'South America', 'brazil.png');
INSERT INTO `country` VALUES ('34', 'British Indian Ocean Territory', '21', '3', '2', '1', 'IO', 'World', 'british_indian_ocean_territory.png');
INSERT INTO `country` VALUES ('37', 'Bulgaria', '22', '6', '2', '1', 'BG', 'Europe', 'bulgaria.png');
INSERT INTO `country` VALUES ('38', 'Burkina Faso', '21', '3', '2', '1', 'BF', 'Africa', 'burkina_faso.png');
INSERT INTO `country` VALUES ('39', 'Burma', '21', '3', '2', '1', 'MM', 'Southeast Asia', 'burma_myanmar.png');
INSERT INTO `country` VALUES ('40', 'Burundi', '21', '3', '2', '1', 'BI', 'Africa', 'burundi.png');
INSERT INTO `country` VALUES ('41', 'Cambodia', '21', '3', '2', '1', 'KH', 'Southeast Asia', 'cambodia.png');
INSERT INTO `country` VALUES ('42', 'Cameroon', '21', '3', '2', '1', 'CM', 'Africa', 'cameroon.png');
INSERT INTO `country` VALUES ('43', 'Canada', '21', '3', '2', '1', 'CA', 'North America', 'canada.png');
INSERT INTO `country` VALUES ('44', 'Cape Verde', '21', '3', '2', '1', 'CV', 'World', 'cape_verde.png');
INSERT INTO `country` VALUES ('45', 'Cayman Islands', '21', '3', '2', '1', 'KY', 'Central America and the C', 'cayman_islands.png');
INSERT INTO `country` VALUES ('46', 'Central African Republic', '21', '3', '2', '1', 'CF', 'Africa', 'central_african_republic.png');
INSERT INTO `country` VALUES ('47', 'Chad', '21', '3', '2', '1', 'TD', 'Africa', 'chad.png');
INSERT INTO `country` VALUES ('48', 'Chile', '21', '3', '2', '1', 'CL', 'South America', 'chile.png');
INSERT INTO `country` VALUES ('49', 'China', '21', '3', '2', '1', 'CN', 'Asia', 'china.png');
INSERT INTO `country` VALUES ('50', 'Christmas Island', '21', '3', '2', '1', 'CX', 'Southeast Asia', 'christmas_island.png');
INSERT INTO `country` VALUES ('52', 'Cocos (Keeling) Islands', '21', '3', '2', '1', 'CC', 'Southeast Asia', 'australia.png');
INSERT INTO `country` VALUES ('53', 'Colombia', '21', '3', '2', '1', 'CO', 'South America, Central Am', 'colombia.png');
INSERT INTO `country` VALUES ('54', 'Comoros', '21', '3', '2', '1', 'KM', 'Africa', 'comoros.png');
INSERT INTO `country` VALUES ('57', 'Cook Islands', '21', '3', '2', '1', 'CK', 'Oceania', 'cook_islands.png');
INSERT INTO `country` VALUES ('59', 'Costa Rica', '21', '3', '2', '1', 'CR', 'Central America and the C', 'costa_rica.png');
INSERT INTO `country` VALUES ('61', 'Croatia', '22', '6', '2', '1', 'HR', 'Europe', 'croatia.png');
INSERT INTO `country` VALUES ('62', 'Cuba', '21', '3', '2', '1', 'CU', 'Central America and the C', 'cuba.png');
INSERT INTO `country` VALUES ('63', 'Cyprus', '21', '3', '2', '1', 'CY', 'Middle East', 'cyprus.png');
INSERT INTO `country` VALUES ('64', 'Czech Republic', '22', '6', '2', '1', 'CZ', 'Europe', 'czec_republic.png');
INSERT INTO `country` VALUES ('65', 'Denmark', '1', '1', '3', '1', 'DK', 'Europe', 'denmark.png');
INSERT INTO `country` VALUES ('66', 'Djibouti', '21', '3', '2', '1', 'DJ', 'Africa', 'dijibouti.png');
INSERT INTO `country` VALUES ('67', 'Dominica', '21', '3', '2', '1', 'DM', 'Central America and the C', 'dominica.png');
INSERT INTO `country` VALUES ('68', 'Dominican Republic', '21', '3', '2', '1', 'DO', 'Central America and the C', 'dominican_republic.png');
INSERT INTO `country` VALUES ('69', 'East Timor', '21', '3', '2', '1', 'TP', '', 'east_timor.png');
INSERT INTO `country` VALUES ('70', 'Ecuador', '21', '3', '2', '1', 'EC', 'South America', 'ecuador.png');
INSERT INTO `country` VALUES ('71', 'Egypt', '21', '3', '2', '1', 'EG', 'Africa', 'egypt.png');
INSERT INTO `country` VALUES ('72', 'El Salvador', '21', '3', '2', '1', 'SV', 'Central America and the C', 'el_salvador.png');
INSERT INTO `country` VALUES ('73', 'Equatorial Guinea', '21', '3', '2', '1', 'GQ', 'Africa', 'equatorial_guinea.png');
INSERT INTO `country` VALUES ('75', 'Estonia', '22', '6', '2', '1', 'EE', 'Europe', 'estonia.png');
INSERT INTO `country` VALUES ('76', 'Ethiopia', '21', '3', '2', '1', 'ET', 'Africa', 'ethiopia.png');
INSERT INTO `country` VALUES ('79', 'Faroe Islands', '15', '1', '2', '1', 'FO', 'Europe', 'faroes.png');
INSERT INTO `country` VALUES ('80', 'Fiji', '21', '3', '2', '1', 'FJ', 'Oceania', 'fiji.png');
INSERT INTO `country` VALUES ('81', 'Finland', '22', '6', '2', '1', 'FI', 'Europe', 'finland.png');
INSERT INTO `country` VALUES ('82', 'France', '22', '6', '2', '1', 'FR', 'Europe', 'france.png');
INSERT INTO `country` VALUES ('84', 'French Guiana', '21', '3', '2', '1', 'GF', 'South America', 'france.png');
INSERT INTO `country` VALUES ('85', 'French Polynesia', '21', '3', '2', '1', 'PF', 'Oceania', 'french_polynesia.png');
INSERT INTO `country` VALUES ('87', 'Gabon', '21', '3', '2', '1', 'GA', 'Africa', 'gabon.png');
INSERT INTO `country` VALUES ('88', 'The Gambia', '21', '3', '2', '1', 'GM', 'Africa', 'gambia.png');
INSERT INTO `country` VALUES ('91', 'Germany', '18', '2', '2', '1', 'DE', 'Europe', 'germany.png');
INSERT INTO `country` VALUES ('92', 'Ghana', '21', '3', '2', '1', 'GH', 'Africa', 'ghana.png');
INSERT INTO `country` VALUES ('93', 'Gibraltar', '22', '6', '2', '1', 'GI', 'Europe', 'gibraltar.png');
INSERT INTO `country` VALUES ('95', 'Greece', '22', '6', '2', '1', 'GR', 'Europe', 'greece.png');
INSERT INTO `country` VALUES ('96', 'Greenland', '2', '1', '2', '2', 'GL', 'Arctic Region', 'greenland.png');
INSERT INTO `country` VALUES ('97', 'Grenada', '21', '3', '2', '1', 'GD', 'Central America and the C', 'grenada.png');
INSERT INTO `country` VALUES ('98', 'Guadeloupe', '21', '3', '2', '1', 'GP', 'Central America and the C', 'france.png');
INSERT INTO `country` VALUES ('99', 'Guam', '21', '3', '2', '1', 'GU', 'Oceania', 'guam.png');
INSERT INTO `country` VALUES ('100', 'Guatemala', '21', '3', '2', '1', 'GT', 'Central America and the C', 'guatemala.png');
INSERT INTO `country` VALUES ('102', 'Guinea', '21', '3', '2', '1', 'GN', 'Africa', 'guinea.png');
INSERT INTO `country` VALUES ('103', 'Guinea-Bissau', '21', '3', '2', '1', 'GW', 'Africa', 'guinea_bissau.png');
INSERT INTO `country` VALUES ('104', 'Guyana', '21', '3', '2', '1', 'GY', 'South America', 'guyana.png');
INSERT INTO `country` VALUES ('105', 'Haiti', '21', '3', '2', '1', 'HT', 'Central America and the C', 'haiti.png');
INSERT INTO `country` VALUES ('108', 'Honduras', '21', '3', '2', '1', 'HN', 'Central America and the C', 'honduras.png');
INSERT INTO `country` VALUES ('109', 'Hong Kong (SAR)', '21', '3', '2', '1', 'HK', 'Southeast Asia', 'hong_kong.png');
INSERT INTO `country` VALUES ('111', 'Hungary', '22', '6', '2', '1', 'HU', 'Europe', 'hungary.png');
INSERT INTO `country` VALUES ('112', 'Iceland', '21', '3', '2', '1', 'IS', 'Arctic Region', 'iceland.png');
INSERT INTO `country` VALUES ('113', 'India', '21', '3', '2', '1', 'IN', 'Asia', 'india.png');
INSERT INTO `country` VALUES ('114', 'Indonesia', '21', '3', '2', '1', 'ID', 'Southeast Asia', 'indonesia.png');
INSERT INTO `country` VALUES ('116', 'Iraq', '21', '3', '2', '1', 'IQ', 'Middle East', 'iraq.png');
INSERT INTO `country` VALUES ('117', 'Ireland', '22', '6', '2', '1', 'IE', 'Europe', 'ireland.png');
INSERT INTO `country` VALUES ('118', 'Israel', '21', '3', '2', '1', 'IL', 'Middle East', 'israel.png');
INSERT INTO `country` VALUES ('119', 'Italy', '22', '6', '2', '1', 'IT', 'Europe', 'italy.png');
INSERT INTO `country` VALUES ('120', 'Jamaica', '21', '3', '2', '1', 'JM', 'Central America and the C', 'jamaica.png');
INSERT INTO `country` VALUES ('122', 'Japan', '21', '3', '2', '1', 'JP', 'Asia', 'japan.png');
INSERT INTO `country` VALUES ('126', 'Jordan', '21', '3', '2', '1', 'JO', 'Middle East', 'jordan.png');
INSERT INTO `country` VALUES ('129', 'Kenya', '21', '3', '2', '1', 'KE', 'Africa', 'kenya.png');
INSERT INTO `country` VALUES ('131', 'Kiribati', '21', '3', '2', '1', 'KI', 'Oceania', 'kiribati.png');
INSERT INTO `country` VALUES ('134', 'Kuwait', '21', '3', '2', '1', 'KW', 'Middle East', 'kuwait.png');
INSERT INTO `country` VALUES ('135', 'Kyrgyzstan', '21', '3', '2', '1', 'KG', 'Commonwealth of Independe', 'kyrgyzstan.png');
INSERT INTO `country` VALUES ('137', 'Latvia', '22', '6', '2', '1', 'LV', 'Europe', 'latvia.png');
INSERT INTO `country` VALUES ('138', 'Lebanon', '21', '3', '2', '1', 'LB', 'Middle East', 'lebanon.png');
INSERT INTO `country` VALUES ('139', 'Lesotho', '21', '3', '2', '1', 'LS', 'Africa', 'lesotho.png');
INSERT INTO `country` VALUES ('140', 'Liberia', '21', '3', '2', '1', 'LR', 'Africa', 'liberia.png');
INSERT INTO `country` VALUES ('142', 'Liechtenstein', '22', '6', '2', '1', 'LI', 'Europe', 'liechtenstein.png');
INSERT INTO `country` VALUES ('143', 'Lithuania', '22', '6', '2', '1', 'LT', 'Europe', 'lithuania.png');
INSERT INTO `country` VALUES ('144', 'Luxembourg', '22', '6', '2', '1', 'LU', 'Europe', 'luxembourg.png');
INSERT INTO `country` VALUES ('146', 'Macedonia, The Former Yugoslav Republic of', '22', '6', '2', '1', 'MK', 'Europe', 'macedonia.png');
INSERT INTO `country` VALUES ('147', 'Madagascar', '21', '3', '2', '1', 'MG', 'Africa', 'madagascar.png');
INSERT INTO `country` VALUES ('148', 'Malawi', '21', '3', '2', '1', 'MW', 'Africa', 'malawi.png');
INSERT INTO `country` VALUES ('149', 'Malaysia', '21', '3', '2', '1', 'MY', 'Southeast Asia', 'malaysia.png');
INSERT INTO `country` VALUES ('150', 'Maldives', '21', '3', '2', '1', 'MV', 'Asia', 'maldives.png');
INSERT INTO `country` VALUES ('151', 'Mali', '21', '3', '2', '1', 'ML', 'Africa', 'mali.png');
INSERT INTO `country` VALUES ('152', 'Malta', '22', '6', '2', '1', 'MT', 'Europe', 'malta.png');
INSERT INTO `country` VALUES ('154', 'Marshall Islands', '21', '3', '2', '1', 'MH', 'Oceania', 'marshall_islands.png');
INSERT INTO `country` VALUES ('155', 'Martinique', '21', '3', '2', '1', 'MQ', 'Central America and the C', 'france.png');
INSERT INTO `country` VALUES ('156', 'Mauritania', '21', '3', '2', '1', 'MR', 'Africa', 'mauritania.png');
INSERT INTO `country` VALUES ('157', 'Mauritius', '21', '3', '2', '1', 'MU', 'World', 'mauritius.png');
INSERT INTO `country` VALUES ('158', 'Mayotte', '21', '3', '2', '1', 'YT', 'Africa', 'france.png');
INSERT INTO `country` VALUES ('159', 'Mexico', '21', '3', '2', '1', 'MX', 'North America', 'mexico.png');
INSERT INTO `country` VALUES ('164', 'Monaco', '22', '6', '2', '1', 'MC', 'Europe', 'monaco.png');
INSERT INTO `country` VALUES ('165', 'Mongolia', '21', '3', '2', '1', 'MN', 'Asia', 'mongolia.png');
INSERT INTO `country` VALUES ('167', 'Montserrat', '21', '3', '2', '1', 'MS', 'Central America and the C', 'montserrat.png');
INSERT INTO `country` VALUES ('168', 'Morocco', '21', '3', '2', '1', 'MA', 'Africa', 'morocco.png');
INSERT INTO `country` VALUES ('169', 'Mozambique', '21', '3', '2', '1', 'MZ', 'Africa', 'mozambique.png');
INSERT INTO `country` VALUES ('171', 'Namibia', '21', '3', '2', '1', 'NA', 'Africa', 'namibia.png');
INSERT INTO `country` VALUES ('172', 'Nauru', '21', '3', '2', '1', 'NR', 'Oceania', 'nauru.png');
INSERT INTO `country` VALUES ('174', 'Nepal', '21', '3', '2', '1', 'NP', 'Asia', 'nepal.png');
INSERT INTO `country` VALUES ('175', 'Netherlands', '22', '6', '2', '1', 'NL', 'Europe', 'netherlands.png');
INSERT INTO `country` VALUES ('176', 'Netherlands Antilles', '21', '3', '2', '1', 'AN', 'Central America and the C', 'netherlands_antilles.png');
INSERT INTO `country` VALUES ('177', 'New Caledonia', '21', '3', '2', '1', 'NC', 'Oceania', 'new_caledonia.png');
INSERT INTO `country` VALUES ('178', 'New Zealand', '21', '3', '2', '1', 'NZ', 'Oceania', 'new_zealand.png');
INSERT INTO `country` VALUES ('179', 'Nicaragua', '21', '3', '2', '1', 'NI', 'Central America and the C', 'nicaragua.png');
INSERT INTO `country` VALUES ('180', 'Niger', '21', '3', '2', '1', 'NE', 'Africa', 'niger.png');
INSERT INTO `country` VALUES ('181', 'Nigeria', '21', '3', '2', '1', 'NG', 'Africa', 'nigeria.png');
INSERT INTO `country` VALUES ('182', 'Niue', '21', '3', '2', '1', 'NU', 'Oceania', 'niue.png');
INSERT INTO `country` VALUES ('183', 'Norfolk Island', '21', '3', '2', '1', 'NF', 'Oceania', 'norfolk_island.png');
INSERT INTO `country` VALUES ('184', 'Northern Mariana Islands', '21', '3', '2', '1', 'MP', 'Oceania', 'northern_marianas.png');
INSERT INTO `country` VALUES ('185', 'Norway', '16', '4', '2', '2', 'NO', 'Europe', 'norway.png');
INSERT INTO `country` VALUES ('186', 'Oman', '21', '3', '2', '1', 'OM', 'Middle East', 'oman.png');
INSERT INTO `country` VALUES ('187', 'Pakistan', '21', '3', '2', '1', 'PK', 'Asia', 'pakistan.png');
INSERT INTO `country` VALUES ('188', 'Palau', '21', '3', '2', '1', 'PW', 'Oceania', 'palau.png');
INSERT INTO `country` VALUES ('190', 'Panama', '21', '3', '2', '1', 'PA', 'Central America and the C', 'panama.png');
INSERT INTO `country` VALUES ('191', 'Papua New Guinea', '21', '3', '2', '1', 'PG', 'Oceania', 'papua_new_guinea.png');
INSERT INTO `country` VALUES ('194', 'Peru', '21', '3', '2', '1', 'PE', 'South America', 'peru.png');
INSERT INTO `country` VALUES ('195', 'Philippines', '21', '3', '2', '1', 'PH', 'Southeast Asia', 'phillipines.png');
INSERT INTO `country` VALUES ('197', 'Poland', '22', '6', '2', '1', 'PL', 'Europe', 'poland.png');
INSERT INTO `country` VALUES ('198', 'Portugal', '22', '6', '2', '1', 'PT', 'Europe', 'portugal.png');
INSERT INTO `country` VALUES ('199', 'Puerto Rico', '21', '3', '2', '1', 'PR', 'Central America and the C', 'puerto_rico.png');
INSERT INTO `country` VALUES ('200', 'Qatar', '21', '3', '2', '1', 'QA', 'Middle East', 'qatar.png');
INSERT INTO `country` VALUES ('202', 'Romania', '22', '6', '2', '1', 'RO', 'Europe', 'romania.png');
INSERT INTO `country` VALUES ('204', 'Rwanda', '21', '3', '2', '1', 'RW', 'Africa', 'rwanda.png');
INSERT INTO `country` VALUES ('206', 'Saint Kitts and Nevis', '21', '3', '2', '1', 'KN', 'Central America and the C', 'st_kitts_nevis.png');
INSERT INTO `country` VALUES ('207', 'Saint Lucia', '21', '3', '2', '1', 'LC', 'Central America and the C', 'st_lucia.png');
INSERT INTO `country` VALUES ('209', 'Saint Vincent and the Grenadines', '21', '3', '2', '1', 'VC', 'Central America and the C', 'st_vincent_grenadines.png');
INSERT INTO `country` VALUES ('210', 'Samoa', '21', '3', '2', '1', 'WS', 'Oceania', 'samoa.png');
INSERT INTO `country` VALUES ('211', 'San Marino', '22', '6', '2', '1', 'SM', 'Europe', 'san_marino.png');
INSERT INTO `country` VALUES ('213', 'Saudi Arabia', '21', '3', '2', '1', 'SA', 'Middle East', 'saudi_arabia.png');
INSERT INTO `country` VALUES ('214', 'Senegal', '21', '3', '2', '1', 'SN', 'Africa', 'senegal.png');
INSERT INTO `country` VALUES ('217', 'Seychelles', '21', '3', '2', '1', 'SC', 'Africa', 'seychelles.png');
INSERT INTO `country` VALUES ('218', 'Sierra Leone', '21', '3', '2', '1', 'SL', 'Africa', 'sierra_leone.png');
INSERT INTO `country` VALUES ('219', 'Singapore', '21', '3', '2', '1', 'SG', 'Southeast Asia', 'singapore.png');
INSERT INTO `country` VALUES ('221', 'Slovenia', '22', '6', '2', '1', 'SI', 'Europe', 'slovenia.png');
INSERT INTO `country` VALUES ('222', 'Solomon Islands', '21', '3', '2', '1', 'SB', 'Oceania', 'solomon_islands.png');
INSERT INTO `country` VALUES ('223', 'Somalia', '21', '3', '2', '1', 'SO', 'Africa', 'somalia.png');
INSERT INTO `country` VALUES ('224', 'South Africa', '21', '3', '2', '1', 'ZA', 'Africa', 'south_africa.png');
INSERT INTO `country` VALUES ('226', 'Spain', '22', '6', '2', '1', 'ES', 'Europe', 'spain.png');
INSERT INTO `country` VALUES ('228', 'Sri Lanka', '21', '3', '2', '1', 'LK', 'Asia', 'sri_lanka.png');
INSERT INTO `country` VALUES ('229', 'Sudan', '21', '3', '2', '1', 'SD', 'Africa', 'sudan.png');
INSERT INTO `country` VALUES ('230', 'Suriname', '21', '3', '2', '1', 'SR', 'South America', 'suriname.png');
INSERT INTO `country` VALUES ('231', 'Svalbard', '21', '3', '2', '1', 'SJ', 'Arctic Region', 'svalbard.png');
INSERT INTO `country` VALUES ('232', 'Swaziland', '21', '3', '2', '1', 'SZ', 'Africa', 'swaziland.png');
INSERT INTO `country` VALUES ('233', 'Sweden', '17', '5', '2', '1', 'SE', 'Europe', 'sweden.png');
INSERT INTO `country` VALUES ('234', 'Switzerland', '22', '6', '2', '1', 'CH', 'Europe', 'switzerland.png');
INSERT INTO `country` VALUES ('237', 'Tajikistan', '21', '3', '2', '1', 'TJ', 'Commonwealth of Independe', 'tajikistan.png');
INSERT INTO `country` VALUES ('239', 'Thailand', '21', '3', '2', '1', 'TH', 'Southeast Asia', 'thailand.png');
INSERT INTO `country` VALUES ('240', 'Togo', '21', '3', '2', '1', 'TG', 'Africa', 'togo.png');
INSERT INTO `country` VALUES ('241', 'Tokelau', '21', '3', '2', '1', 'TK', 'Oceania', 'tokelau.png');
INSERT INTO `country` VALUES ('242', 'Tonga', '21', '3', '2', '1', 'TO', 'Oceania', 'tonga.png');
INSERT INTO `country` VALUES ('243', 'Trinidad and Tobago', '21', '3', '2', '1', 'TT', 'Central America and the C', 'trinidad_and_tobago.png');
INSERT INTO `country` VALUES ('245', 'Tunisia', '21', '3', '2', '1', 'TN', 'Africa', 'tunisia.png');
INSERT INTO `country` VALUES ('246', 'Turkey', '21', '3', '2', '1', 'TR', 'Middle East', 'turkey.png');
INSERT INTO `country` VALUES ('247', 'Turkmenistan', '21', '3', '2', '1', 'TM', 'Commonwealth of Independe', 'turkmenistan.png');
INSERT INTO `country` VALUES ('248', 'Turks and Caicos Islands', '21', '3', '2', '1', 'TC', 'Central America and the C', 'turks_and_caicos_islands.png');
INSERT INTO `country` VALUES ('249', 'Tuvalu', '21', '3', '2', '1', 'TV', 'Oceania', 'tuvalu.png');
INSERT INTO `country` VALUES ('250', 'Uganda', '21', '3', '2', '1', 'UG', 'Africa', 'uganda.png');
INSERT INTO `country` VALUES ('251', 'Ukraine', '21', '3', '2', '1', 'UA', 'Commonwealth of Independe', 'ukraine.png');
INSERT INTO `country` VALUES ('252', 'United Arab Emirates', '21', '3', '2', '1', 'AE', 'Middle East', 'united_arab_emirates.png');
INSERT INTO `country` VALUES ('253', 'United Kingdom', '20', '6', '2', '1', 'GB', 'Europe', 'britain.png');
INSERT INTO `country` VALUES ('254', 'United States', '19', '3', '2', '1', 'US', 'North America', 'united_states.png');
INSERT INTO `country` VALUES ('256', 'Uruguay', '21', '3', '2', '1', 'UY', 'South America', 'uruguay.png');
INSERT INTO `country` VALUES ('257', 'Uzbekistan', '21', '3', '2', '1', 'UZ', 'Commonwealth of Independe', 'uzbekistan.png');
INSERT INTO `country` VALUES ('258', 'Vanuatu', '21', '3', '2', '1', 'VU', 'Oceania', 'vanuatu.png');
INSERT INTO `country` VALUES ('259', 'Venezuela', '21', '3', '2', '1', 'VE', 'South America, Central Am', 'venezuela.png');
INSERT INTO `country` VALUES ('260', 'Vietnam', '21', '3', '2', '1', 'VN', 'Southeast Asia', 'vietnam.png');
INSERT INTO `country` VALUES ('267', 'Western Sahara', '21', '3', '2', '1', 'EH', 'Africa', 'western_sahara.png');
INSERT INTO `country` VALUES ('270', 'Yemen', '21', '3', '2', '1', 'YE', 'Middle East', 'yemen.png');
INSERT INTO `country` VALUES ('273', 'Zambia', '21', '3', '2', '1', 'ZM', 'Africa', 'zambia.png');
INSERT INTO `country` VALUES ('274', 'Zimbabwe', '21', '3', '2', '1', 'ZW', 'Africa', 'zimbabwe.png');
INSERT INTO `country` VALUES ('275', 'Palestinian Territory, Occupied', '21', '3', '2', '1', 'PS', '', 'palestinian_territory,_occupied.png');
INSERT INTO `country` VALUES ('276', 'Europe', '22', '2', '2', '1', 'EU', '', 'europe.png');

-- ----------------------------
-- Table structure for `event`
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_by` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `sports_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `all_day` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  `register_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('110', 'T-Town Pull Down', '', '60', null, '42', 'University of Alabama Outdoor Recreation', '401 5th Ave East', 'Tuscaloosa', '35487', 'Alabama', '254', null, '02/01/2014', '02/01/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('136', 'Meet Me on Mars', 'Moon Joggers is looking for 30,000 runners (walkers and joggers too) to join our challenge in 2015 to run to Mars!  It is a 33 million mile journey and our crew of 30,000 will commit to run (and/or walk), on average, 1000 miles each in 2015! This is a WORLDWIDE event! Connect with participants from around the globe!\r\nEVERY MILE MATTERS!', '60', null, '53', 'Salt Lake City Utah ', '100 S 900 E', 'Salt Lake City', '84102', 'utah', '254', '1417826346.jpg', '01/01/2015', '12/31/2015', '00:00 AM', '12:59 PM', '1', null, 'http://www.moonjoggers.com/meet-me-on-mars-free-registration/');
INSERT INTO `event` VALUES ('137', 'Funk In Challenge', 'Don\'t wait for the New Years to get moving! Let us Walk/Run you through the holidays!\r\n\r\nDone our Challenges before? We have awesome bottle opener medals for this event! Good for opening a nice Sparkling Water when your done :-) \r\n\r\nTraining for a 5k, just want a challenge, or maybe you just want a challenge to get in shape? Why not get rewarded for all your hard work?\r\n\r\n***We are having people signing up from all over the US!! Represent your state!***\r\n\r\n \r\n\r\nWe put together 3 challenges:\r\n\r\n1) A mile a day challenge to get you moving and to keep you moving. Promise yourself and us that you will move 1 mile a day. Depending on your fitness level that could take just 6 minutes to 20 minutes a day. But you can do it!\r\n\r\n2) A 48 mile challenge. This averages out to 3 miles 4 times a week or a little over 1.5 Miles a day. Are you up for the challenge?\r\n\r\n3) A 93 mile Challenge! This would average out to be 3 miles a day! We know you can do it!\r\n\r\n \r\n\r\nAll 3 of these categories gets a medal for completing this challenge. The 31 day Challenge get the medal, the 48 mile Challenge gets a medal and a tshirt and the 93 day Challenge gets a medal, a choice of one of our t-shirt and a choice of necklace!\r\n\r\nAll you have to do is sign up for the event and once the month is over, you just send an email to let us know where to look for your mileage. For this event, you can use MapMyRun, RunKeeper or if you have a fitbit or Garman you can email us a summary at the end of the month. Once we recieve your email, we will send out your package.\r\n\r\nWant a weight loss challenge? We have an optional bet! You have the option (not required) to put an extra $30 in a pot and if you lose 4% of your body weight in 4 weeks, you get to share the money with those that hit their weight loss goals. Sounds fun right? Lose weight, get a medal, and possibly a shirt, necklace and money!\r\n\r\nEvent details and schedule\r\n\r\n\r\n \r\n\r\nAll you have to do is sign up for the event and once the month is over, you just send us and email with your name and where you tracked your miles or proof of your miles! \r\n\r\nListen to your body. If you need to walk instead of run, please walk and don\'t over do it. We just want you out and moving!\r\n', '75', null, '53', 'Ruth Hardy Park', '700 Tamarisk Lane', 'Palm Springs', '', 'California ', '254', '1417827142.jpg', '12/25/2014', '12/25/2015', '00:00 AM', '12:59 PM', '1', null, 'http://www.kleinclarksports.com/Half-Marathon');
INSERT INTO `event` VALUES ('138', '29th Annual Tram Road Challenge ', 'The 29th Annual Palm Springs Tram Road Challenge is a 6K uphill run/walk presented by the Palm Springs Aerial Tram and Make a Difference Day. For over 25 years, runners and walkers from around the world have been taking on the challenge. Participants climb 2000 vertical feet in just over 3.7 miles. All finishers receive a customized finishers medal. This event benefits the United Way of the Desert.\r\n\r\nUnited Way of the Desert - In conjunction with Make a Difference Day, the Tram Road Challenge will benefit \r\n\r\nthe United Way of the Desert. You are encouraged to make a difference in the life of others by asking your family and friends to sponsor your participation in the race.  For donation forms click this link \r\n\r\nPledge Form\r\n\r\nMake a Difference Day - USA Weekend has sponsored “Make A Difference Day”, A National Day of Doing Good” for 22 years. Held annually on the fourth Saturday in October, MDDay is a celebration where millions of Americans unite to improve the lives of others through volunteerism and community partnerships. This year The Desert Sun Media Group has partnered with Klein Clark Sports, KMIR 6 and United Way of the Desert for the 27th Annual Tram Road Challenge  As part of the 22nd MDDay,  dozens of local volunteers, businesses, non-profit agencies, community associations and caring individuals will join forces to support charity through fitness, throughout the Coachella Valley.  Our goal is to fight obesity, raise funds for the 21 member agencies of United Way and encourage people of our wonderful valley to volunteer their time to a cause.\r\n', '75', null, '53', 'Palm Springs Aerial Tram Way', '1 Tram Way', 'Palm Springs', '', 'California', '254', '1417827658.png', '10/25/2015', '10/25/2015', '00:00 AM', '12:59 PM', '1', null, 'http://www.kleinclarksports.com/tram');
INSERT INTO `event` VALUES ('139', 'Kids Storytime', 'Children ages 2.5 to 6, or those who have not yet entered kindergarten, are encouraged to join us for a 30 minute story time featuring books, music, flannel stories, and puppets. Each week there will be an activity of some kind that follows the stories. Some weeks it may be a movement or music activity and other weeks may include an art activity.', '0', null, '23', 'Cave Creek', '38443 N Schoolhouse Rd', 'Cave Creek', '85327', 'AZ', '254', null, '01/20/2015', '01/20/2015', '9:45 am', '10:15 am', '0', null, null);
INSERT INTO `event` VALUES ('147', 'Controlling your Healthcare', 'Please join Foothills Community Foundation\r\n and\r\n Hospice of the Valley\r\n Location: Holland Community Center\r\n RSVP: 480-488-1090', '0', null, '23', 'Scottsdale', '34250 N. 60th St.,', 'Scottsdale', '', 'AZ', '254', null, '01/22/2015', '01/22/2015', '10:00 am', '11:00 am', '0', null, null);
INSERT INTO `event` VALUES ('148', 'Dark Horse Bouldering Series: Championships', '', '0', null, '42', 'Metro Rock - Everett', '69 Norman St', 'Everette', '02149', 'Massachusetts', '254', null, '01/25/2014', '01/25/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('150', 'City Rock High School Comp #4', '', '0', null, '42', 'City Rock Gym', '21 N Nevada AVe', 'Colorado Springs', '80603', 'Colorado', '254', null, '01/11/2014', '01/11/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('152', 'Western Carolina University Rock-n-Rumble', '', '0', null, '42', 'West Carolina University', 'Base Camp Cullowhee, 210 AK Hinds University Center', 'Cullowhee', '28723', 'North Carolina', '254', null, '03/22/2014', '03/22/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('153', 'Frostbite Competition', '', '0', null, '42', 'Climbnasium', '339A North Locust Point Rd', 'Mechanicsburg', '17050', 'Pennsylvania', '254', null, '02/08/2014', '02/08/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('154', 'Milton Meltdown', '', '0', null, '42', 'Milton Rock Gym', '45 S Front St', 'Milton', '17847', 'Pennsylvania', '254', null, '02/22/2014', '02/22/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('155', 'Whips &amp; Grips - USA Climbing SCS Comp', '', '0', null, '42', 'ROCK\'n & JAM\'n 1', '9499 Washington Street, (Unit C)', 'Thornton', '80229', 'Colorado', '254', null, '04/05/2014', '04/05/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('156', 'Tuck Fest - Deep Water Solo Comp', '	  The Deep Water Solo Competition will take place on a competition-specific, 35 ft. climbing wall overhanging the USNWC’s Lower Pond. Top male and female climbers from Friday night’s qualifier will compete without the use of a harness or rope in a single elimination, head-to-head format. Competitors who fall or complete their route will find themselves free-falling into the lower pond. Competitors must know how to swim, and extra chalk, shoes and towels are recommended. ', '0', null, '42', 'U.S. National Whitewater Center', '5000 Whitewater Center Parkway', 'Charlotte', '28214', 'North Carolina', '254', null, '04/25/2014', '04/25/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('157', 'Portland Boulder Rally', 'Following last year\'s incredible success, The Circuit will be hosting the 4th annual Portland Boulder Rally! The Rally has gained acclaim as one of the largest bouldering competitions and festivals in the nation. Enjoy competition for all ages and abilities with loads of competitor goodies, then come watch the pros battle it out for a cash purse of $10,000! All-day outdoor festivities include local food carts, an outdoor industry exhibition, HUGE raffle, cheap beer garden and more! If you\'re not around, enjoy HD streaming of professional athlete interviews, key qualifier highlights, and a live stream of the Open Finals with exclusive commentary! This year\'s competition is going to be bigger than ever - get ready to Rally!', '0', null, '42', 'The Circuit Bouldering Gym', '16255 SW Upper Boones Ferry Rd', 'Tigard', '97224', 'Oregon', '254', null, '10/04/2014', '10/04/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('158', 'Fall Flash Fest 20', '', '0', null, '42', 'Climbmax - Asheville', '43 Wall St', 'Asheville', '28801', 'North Carolina', '254', null, '11/01/2014', '11/01/2014', '00:00 AM', '11:59 PM', '1', null, null);
INSERT INTO `event` VALUES ('159', 'Chasing Cupid', 'CATCH CUPID...IF YOU CAN!\r\n\r\nWELCOME LOVERS to the 3rd annual CHASING CUPID 5k Fun Run at Gardner Village!\r\n\r\nJoin us for a fun filled race while chasing cupid along a safe, well-marked 5k route. During your chase, you might be one of many cupid chasers who will receive giveaways totaling over $1000!! Plus, we will have all the extras you come to expect from a Lone Peak Events race! Wear your costumes! Bring your lovers! Bring your friends! Bring your family! And be sure to do your best to catch Cupid along the course (Cupid impersonators welcome!)\r\n\r\nNEW THIS YEAR! - Prizes for Top 3 Overall Male and Female, Top 3 Single costume, & Top 3 Couples costume. This is a non-competitive run, however this year, we will be timing the event for those of you who want to bring your game!\r\n\r\n\"If you happen to catch Cupid, please be kind; He may just stick an arrow in your behind!\"', '75', null, '64', 'Gardner Village', '1100 West 7800 South', 'West Jordan', '', 'Utah', '254', '1422927459.jpg', '02/14/2015', '02/14/2015', '06:30 PM', '06:30 PM', '0', null, 'http://www.lonepeakevents.com/');
INSERT INTO `event` VALUES ('160', 'testing', 'test', '60', '2', '72', 'kalyani', 'B-11/149', 'kalyani', '741235', 'WB', '10', '1422875662.jpg', '02/02/2015', '02/03/2015', '00:00 AM', '11:59 PM', '1', null, 'http://google.com');

-- ----------------------------
-- Table structure for `event_link`
-- ----------------------------
DROP TABLE IF EXISTS `event_link`;
CREATE TABLE `event_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event_link
-- ----------------------------
INSERT INTO `event_link` VALUES ('1', 'http://www.rockandice.com/Default.aspx?PageID=13030209&A=SearchResult&SearchID=2641453&ObjectID=13030209&ObjectType=1');
INSERT INTO `event_link` VALUES ('2', 'https://www.mountaineers.org/learn/course-overviews/climbing/upcoming-trad-climbing-courses');
INSERT INTO `event_link` VALUES ('3', 'http://leelanauconservancy.org/events/hikes/');
INSERT INTO `event_link` VALUES ('4', 'http://carefreecavecreek.org/events/');
INSERT INTO `event_link` VALUES ('5', 'http://www.utemountaineer.com/event-calendar/');
INSERT INTO `event_link` VALUES ('6', 'http://www.snowshoemag.com/category/news/events/');
INSERT INTO `event_link` VALUES ('7', 'https://www.apexbase.com/base-jumping-events');
INSERT INTO `event_link` VALUES ('8', 'http://base-jumping.eu/?s=events');
INSERT INTO `event_link` VALUES ('9', 'http://www.calkayak.com/events.cfm');
INSERT INTO `event_link` VALUES ('10', 'http://www.singletracks.com/mountain-bike/events/events.php');
INSERT INTO `event_link` VALUES ('11', 'http://www.ushpa.aero/calendar.asp');
INSERT INTO `event_link` VALUES ('12', 'http://www.bfa.net/index.php?view=categoryevents&id=3%3Aballoon-festivals&option=com_eventlist&Itemid=88889110');
INSERT INTO `event_link` VALUES ('13', 'http://www.trifind.com/gs_mud/ObstacleMudRuns.html');
INSERT INTO `event_link` VALUES ('14', 'http://www.hotairballoon.com/');
INSERT INTO `event_link` VALUES ('15', 'http://www.cyclingacrossamerica.com/regions/');
INSERT INTO `event_link` VALUES ('16', 'http://www.trifind.com/gs_iron/fullirondistancetriathlons.html');
INSERT INTO `event_link` VALUES ('17', 'http://northwestpaddlesurfers.com/events-calendar/');
INSERT INTO `event_link` VALUES ('18', 'https://perthkiteracing.tidyclub.com/public/events');
INSERT INTO `event_link` VALUES ('19', 'http://officialbridgeday.com/?s=events');

-- ----------------------------
-- Table structure for `forgot_password`
-- ----------------------------
DROP TABLE IF EXISTS `forgot_password`;
CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) DEFAULT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `new_password` varchar(255) DEFAULT NULL,
  `new_conf_password` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `already_changed` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of forgot_password
-- ----------------------------
INSERT INTO `forgot_password` VALUES ('1', 'samsujj@gmail.com', 'gLuMvW', null, null, '1391595043', '0');
INSERT INTO `forgot_password` VALUES ('2', 'samsujj@gmail.com', '79QYYl', null, null, '1391595324', '0');
INSERT INTO `forgot_password` VALUES ('3', 'samsujj@gmail.com', '3RWgGa', null, null, '1391595816', '0');
INSERT INTO `forgot_password` VALUES ('4', 'samsujj@gmail.com', 'zrygSo', null, null, '1391597731', '0');
INSERT INTO `forgot_password` VALUES ('5', 'samsujj@gmail.com', 'D7DFmK', null, null, '1391598839', '1');
INSERT INTO `forgot_password` VALUES ('6', 'samsujj2@gmail.com', 'XDCvbl', null, null, '1391599712', '1');
INSERT INTO `forgot_password` VALUES ('7', 'samsujj@gmail.com', 'ByHLmW', null, null, '1391600665', '1');
INSERT INTO `forgot_password` VALUES ('8', 'bhaskar.involutiontech@gmail.com', 'RozwmB', null, null, '1392295216', '0');
INSERT INTO `forgot_password` VALUES ('9', 'bhaskar.involutiontech@gmail.com', 'gYx96I', null, null, '1392295391', '0');
INSERT INTO `forgot_password` VALUES ('10', 'bhaskar.involutiontech@gmail.com', '5ZitUJ', null, null, '1392295423', '1');
INSERT INTO `forgot_password` VALUES ('11', 'bhaskar.involutiontech@gmail.com', 'oP0Cob', null, null, '1392353316', '1');
INSERT INTO `forgot_password` VALUES ('12', 'bhaskar.involutiontech@gmail.com', 'UUkFqW', null, null, '1394517967', '0');
INSERT INTO `forgot_password` VALUES ('13', 'bhaskar.involutiontech@gmail.com', '1aD8nh', null, null, '1395150914', '0');
INSERT INTO `forgot_password` VALUES ('14', 'bhaskar.involutiontech@gmail.com', 'LzcCYq', null, null, '1395643980', '0');
INSERT INTO `forgot_password` VALUES ('15', 'subhra.influxiq@gmail.com', '4fzYuH', null, null, '1395812338', '0');
INSERT INTO `forgot_password` VALUES ('16', 'bhaskar.involutiontech@gmail.com', 'WVy9in', null, null, '1395812479', '0');
INSERT INTO `forgot_password` VALUES ('17', 'subhra.influxiq@gmail.com', '5bVRL1', null, null, '1395812643', '1');
INSERT INTO `forgot_password` VALUES ('18', 'subhra.influxiq@gmail.com', 'DzZOeB', null, null, '1395814785', '0');
INSERT INTO `forgot_password` VALUES ('19', 'subhra.influxiq@gmail.com', '3eHDzU', null, null, '1395814907', '0');
INSERT INTO `forgot_password` VALUES ('20', 'subhra.influxiq@gmail.com', 'WyLGKn', null, null, '1395823804', '1');
INSERT INTO `forgot_password` VALUES ('21', 'bhaskar.involutiontech@gmail.com', '4I69oO', null, null, '1396005800', '1');
INSERT INTO `forgot_password` VALUES ('22', 'toni@xomktg.com', 'F78kXx', null, null, '1399335444', '0');
INSERT INTO `forgot_password` VALUES ('23', 'toni@xomktg.com', 'wv2e7f', null, null, '1399335596', '1');
INSERT INTO `forgot_password` VALUES ('24', 'samsujj@gmail.com', 'VUWgcK', null, null, '1399459534', '0');
INSERT INTO `forgot_password` VALUES ('25', 'samsujj@gmail.com', 'CSLvUT', null, null, '1399459646', '0');
INSERT INTO `forgot_password` VALUES ('26', 'samsujj@gmail.com', '56Iw1i', null, null, '1399459926', '0');
INSERT INTO `forgot_password` VALUES ('27', 'samsujj@gmail.com', 'uckLHP', null, null, '1399459995', '0');
INSERT INTO `forgot_password` VALUES ('28', 'samsujj@gmail.com', 'qqofcs', null, null, '1399460116', '0');
INSERT INTO `forgot_password` VALUES ('29', 'samsujj@gmail.com', 'xscrVx', null, null, '1399460483', '0');
INSERT INTO `forgot_password` VALUES ('30', 'subhra.influxiq@gmail.com', 'QilQhp', null, null, '1399542704', '1');
INSERT INTO `forgot_password` VALUES ('31', 'subhra212@hotmail.com', 'wtGR5E', null, null, '1399546918', '1');
INSERT INTO `forgot_password` VALUES ('32', 'subhra.influxiq@gmail.com', 'l5ggxQ', null, null, '1399552208', '0');
INSERT INTO `forgot_password` VALUES ('33', 'samsujj@gmail.com', 'HRimqR', null, null, '1399552729', '0');
INSERT INTO `forgot_password` VALUES ('34', 'toni@xomktg.com', 'KX3Y18', null, null, '1399673503', '1');
INSERT INTO `forgot_password` VALUES ('35', 'toni@xomktg.com', 'Bw991P', null, null, '1400114714', '1');
INSERT INTO `forgot_password` VALUES ('36', 'toni@xomktg.com', 'e1YSkp', null, null, '1400965385', '0');
INSERT INTO `forgot_password` VALUES ('37', 'subhra.influxiq@gmail.com', 'ftyiN0', null, null, '1401508236', '0');
INSERT INTO `forgot_password` VALUES ('38', 'bhaskar.involutiontech@gmail.com', 'j2xBmj', null, null, '1406781178', '1');
INSERT INTO `forgot_password` VALUES ('39', 'samsujj@gmail.com', 'tcqg9H', null, null, '1407820702', '0');
INSERT INTO `forgot_password` VALUES ('40', 'samsujj@gmail.com', 'NTPHNl', null, null, '1407820928', '1');
INSERT INTO `forgot_password` VALUES ('41', 'samsujj@gmail.com', 'oPg5Eh', null, null, '1407821114', '1');
INSERT INTO `forgot_password` VALUES ('42', 'samsujj@gmail.com', 'kuzxJS', null, null, '1407821878', '1');
INSERT INTO `forgot_password` VALUES ('43', 'samsujj@gmail.com', '0TRgB2', null, null, '1407822815', '0');
INSERT INTO `forgot_password` VALUES ('44', 'samsujj@gmail.com', '3yNoKj', null, null, '1408344115', '1');
INSERT INTO `forgot_password` VALUES ('45', 'samsujj@gmail.com', 'JDZZ2F', null, null, '1418278286', '0');
INSERT INTO `forgot_password` VALUES ('46', 'bhaskar.involutiontech@gmail.com', 'jLCMH4', null, null, '1418289538', '0');

-- ----------------------------
-- Table structure for `forumpress`
-- ----------------------------
DROP TABLE IF EXISTS `forumpress`;
CREATE TABLE `forumpress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `views_no` int(11) DEFAULT '0',
  `isactive` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of forumpress
-- ----------------------------
INSERT INTO `forumpress` VALUES ('2', 'Nike Fuel?', '<p>I was very bummed to hear that the Nike Fuel Bracelet does count steps but not much else in regards to my running stats etc. Anyone know of any sweet gadget that I should know about? Maybe it&#39;s time to buy the GPS Forerunner.</p>\r\n', '7', '1', '1408685946', '13');
INSERT INTO `forumpress` VALUES ('3', 'Shoes, Socks, Laces & other gear', '<p>Nike Fuel? I was very bummed to hear that the Nike Fuel Bracelet does count steps but not much else in regards to my running stats etc. Anyone know of any sweet gadget that I should know about? Maybe it&#39;s time to buy the GPS Forerunner.</p>\r\n', '2', '1', '1408688106', '8');
INSERT INTO `forumpress` VALUES ('4', 'Deep Water Solo', '<p>Forum dedicated to discussions about Deep Water Solo climbing</p>\r\n', '2', '1', '1408688133', '20');
INSERT INTO `forumpress` VALUES ('5', 'I can do this, just need a push along the way. ', '<p>I am 42, very overweight and would like to change my situation. I&#39;m&nbsp; very motivated, bought some new running shoes and ready to evolve to the life of a runner. My goal is to run a race like I did years ago. Any encouragement and advice is much obliged.</p>\r\n', '3', '0', '1408688167', '2');
INSERT INTO `forumpress` VALUES ('6', 'What', '<p>I&#39;m pretty sure, that a lot of it is personal preference and a lot of it is the quality of the shoe, but I need some advice on the best shoe to start racing in. My specs are 42 yr old make,6ft5in, 270lbs with about a nine minute mile avg...</p>\r\n', '1', '1', '1408688191', '2');
INSERT INTO `forumpress` VALUES ('7', 'Ddfg', '<p>sdfds</p>\r\n', '0', '1', '1410258261', '13');
INSERT INTO `forumpress` VALUES ('8', 'new', '<p>dsfds dsf</p>\r\n', '0', '1', '1410338894', '13');
INSERT INTO `forumpress` VALUES ('9', 'new 1', '<p>cdvxc dxz</p>\r\n', '1', '1', '1410339376', '2');
INSERT INTO `forumpress` VALUES ('10', 'dfds', '<p>dsfds</p>\r\n', '0', '1', '1410344263', '12');

-- ----------------------------
-- Table structure for `forum_category`
-- ----------------------------
DROP TABLE IF EXISTS `forum_category`;
CREATE TABLE `forum_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of forum_category
-- ----------------------------
INSERT INTO `forum_category` VALUES ('1', 'Climb', '<p><span style=\"color:#FF8C00;\">Category </span>1 description</p>\r\n', '1');
INSERT INTO `forum_category` VALUES ('2', 'Mountain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1');
INSERT INTO `forum_category` VALUES ('5', 'Run', 'fgdf dfg dsfgds\ndfgd dsf dsf sdf', '1');
INSERT INTO `forum_category` VALUES ('6', 'Grub & Suds Advice ', '<p>Grub &amp; Suds Advice</p>\r\n', '1');

-- ----------------------------
-- Table structure for `forum_topic`
-- ----------------------------
DROP TABLE IF EXISTS `forum_topic`;
CREATE TABLE `forum_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `time` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `no_of_view` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of forum_topic
-- ----------------------------
INSERT INTO `forum_topic` VALUES ('2', 'bnvb up dsfgds dsf', '<p>dsf dsf dsf up dsf dsf dsf</p>\r\n', '1409142008', '61', '2', '9', '0');
INSERT INTO `forum_topic` VALUES ('3', 'dsfsd', '<p>dsf dsf dsf</p>\r\n', '1409142095', '60', '3', '0', '0');
INSERT INTO `forum_topic` VALUES ('4', 'xcfs', '<p>sdf dsf</p>\r\n', '1409142308', '60', '4', '1', '0');
INSERT INTO `forum_topic` VALUES ('5', 'dsfs', '<p>sdfs</p>\r\n', '1409142347', '61', '5', '0', '0');
INSERT INTO `forum_topic` VALUES ('8', 'cvfs dsf dsf', 'sdfds dsf dsf\r\n', '1409222973', '60', '2', '0', '2');
INSERT INTO `forum_topic` VALUES ('10', 'new topic', '<p>fsd dsfds dsf</p>\r\n', '1409229066', '61', '2', '1', '0');
INSERT INTO `forum_topic` VALUES ('11', 'qqqqqq', '<p>qqqqqqqqqq</p>\r\n', '1409230123', '75', '5', '2', '0');
INSERT INTO `forum_topic` VALUES ('12', 'dgfd', 'fgddf', '1409230143', '60', '5', '0', '11');
INSERT INTO `forum_topic` VALUES ('13', 'test on 29-8', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1409311926', '60', '4', '80', '0');
INSERT INTO `forum_topic` VALUES ('33', 'Re: test on 29-8', 'cgb', '1409566465', '60', '2', '0', '13');
INSERT INTO `forum_topic` VALUES ('35', 'Re: test on 29-8', 'dsfdsf', '1409566714', '75', '2', '0', '13');
INSERT INTO `forum_topic` VALUES ('36', 'Re: bnvb up dsfgds dsf', 'sdfds dsfsd', '1409567394', '60', '2', '0', '2');
INSERT INTO `forum_topic` VALUES ('37', 'xcvdfgd', '<p>dfgddfgd</p>\r\n', '1409571219', '60', '3', '10', '0');
INSERT INTO `forum_topic` VALUES ('38', 'Re: test on 29-8', 'xdsfs', '1410329433', '60', '4', '0', '13');
INSERT INTO `forum_topic` VALUES ('39', 'Re: test on 29-8', 'dfsfsd', '1410330147', '60', '4', '0', '13');
INSERT INTO `forum_topic` VALUES ('40', 'Lorem Ipsum?', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', '1410330183', '60', '4', '7', '0');
INSERT INTO `forum_topic` VALUES ('41', 'Re: Lorem Ipsum?', 'dfsfsd', '1410330239', '60', '4', '0', '40');
INSERT INTO `forum_topic` VALUES ('42', 'test topic', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors&nbsp;http://css-tricks.com/snippets/php/find-urls-in-text-make-links/ now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '1415683837', '60', '6', '524', '0');
INSERT INTO `forum_topic` VALUES ('43', 'Re: test topic', 'fgd dfg dfg dfg', '1415683858', '85', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('44', 'Re: test topic', 'fgd dgfds df', '1415683925', '85', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('45', 'Re: test topic', 'lorem ipsum', '1415685809', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('46', 'Re: test topic', 'xfg df sd sd', '1415686013', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('47', 'Re:test topic', 'fdgdf dfg', '1415796795', '85', '6', '0', '46');
INSERT INTO `forum_topic` VALUES ('48', 'Re:test topic', 'xdfds dsf', '1415796836', '60', '6', '0', '46');
INSERT INTO `forum_topic` VALUES ('49', 'Re:test topic', 'fxgds dsf dsf dsf', '1415859582', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('52', 'Re:test topic', 'ppp dfgdf dfg df drfgf df dfg dfg', '1415864851', '85', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('53', 'Re:test topic', 'lobsdhj bvsd fsbd dsf sdb fdssdf', '1415864953', '60', '6', '0', '52');
INSERT INTO `forum_topic` VALUES ('55', 'Re:test topic', 'dfgdf dfg dfg', '1415865059', '60', '6', '0', '43');
INSERT INTO `forum_topic` VALUES ('56', 'Re:test topic', 'dxsd dsfsd', '1415865085', '85', '6', '0', '45');
INSERT INTO `forum_topic` VALUES ('57', 'Re:test topic', 'cvbxc cgc', '1416290182', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('58', 'Through the Google lens: search trends November 7-13 ', '<p>She may not have broken the Internet, but Kim Kardashian certainly got our collective attention this week with her saucy <i>Paper </i>magazine cover shoot showing off her famous derriere. Millions of searches, memes and (unsuccessful) imitators were not far, um, behind. Even Kim, however, had some company in the trending ranks from Taylor Swift, who has come close to breaking the Internet a few times herself. This week, Swift released a new video (and <a href=\"http://www.theverge.com/2014/11/11/7192795/taylor-swift-blank-space-app-is-the-best-version-of-myst-starring-taylor-swift\">app</a>) for her song &ldquo;Blank Space,&rdquo; putting a new spin on the &ldquo;boy-crazy&rdquo; meme and garnering more than 25 million YouTube views&mdash;that&rsquo;s more than 10 times as many as last week&rsquo;s viral video sensation &ldquo;Too Many Cooks.&rdquo;</p>\r\n', '1416295418', '60', '9', '2', '0');
INSERT INTO `forum_topic` VALUES ('59', 'Re:test topic', 'xvxccx', '1416483576', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('60', 'Re:test topic', 'xcvxc xcvx xcvx xcv xcv xcv', '1416483593', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('61', 'Re:test topic', 'xfgdsf', '1417070511', '60', '6', '0', '44');
INSERT INTO `forum_topic` VALUES ('62', 'Re:test topic', 'editors http://css-tricks.com/snippets/php/find-urls-in-text-make-links/ now u', '1417073576', '60', '6', '0', '42');
INSERT INTO `forum_topic` VALUES ('63', 'Re:test topic', 'dfrgdf dfgdf', '1417073649', '60', '6', '0', '62');
INSERT INTO `forum_topic` VALUES ('64', 'Re:test topic', ' page editors http://css-tricks.com/snippets/php/find-urls-in-text-make-links/ now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various version', '1417073662', '60', '6', '0', '46');
INSERT INTO `forum_topic` VALUES ('65', 'Re:test topic', 'uyhjf ftyhgc fuyghj', '1418717622', '60', '6', '0', '46');
INSERT INTO `forum_topic` VALUES ('66', 'Re:test topic', 'vcvcvc', '1420613183', '60', '6', '0', '42');

-- ----------------------------
-- Table structure for `forum_topic_like`
-- ----------------------------
DROP TABLE IF EXISTS `forum_topic_like`;
CREATE TABLE `forum_topic_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of forum_topic_like
-- ----------------------------
INSERT INTO `forum_topic_like` VALUES ('1', '42', '85');
INSERT INTO `forum_topic_like` VALUES ('6', '42', '60');
INSERT INTO `forum_topic_like` VALUES ('8', '52', '60');
INSERT INTO `forum_topic_like` VALUES ('9', '45', '60');
INSERT INTO `forum_topic_like` VALUES ('10', '48', '60');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `sports_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=>public; 2=>private',
  `time` int(11) DEFAULT NULL,
  `last_active_time` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('2', 'test group', 'fsdfsd', '1405491631.jpg', '9', '2', '1405478540', '1405478540', null, null);
INSERT INTO `group` VALUES ('3', 'world cup ', 'world cup ', '1418294114.jpg', '5', '1', '1405468540', '1305468540', null, null);
INSERT INTO `group` VALUES ('4', 'arwewe', 'werwe', '1405492598.jpg', '15', '1', '1405495540', '1410411851', null, null);
INSERT INTO `group` VALUES ('5', 'php developer', 'php developer group', '1405498493.jpg', '8', '2', '1405498540', '1405498540', null, null);
INSERT INTO `group` VALUES ('6', 'test group', 'testing purpose', '1405675388.jpg', '7', '1', '1405675425', '1422938438', null, null);
INSERT INTO `group` VALUES ('7', 'bhaskar testing', 'testing the system', '1406009153.png', '47', '2', '1406009210', '1406009210', null, null);
INSERT INTO `group` VALUES ('8', 'Big Fun on the Run!', 'Do you enjoy running and are looking for big fun on the run?  Join our group.  We meet every Monday at 6p.  Locations change weekly so watch for those. ', '1407301983.jpg', '7', '1', '1406153617', '1407389322', null, null);
INSERT INTO `group` VALUES ('9', 'Yii Updated 11', 'Yii updated11', '1408016461.jpg', '47', '1', '1408014893', '1411451476', '27', '80');
INSERT INTO `group` VALUES ('10', 'new group', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1410411979.jpg', '7', '1', '1410412008', '1411471948', null, null);
INSERT INTO `group` VALUES ('11', 'PHP', 'PHP', '1411042304.jpg', '9', '1', '1411042325', '1411042366', null, null);
INSERT INTO `group` VALUES ('12', 'fossils', 'fossils', '1417002076.jpg', '65', '1', '1417002097', '1417002097', '23.572646', '89.36389500000001');
INSERT INTO `group` VALUES ('13', 'rock on', 'rock on', '1417003436.jpg', '63', '1', '1417003456', '1417003456', '22.972646', '88.36389500000001');
INSERT INTO `group` VALUES ('14', 'dfgds sdf', 'sdef sdf sdf', '1418985026.JPG', '63', '1', '1418985093', '1418985093', '22.572646', '88.36389500000001');
INSERT INTO `group` VALUES ('15', 'hedv', 'Vgsdg', '1418985368.jpg', '63', '1', '1418985393', '1418985393', '22.9737057', '88.4419824');
INSERT INTO `group` VALUES ('16', 'dfgd dfg', 'dfgd  dfgd', '1423551057.jpg', '42', '1', '1422949698', '1423551086', '', '');

-- ----------------------------
-- Table structure for `group_user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `group_user_relation`;
CREATE TABLE `group_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `join_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group_user_relation
-- ----------------------------
INSERT INTO `group_user_relation` VALUES ('1', '2', '57', '1', '1405478540');
INSERT INTO `group_user_relation` VALUES ('2', '3', '57', '1', '1405468540');
INSERT INTO `group_user_relation` VALUES ('3', '3', '60', '1', '1405468540');
INSERT INTO `group_user_relation` VALUES ('4', '3', '50', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('5', '3', '49', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('6', '4', '57', '1', '1405468540');
INSERT INTO `group_user_relation` VALUES ('7', '4', '51', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('8', '4', '50', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('9', '4', '60', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('10', '4', '38', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('11', '4', '39', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('12', '4', '40', '0', '1405468540');
INSERT INTO `group_user_relation` VALUES ('13', '4', '41', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('14', '4', '42', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('15', '4', '48', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('16', '4', '55', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('17', '4', '56', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('18', '4', '58', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('19', '4', '69', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('20', '4', '74', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('21', '5', '57', '1', '1405495540');
INSERT INTO `group_user_relation` VALUES ('22', '5', '51', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('23', '5', '50', '0', '1405495540');
INSERT INTO `group_user_relation` VALUES ('24', '6', '85', '1', '1405675425');
INSERT INTO `group_user_relation` VALUES ('25', '6', '72', '0', '1405675425');
INSERT INTO `group_user_relation` VALUES ('26', '6', '60', '0', '1405675425');
INSERT INTO `group_user_relation` VALUES ('27', '6', '69', '0', '1405675425');
INSERT INTO `group_user_relation` VALUES ('29', '6', '80', '0', '1405957994');
INSERT INTO `group_user_relation` VALUES ('30', '7', '85', '1', '1406009210');
INSERT INTO `group_user_relation` VALUES ('48', '8', '85', '1', '1406153617');
INSERT INTO `group_user_relation` VALUES ('49', '8', '80', '1', '1406153617');
INSERT INTO `group_user_relation` VALUES ('50', '8', '79', '0', '1406153617');
INSERT INTO `group_user_relation` VALUES ('52', '8', '77', '0', '1406153617');
INSERT INTO `group_user_relation` VALUES ('53', '8', '102', '0', '1407389321');
INSERT INTO `group_user_relation` VALUES ('54', '6', '102', '0', '1407389338');
INSERT INTO `group_user_relation` VALUES ('56', '9', '84', '1', '1408014893');
INSERT INTO `group_user_relation` VALUES ('57', '9', '80', '1', '1408014893');
INSERT INTO `group_user_relation` VALUES ('176', '9', '75', '0', '1408018248');
INSERT INTO `group_user_relation` VALUES ('177', '9', '74', '0', '1408018248');
INSERT INTO `group_user_relation` VALUES ('192', '9', '101', '0', '1408018637');
INSERT INTO `group_user_relation` VALUES ('193', '9', '103', '0', '1408018637');
INSERT INTO `group_user_relation` VALUES ('194', '9', '78', '0', '1410411774');
INSERT INTO `group_user_relation` VALUES ('195', '4', '60', '0', '1410411851');
INSERT INTO `group_user_relation` VALUES ('198', '11', '84', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('200', '11', '79', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('202', '11', '77', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('205', '11', '74', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('206', '11', '72', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('207', '11', '73', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('208', '11', '69', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('209', '11', '64', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('210', '11', '65', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('211', '11', '67', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('212', '11', '68', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('213', '11', '89', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('214', '11', '90', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('215', '11', '94', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('216', '11', '97', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('217', '11', '98', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('218', '11', '99', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('219', '11', '100', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('220', '11', '101', '1', '1411042325');
INSERT INTO `group_user_relation` VALUES ('221', '11', '103', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('222', '11', '106', '0', '1411042325');
INSERT INTO `group_user_relation` VALUES ('224', '10', '84', '1', '1411043741');
INSERT INTO `group_user_relation` VALUES ('225', '10', '72', '1', '1411043746');
INSERT INTO `group_user_relation` VALUES ('226', '10', '85', '1', '1411465616');
INSERT INTO `group_user_relation` VALUES ('227', '10', '80', '0', '1411465921');
INSERT INTO `group_user_relation` VALUES ('228', '10', '79', '0', '1411465936');
INSERT INTO `group_user_relation` VALUES ('229', '10', '78', '1', '1411465938');
INSERT INTO `group_user_relation` VALUES ('230', '10', '75', '0', '1411465951');
INSERT INTO `group_user_relation` VALUES ('231', '10', '64', '0', '1411465971');
INSERT INTO `group_user_relation` VALUES ('232', '12', '85', '1', '1417002097');
INSERT INTO `group_user_relation` VALUES ('233', '12', '84', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('234', '12', '80', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('235', '12', '79', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('236', '12', '78', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('237', '12', '77', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('238', '12', '76', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('239', '12', '75', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('240', '12', '74', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('241', '12', '72', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('242', '12', '73', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('243', '12', '69', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('244', '12', '64', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('245', '12', '65', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('246', '12', '67', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('247', '12', '68', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('248', '12', '89', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('249', '12', '90', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('250', '12', '94', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('251', '12', '97', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('252', '12', '98', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('253', '12', '99', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('254', '12', '100', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('255', '12', '101', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('256', '12', '103', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('257', '12', '106', '0', '1417002097');
INSERT INTO `group_user_relation` VALUES ('259', '13', '80', '0', '1417003457');
INSERT INTO `group_user_relation` VALUES ('260', '13', '79', '0', '1417003457');
INSERT INTO `group_user_relation` VALUES ('261', '13', '78', '0', '1417003457');
INSERT INTO `group_user_relation` VALUES ('262', '13', '69', '0', '1417003457');
INSERT INTO `group_user_relation` VALUES ('263', '13', '64', '0', '1417003457');
INSERT INTO `group_user_relation` VALUES ('264', '14', '60', '1', '1418985093');
INSERT INTO `group_user_relation` VALUES ('265', '14', '85', '0', '1418985093');
INSERT INTO `group_user_relation` VALUES ('266', '14', '84', '0', '1418985093');
INSERT INTO `group_user_relation` VALUES ('267', '14', '80', '0', '1418985093');
INSERT INTO `group_user_relation` VALUES ('268', '15', '60', '1', '1418985393');
INSERT INTO `group_user_relation` VALUES ('269', '15', '85', '0', '1418985393');
INSERT INTO `group_user_relation` VALUES ('270', '15', '84', '0', '1418985393');
INSERT INTO `group_user_relation` VALUES ('271', '9', '60', '0', '1418985393');
INSERT INTO `group_user_relation` VALUES ('272', '16', '60', '1', '1422949700');
INSERT INTO `group_user_relation` VALUES ('273', '16', '85', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('274', '16', '84', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('275', '16', '80', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('276', '16', '79', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('277', '16', '78', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('278', '16', '77', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('279', '16', '76', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('280', '16', '75', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('281', '16', '74', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('282', '16', '72', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('283', '16', '73', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('284', '16', '69', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('285', '16', '64', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('286', '16', '65', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('287', '16', '67', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('288', '16', '68', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('289', '16', '89', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('290', '16', '90', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('291', '16', '94', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('292', '16', '97', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('293', '16', '98', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('294', '16', '99', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('295', '16', '100', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('296', '16', '101', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('297', '16', '103', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('298', '16', '106', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('299', '16', '107', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('300', '16', '108', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('301', '16', '109', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('302', '16', '110', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('303', '16', '111', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('304', '16', '112', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('305', '16', '113', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('306', '16', '114', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('307', '16', '115', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('308', '16', '116', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('309', '16', '117', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('310', '16', '118', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('311', '16', '119', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('312', '16', '120', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('313', '16', '125', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('314', '16', '121', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('315', '16', '122', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('316', '16', '123', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('317', '16', '124', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('318', '16', '127', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('319', '16', '126', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('320', '16', '128', '0', '1422949700');
INSERT INTO `group_user_relation` VALUES ('321', '16', '129', '0', '1423551086');

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(30) NOT NULL,
  `page_desc` varchar(100) NOT NULL,
  `page_status` int(2) NOT NULL DEFAULT '0' COMMENT '0=>inactive && 1=>inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('1', 'home for edit', '<p>this is for home page</p>\r\n', '1');
INSERT INTO `page` VALUES ('7', 'sam ', '<p>sam</p>\r\n', '1');
INSERT INTO `page` VALUES ('8', 'sam ', '<p>sam</p>\r\n', '0');
INSERT INTO `page` VALUES ('9', 'sam ', '<p>sam</p>\r\n', '0');
INSERT INTO `page` VALUES ('10', 'sam ', '<p>sam</p>\r\n', '0');
INSERT INTO `page` VALUES ('11', 'fdsf', '<p>dfdsf</p>\r\n', '0');
INSERT INTO `page` VALUES ('12', 'fdsf', '<p>dfdsf</p>\r\n', '0');
INSERT INTO `page` VALUES ('13', 'fdsf', '<p>dfdsf</p>\r\n', '0');

-- ----------------------------
-- Table structure for `polladd`
-- ----------------------------
DROP TABLE IF EXISTS `polladd`;
CREATE TABLE `polladd` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `poll_ques` text,
  `poll_availability_startdate` varchar(40) DEFAULT NULL,
  `poll_availability_enddate` varchar(40) DEFAULT NULL,
  `background_img` text,
  `isactive` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of polladd
-- ----------------------------
INSERT INTO `polladd` VALUES ('1', 'cvdfgdcvc', '12/12/2014', '10/05/2015', '1403201500.jpg', '1');
INSERT INTO `polladd` VALUES ('2', 'cvdfgd', '12/12/2014', '10/05/2015', null, '1');
INSERT INTO `polladd` VALUES ('3', 'cvdfgd', '12/12/2014', '12/31/2014', null, '1');
INSERT INTO `polladd` VALUES ('5', 'gjj', '12/12/2014', '12/31/2014', null, '1');
INSERT INTO `polladd` VALUES ('6', 'xvdgf', '12/12/2014', '10/10/2015', '1403170429.jpg', '1');
INSERT INTO `polladd` VALUES ('7', 'xvdgfdfgergrthhthtjtj', '12/12/2014', '10/23/2015', '1403177092.jpg', '1');
INSERT INTO `polladd` VALUES ('8', 'hjhjh', '12/12/2014', '10/13/2015', '1403201038.jpg', '1');
INSERT INTO `polladd` VALUES ('10', 'What is Joel Embiid\'s NBA future?', '12/12/2014', '10/22/2015', '1403224074.jpg', '1');
INSERT INTO `polladd` VALUES ('11', 'What country are you from?', '12/12/2014', '10/26/2015', '1403552205.jpg', '1');
INSERT INTO `polladd` VALUES ('12', 'this is poll question', '12/12/2014', '08/29/2015', '1404452971.jpg', '1');
INSERT INTO `polladd` VALUES ('13', 'rtyey', '12/12/2014', '08/06/2015', '1406784605.jpg', '1');

-- ----------------------------
-- Table structure for `pollanswer`
-- ----------------------------
DROP TABLE IF EXISTS `pollanswer`;
CREATE TABLE `pollanswer` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(255) DEFAULT NULL,
  `answer` text,
  `priority` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pollanswer
-- ----------------------------
INSERT INTO `pollanswer` VALUES ('1', '7', 'jhjhjhjh', null);
INSERT INTO `pollanswer` VALUES ('3', '1', 'dgfgf', null);
INSERT INTO `pollanswer` VALUES ('4', '1', 'dfgf', null);
INSERT INTO `pollanswer` VALUES ('11', '11', 'USA', '1');
INSERT INTO `pollanswer` VALUES ('12', '11', 'Mexico', '2');
INSERT INTO `pollanswer` VALUES ('13', '11', 'Canada', null);
INSERT INTO `pollanswer` VALUES ('14', '11', 'Germany', null);
INSERT INTO `pollanswer` VALUES ('15', '11', 'India', null);
INSERT INTO `pollanswer` VALUES ('16', '11', 'Italy', null);
INSERT INTO `pollanswer` VALUES ('20', '12', 'answer 1', null);
INSERT INTO `pollanswer` VALUES ('21', '12', 'answer2', null);
INSERT INTO `pollanswer` VALUES ('22', '12', 'answer 3', null);
INSERT INTO `pollanswer` VALUES ('27', '10', 'All-Star', null);
INSERT INTO `pollanswer` VALUES ('28', '10', 'Starter', null);
INSERT INTO `pollanswer` VALUES ('29', '10', 'Substitute', null);
INSERT INTO `pollanswer` VALUES ('30', '10', 'Bust', null);
INSERT INTO `pollanswer` VALUES ('31', '13', 'eyy', '1');
INSERT INTO `pollanswer` VALUES ('32', '8', 'answer 1', null);
INSERT INTO `pollanswer` VALUES ('33', '8', 'answer 2', null);
INSERT INTO `pollanswer` VALUES ('34', '3', 'vbn', null);
INSERT INTO `pollanswer` VALUES ('35', '3', 'tyu', null);

-- ----------------------------
-- Table structure for `pollsportsrelation`
-- ----------------------------
DROP TABLE IF EXISTS `pollsportsrelation`;
CREATE TABLE `pollsportsrelation` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(255) DEFAULT NULL,
  `sports_id` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pollsportsrelation
-- ----------------------------
INSERT INTO `pollsportsrelation` VALUES ('1', '3', '48');
INSERT INTO `pollsportsrelation` VALUES ('2', '3', '5');
INSERT INTO `pollsportsrelation` VALUES ('3', '3', '53');
INSERT INTO `pollsportsrelation` VALUES ('4', '4', '49');
INSERT INTO `pollsportsrelation` VALUES ('5', '5', '17');
INSERT INTO `pollsportsrelation` VALUES ('6', '5', '18');
INSERT INTO `pollsportsrelation` VALUES ('7', '5', '19');
INSERT INTO `pollsportsrelation` VALUES ('37', '7', '50');
INSERT INTO `pollsportsrelation` VALUES ('38', '7', '12');
INSERT INTO `pollsportsrelation` VALUES ('41', '8', '5');
INSERT INTO `pollsportsrelation` VALUES ('42', '1', '5');
INSERT INTO `pollsportsrelation` VALUES ('43', '9', '53');
INSERT INTO `pollsportsrelation` VALUES ('45', '11', '53');
INSERT INTO `pollsportsrelation` VALUES ('48', '12', '5');
INSERT INTO `pollsportsrelation` VALUES ('49', '12', '12');
INSERT INTO `pollsportsrelation` VALUES ('50', '12', '57');
INSERT INTO `pollsportsrelation` VALUES ('51', '12', '15');
INSERT INTO `pollsportsrelation` VALUES ('52', '12', '53');
INSERT INTO `pollsportsrelation` VALUES ('54', '10', '53');
INSERT INTO `pollsportsrelation` VALUES ('55', '13', '53');
INSERT INTO `pollsportsrelation` VALUES ('56', '2', '5');
INSERT INTO `pollsportsrelation` VALUES ('57', '5', '5');
INSERT INTO `pollsportsrelation` VALUES ('58', '6', '5');
INSERT INTO `pollsportsrelation` VALUES ('59', '7', '5');
INSERT INTO `pollsportsrelation` VALUES ('60', '10', '5');
INSERT INTO `pollsportsrelation` VALUES ('61', '11', '5');
INSERT INTO `pollsportsrelation` VALUES ('62', '13', '5');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` bigint(255) NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `productdesc` varchar(200) NOT NULL,
  `catagoryid` bigint(255) NOT NULL,
  `isactive` int(2) NOT NULL DEFAULT '0',
  `productprice` float(10,2) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `priority` bigint(255) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'sony', '<p>22&#39; inches led</p>\r\n', '3', '1', '12.00', '2014-01-31 13:34:58', '2');
INSERT INTO `product` VALUES ('7', 'aaaa', '<p>aaaa</p>\r\n', '5', '1', '123.00', '0000-00-00 00:00:00', '5');
INSERT INTO `product` VALUES ('3', 'Shrap', '<p>16&#39; LED</p>\r\n', '8', '0', '18.96', '2014-01-30 18:49:15', '3');
INSERT INTO `product` VALUES ('8', 'qqqq', '<p>qqqq</p>\r\n', '4', '1', '23.00', '0000-00-00 00:00:00', '7');
INSERT INTO `product` VALUES ('6', 'ssss', '<p>ssss</p>\r\n', '3', '1', '12.00', '0000-00-00 00:00:00', '3');
INSERT INTO `product` VALUES ('9', 'fdfghdfg', '<p>dsvgvdvc</p>\r\n', '2', '1', '67.00', '0000-00-00 00:00:00', '9');
INSERT INTO `product` VALUES ('10', 'aaaaa', '<p>ghjhjh</p>\r\n', '5', '0', '343.00', '2014-01-31 14:19:02', '8');
INSERT INTO `product` VALUES ('11', 'dsfdf', '<p>dfdfdf</p>\r\n', '3', '1', '45.00', '0000-00-00 00:00:00', '10');
INSERT INTO `product` VALUES ('12', 'qwqwqw', '<p>qwqwqw</p>\r\n', '4', '0', '23.56', '2014-01-31 19:13:53', '12');

-- ----------------------------
-- Table structure for `route_map`
-- ----------------------------
DROP TABLE IF EXISTS `route_map`;
CREATE TABLE `route_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sports_id` int(11) DEFAULT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `address` text,
  `duration` varchar(255) DEFAULT NULL,
  `description` text,
  `posted_time` bigint(20) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  `st_point` varchar(255) DEFAULT NULL,
  `end_point` text,
  `distance` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT '0',
  `is_mobile` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of route_map
-- ----------------------------
INSERT INTO `route_map` VALUES ('11', '75', '5', 'sdfsfsdf', 'Goe, West Bengal 712305, India', '12:23:22', 'dssd', '1403264446', null, '(22.862256424791948, 88.21815490722656)', 'a:1:{i:0;s:38:\"(23.03550643627977, 88.12202453613281)\";}', '138.25', '06/25/2014', '3', '0');
INSERT INTO `route_map` VALUES ('12', '85', '5', 'xdfs', 'Radha Ballabhpur, West Bengal 712305, India', '12:1:2', 'gsdf', '1403264559', null, '(22.862256424791948, 88.21815490722656)', 'a:1:{i:0;s:38:\"(23.03550643627977, 88.12202453613281)\";}', '11.87', '07/29/2014', '0', '0');
INSERT INTO `route_map` VALUES ('13', '72', '5', 'dsadasas', 'Purushottampur, Singur, Purusattampur, West Bengal 712409, India', '1:23:22', 'wdw', '1403273488', null, '(22.862256424791948, 88.21815490722656)', 'a:4:{i:0;s:38:\"(22.77238282970583, 88.25660705566406)\";i:1;s:39:\"(22.728057141751048, 88.27823638916016)\";i:2;s:39:\"(22.812791097657723, 88.20230483310297)\";i:3;s:39:\"(22.714123242600653, 88.21952819824219)\";}', '197.22', '08/24/2014', '0', '0');
INSERT INTO `route_map` VALUES ('14', '61', '5', 'fyjh', 'Natagram, West Bengal, India', '1:2:30', 'hk,', '1403515315', null, '(22.862256424791948, 88.21815490722656)', 'a:4:{i:0;s:38:\"(22.77238282970583, 88.25660705566406)\";i:1;s:39:\"(22.728057141751048, 88.27823638916016)\";i:2;s:39:\"(22.812791097657723, 88.20230483310297)\";i:3;s:39:\"(22.714123242600653, 88.21952819824219)\";}', '9.01', '06/25/2014', '0', '0');
INSERT INTO `route_map` VALUES ('15', '61', '5', 'alta', 'Kearns, UT, USA', '1:25:0', 'nknoiboiu', '1403550082', null, '(22.862256424791948, 88.21815490722656)', 'a:4:{i:0;s:38:\"(22.77238282970583, 88.25660705566406)\";i:1;s:39:\"(22.728057141751048, 88.27823638916016)\";i:2;s:39:\"(22.812791097657723, 88.20230483310297)\";i:3;s:39:\"(22.714123242600653, 88.21952819824219)\";}', '0.31', '04/21/2014', '0', '0');
INSERT INTO `route_map` VALUES ('16', '61', '5', 'Route 76', 'murray, utah ', '1:2:4', 'Yellow Day', '1403643207', null, '(22.862256424791948, 88.21815490722656)', 'a:1:{i:0;s:38:\"(23.03550643627977, 88.12202453613281)\";}', '6.34', '07/26/2014', '0', '0');
INSERT INTO `route_map` VALUES ('27', '60', '7', 'fhfg', 'Post Office Stop, Central Circle, B5, Block B, Kolkata, West Bengal 741235, India', '44:04:04', null, '1409304866', null, '(22.975670562927135, 88.4351335465908)', 'a:1:{i:0;s:39:\"(22.977083070199523, 88.43601197004318)\";}', '0.12', '08/31/2014', '0', '0');
INSERT INTO `route_map` VALUES ('30', '60', '7', 'klaynai', 'B 18, Block B, Kolkata, West Bengal 741251, India', '00:30:12', null, '1409305815', null, '(22.987535658926245, 88.42765018343925)', 'a:5:{i:0;s:39:\"(22.986239315172153, 88.42678517103195)\";i:1;s:38:\"(22.980974797069308, 88.4235155582428)\";i:2;s:39:\"(22.975423619580095, 88.43373745679855)\";i:3;s:39:\"(22.980135220805995, 88.43800485134125)\";i:4;s:39:\"(22.984686155510573, 88.42968329787254)\";}', '2.36', '08/31/2014', '0', '0');
INSERT INTO `route_map` VALUES ('31', '60', '7', 'dfgdf', 'Post Office Stop, Central Circle, B5, Block B, Kolkata, West Bengal 741235, India', '00:15:00', null, '1409306283', null, '(22.975670562927135, 88.43513086438179)', 'a:2:{i:0;s:39:\"(22.980145098204137, 88.43802094459534)\";i:1;s:38:\"(22.977557195205023, 88.4458315372467)\";}', '0.87', '08/31/2014', '0', '0');
INSERT INTO `route_map` VALUES ('32', '60', '7', 'up', 'Post Office Stop, Central Circle, B5, Block B, Kolkata, West Bengal 741235, India', '00:15:00', null, '1409546803', null, '(22.9757002, 88.43500610000001)', 'a:0:{}', '', '09/14/2014', '0', '0');
INSERT INTO `route_map` VALUES ('33', '60', '5', 'up1', 'kalyani', '00:00:00', 'xx', '1410350274', null, '(22.975, 88.43444399999998)', 'a:0:{}', '', '09/15/2014', '0', '0');
INSERT INTO `route_map` VALUES ('34', '60', '5', 'updated', 'Ghoshpara Station Road, B 17, Block B, Kolkata, West Bengal 741251, India', '03:44:55', 'dfdf', '1410350331', null, '(22.980145098204137, 88.43798339366913)', 'a:0:{}', '0', '09/16/2014', '0', '0');
INSERT INTO `route_map` VALUES ('35', '60', '5', 'Route Back', 'Gopalnagar Sou Para, Daluigacha, West Bengal, India', '01:22:33', 'fgdf', '1410352774', null, '(22.831883254915766, 88.23051452636719)', 'a:4:{i:0;s:38:\"(23.02539575081449, 88.13987731933594)\";i:1;s:39:\"(22.996955383125243, 88.27754974365234)\";i:2;s:38:\"(23.02539575081449, 88.13987731933594)\";i:3;s:39:\"(22.831883254915766, 88.23051452636719)\";}', '54.37', '09/07/2014', '0', '0');
INSERT INTO `route_map` VALUES ('37', '60', '13', '32423', 'Mahisatikri, West Bengal 712407, India', '03:55:45', 'sdfd sdf', '1411545197', null, '(22.868538829519306, 88.21306139230728)', 'a:2:{i:0;s:39:\"(22.820808016396516, 88.23678016662598)\";i:1;s:38:\"(22.86921598719274, 88.06142807006836)\";}', '16.65', '09/28/2014', '10', '0');
INSERT INTO `route_map` VALUES ('38', '60', '13', 'erte', 'Goe, West Bengal 712305, India', '04:05:44', null, '1411545290', null, '(22.92677686579329, 88.19343566894531)', 'a:2:{i:0;s:38:\"(22.92438557129128, 88.19499135017395)\";i:1;s:39:\"(22.886771480611753, 88.20382118225098)\";}', '5.03', '09/28/2014', '10', '0');
INSERT INTO `route_map` VALUES ('39', '60', '13', 'eww', 'Mahisatikri, West Bengal 712407, India', '01:02:03', null, '1411545751', null, '(22.872379306788158, 88.20991516113281)', 'a:1:{i:0;s:39:\"(22.844144074848277, 88.22620153427124)\";}', '2.98', '09/28/2014', '10', '0');
INSERT INTO `route_map` VALUES ('40', '60', '63', 'dfs', 'Plaucheville, LA 71362, USA', '01:02:02', 'dsfsd', '1411551151', null, '(30.985593114801166, -91.96764707565308)', 'a:1:{i:0;s:40:\"(30.981214863174447, -91.96900963783264)\";}', '0.31', '09/29/2014', '11', '0');
INSERT INTO `route_map` VALUES ('41', '60', '63', 'dsfds', 'Mahishdanga, West Bengal 712305, India', '00:50:00', null, '1411551272', null, '(22.905273461757176, 88.20304870605469)', 'a:1:{i:0;s:39:\"(22.911044930859497, 88.19792032241821)\";}', '1.24', '09/28/2014', '11', '0');
INSERT INTO `route_map` VALUES ('42', '60', '5', 'Kalyanbati, West Bengal 712706, India', 'Kalyanbati, West Bengal 712706, India', '01:01:01', 'Kalyanbati, West Bengal 712706, India', '1415770758', null, '(22.731857049769385, 88.15635681152344)', 'a:3:{i:0;s:39:\"(22.924247230648326, 88.07121276855469)\";i:1;s:38:\"(22.88756221517449, 88.22090148925781)\";i:2;s:39:\"(22.826820400544044, 88.24012756347656)\";}', '39.21', '11/30/2014', '3', '0');
INSERT INTO `route_map` VALUES ('43', '60', '53', 'mobile test', 'Tribeni, West Bengal, India', '01:00:00', 'Click', '1418735192', null, '(22.983681160330867, 88.3930778503418)', 'a:1:{i:0;s:39:\"(22.965031834579207, 88.38908672332764)\";}', '1.86', '12/31/2014', '0', '0');
INSERT INTO `route_map` VALUES ('44', '60', '42', 'dfsvds', 'B 11, Block B, Kanchrapara, West Bengal, India', '00:00:07', 'sdf sdf', '1422613838', null, '(22.975569999999998, 88.4452245)', 'a:0:{}', '0.00', '01/30/2015', '0', '0');
INSERT INTO `route_map` VALUES ('45', '60', '67', 'fgdg', 'B 11, Block B, Kanchrapara, West Bengal, India', '00:00:05', 'fghf', '1422616522', null, '(22.975569999999998, 88.4452245)', 'a:0:{}', '0.00', '01/30/2015', '0', '0');
INSERT INTO `route_map` VALUES ('46', '60', '67', 'GPS testing', 'B 11, Block B, Kanchrapara, West Bengal, India', '00:01:02', null, '1422619947', null, '(22.9737225, 88.4418465)', 'a:6:{i:0;s:31:\"(22.9737227, 83.44184680000001)\";i:1;s:31:\"(22.9737239, 84.44184760000007)\";i:2;s:31:\"(22.9737239, 85.44184799999994)\";i:3;s:31:\"(22.9737249, 86.44184900000005)\";i:4;s:31:\"(22.9737227, 87.44184760000007)\";i:5;s:31:\"(22.9737211, 89.44184689999997)\";}', '0.004', '01/30/2015', '0', '0');
INSERT INTO `route_map` VALUES ('47', '60', '67', 'gps1', 'B 11, Block B, Kanchrapara, West Bengal, India', '00:01:00', 'u', '1422620383', null, '(22.9737479, 88.44186230000003)', 'a:5:{i:0;s:31:\"(22.9737376, 88.44185479999999)\";i:1;s:31:\"(22.9737319, 88.44185240000002)\";i:2;s:31:\"(22.9737281, 88.44185089999996)\";i:3;s:24:\"(22.9737241, 88.4418488)\";i:4;s:31:\"(22.9737209, 88.44184689999997)\";}', '0.003', '01/30/2015', '0', '0');
INSERT INTO `route_map` VALUES ('48', '60', '5', 'xcvxc', 'Central Park Stop, Central Circle, B 5, B 13, Block B, Kolkata, West Bengal 741235, India', '01:02:03', 'cbcv', '1422960398', null, '(22.97497418153055, 88.4336730837822)', 'a:1:{i:0;s:39:\"(22.974900098192077, 88.43544870615005)\";}', '0.19', '02/02/2015', '3', '0');
INSERT INTO `route_map` VALUES ('49', '60', '5', 'fcxgdf', 'A 8, Block A8, Kolkata, West Bengal 741235, India', '00:00:44', null, '1423278397', null, '(22.9699183, 88.4597579)', 'a:2:{i:0;s:24:\"(22.9699183, 88.4597579)\";i:1;s:24:\"(22.9699183, 88.4597579)\";}', '0.001', '02/07/2015', '0', '0');
INSERT INTO `route_map` VALUES ('50', '60', '12', 'dfgdf', 'Block A11, Kalyani, West Bengal 741235, India', '00:00:14', null, '1423464564', null, '(22.9639369, 88.45470580000006)', 'a:0:{}', '0.00', '02/09/2015', '0', '0');
INSERT INTO `route_map` VALUES ('52', '60', '5', 'fghf', 'College Square, Kolkata, West Bengal, India', '00:00:16', null, '1423651262', null, '(22.572646, 88.36389499999996)', 'a:3:{i:0;s:30:\"(22.572646, 88.36389499999996)\";i:1;s:30:\"(22.572646, 88.36389499999996)\";i:2;s:30:\"(22.572646, 88.36389499999996)\";}', '0.000', '02/11/2015', '0', '1');
INSERT INTO `route_map` VALUES ('53', '60', '52', 'rrr', 'B 13, Block B, Kanchrapara, West Bengal 741235, India', '01:01:01', 'sa', '1423660692', null, '(22.96728411434358, 88.43549966812134)', 'a:3:{i:0;s:38:\"(22.97388268290182, 88.43404054641724)\";i:1;s:38:\"(22.97194660935066, 88.43854665756226)\";i:2;s:38:\"(22.96732362768876, 88.43558549880981)\";}', '1.62', '02/12/2015', '0', '1');
INSERT INTO `route_map` VALUES ('54', '60', '52', 'dfgdf', 'Sealdah Bus Stop, Sealdah, Raja Bazar, Kolkata, West Bengal 700014, India', '01:02:01', 'dsfs', '1423661360', null, '(22.564561413017202, 88.37059020996094)', 'a:1:{i:0;s:39:\"(22.575974402876476, 88.47770690917969)\";}', '8.39', '02/13/2015', '0', '0');
INSERT INTO `route_map` VALUES ('55', '60', '5', 'dsxfds', 'College Square, Kolkata, West Bengal, India', '00:00:30', null, '1423661425', null, '(22.572646, 88.36389499999996)', 'a:6:{i:0;s:31:\"(22.9737227, 83.44184680000001)\";i:1;s:31:\"(22.9737239, 84.44184760000007)\";i:2;s:31:\"(22.9737239, 85.44184799999994)\";i:3;s:31:\"(22.9737249, 86.44184900000005)\";i:4;s:31:\"(22.9737227, 87.44184760000007)\";i:5;s:31:\"(22.9737211, 89.44184689999997)\";}', '0.000', '02/11/2015', '0', '0');

-- ----------------------------
-- Table structure for `sport`
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `sport_name` varchar(50) NOT NULL,
  `sport_parentcategory` bigint(255) NOT NULL,
  `sport_desc` text NOT NULL,
  `isactive` int(2) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL,
  `imag_name` varchar(50) NOT NULL,
  `banner_image` varchar(50) DEFAULT NULL,
  `additional_image` varchar(50) DEFAULT NULL,
  `isfeatured` int(2) DEFAULT '0',
  `tag` text,
  `show1` int(2) DEFAULT '0',
  `connectionpage_name` varchar(100) DEFAULT NULL,
  `point` int(11) DEFAULT NULL COMMENT '1=>Single; 2=>Multiple',
  `show_point` int(11) DEFAULT NULL COMMENT '1=>Single; 2=>Multiple',
  `road_type` int(11) DEFAULT NULL COMMENT '1=>Off Road; 2=>On Road',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES ('2', 'ROAD', '48', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">On the road again&sbquo;&Auml;&para;We all love runners who slap the concrete, stomping down the earth for reasons only road runners can understand. Torqk&sbquo;&Auml;&ocirc;d knows the commitment it takes to wake up (sometimes seven days a week), lace up the shoes and run with the wind. We are behind the killer relays that pop up all over the earth.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">The Road was created for all those who run and it was the place that most of us started our journey as runners. Torqk&sbquo;&Auml;&ocirc;d is the place to enter our &sbquo;&Auml;&uacute;We Dare Ya&sbquo;&Auml;&ugrave; section where you compete with other runners in different challenges on the road. Sign up, create your own group and start your own running event and see what happens next. See you on the road soon!</span></p>\r\n', '1', '270', '1400674351.png', null, '1400307108.jpg', '1', '', '1', 'ROAD', '2', '1', '2');
INSERT INTO `sport` VALUES ('4', 'JUMP', '0', '<p>The dictionary gives the following definition for the verb, jump: verb \\&Agrave;&agrave;j&hellip;&ocirc;mp\\: 1a : to spring into the air : leap; especially : to spring free from the ground or other base by the muscular action of feet and legs. Torqkd.com defines jump with the following: adrenaline rush, base, antennae, span, earth, bungee, cliff, sky, bird&sbquo;&Auml;&ocirc;s-eye view, hell yeah, gravity, vertical, thrills, rig, chute, canopy, water, speed, airplane, wings, squirrel suit, fly, etc. Jump will bring our Torqk&rsquo;d members some of the baddest GoPro shots on the planet. We are excited to see our jumpers utilize our Log a Flight app and post it for others to see flights in live time. So log in to your Torqk&rsquo;d profile and get started.</p>\r\n', '1', '7', '1393326501.png', null, '1396604565.jpg', '1', 'Base,Bungee,Cliff,Sky Dive,Wingsuit', '1', '', '1', '1', '1');
INSERT INTO `sport` VALUES ('5', 'BUNGEE', '4', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Two words that come into play with bungee&ndash;free-fall and rebound. Sounds like a great time to us. Log in to our Torqk&sbquo;&Auml;&ocirc;d Events Section, place your bungee jumping event online and see the masses come. Do you want to form a group of hot air and crane jumping buddies to spend the weekend falling from the sky? Then be our guests and log in now.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Some of the best videos around are the ones that free-fall toward the river below and then &mdash; bam the rebound pulls you right back up. So log in, create your profile, get social with some jump peeps and go connect, track and explore the world of bungee together.</span></p>\r\n', '1', '8', '1397561238.png', null, '1397561614.jpg', '1', '', '1', 'BUNGEE', '2', '2', '2');
INSERT INTO `sport` VALUES ('7', 'CLIMB', '0', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Torqk&rsquo;d has created the mecca social climbing experience online for all climbers on the face of this rock. The Climb section is a hub for all things climb, and for climbers to connect track and climb&ndash;trad climbers, naked and free climbers, boulderers, deep solo climbers, ice climbers and all other climbers of the crag. GPS your favorite 5.8 route here for others who dare ascend upon your climb or log in to our app online while climbing and record your route in live time to your Torqk&rsquo;d dashboard for others to check. Leave no rock unturned here. Meet fellow cragsters in your area or on an upcoming excursion to Joshua Tree in our social section to connect, track and climb. Pick your poison from one of our various climbing sports and we&rsquo;ll see you on the rock</span></p>\r\n', '1', '17', '1393333992.png', null, '1395741926.jpg', '1', 'Trad,Naked,Ice,Deep Water solo,Boulder & Indoor', '1', '', '2', '1', '1');
INSERT INTO `sport` VALUES ('8', 'ICE', '7', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">When we think of ice and blades &mdash; no offense to ice-skating &mdash; but ice climbing is what comes to our mind! Ice is a section that we created for the bad *%@!&amp; that start their day out with crampons and ice axe in hand. If you are the one who gets a thrill ascending iced-out H2O falls, frozen rock faces, iced slabs and cliffs, then Torqk&rsquo;d is the online ice mecca for you.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Torqk&rsquo;d hails all of you who conquer any inclined ice form as officially bad !*$. Torqk&rsquo;d TV and our pics section were created for climbers like you, so log in and post your ice photos to your profile for other ice climbers to see. Launch a GoPro vid on Torqk&rsquo;d TV and hook up with other ice climbers anywhere on the planet through our Torqk&rsquo;d Chat Portal</span></p>\r\n', '1', '21', '1393334061.png', null, '1397565080.jpg', '1', '', '1', 'ICE', '1', '1', '1');
INSERT INTO `sport` VALUES ('9', 'TRAD', '7', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Are you a traditionalist when it comes to climbing? Do you knot the figure of 8, clove hitch, munter hitch or slip knot? Do you have a strong sense of exploration and practice leaving nature as you found her when climbing one of her faces? Then Trad is devoted to you.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">With all the different styles of climbing out there, it&rsquo;s always good to keep it traditional too. Log in to your Torqk&rsquo;d dashboard and post your routes all year long for your friends to see and other climbers out there looking for someone like you to climb with.</span></p>\r\n', '1', '20', '1394434887.png', null, '1397565230.jpg', '1', '', '1', 'TRAD', '1', '1', '1');
INSERT INTO `sport` VALUES ('10', 'RIDE', '0', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Whether the riding surface you partake in is the land, sky, powder or H2O, Torqk&rsquo;d has got every element covered. Whether your session takes place hang gliding, on a board, on a wave, a deck, river rapids, powder, a bicycle seat etc, we&rsquo;ve got a spot here for you. Carve into our ride section, post your action pics for other riders to see your hardcore vids on Torqk&sbquo;&Auml;&ocirc;dTV, get social with other fellow riders in your area and connect, track and explore.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Oh and afterward of course, go suck some suds down at your favorite watering hole.</span></p>\r\n', '1', '23', '1394434959.png', null, '1396603056.jpg', '1', 'BMX, Mountain, Road, SK8, SK8 Park, Street, Vert', '1', '', '1', '1', '1');
INSERT INTO `sport` VALUES ('11', 'BMX', '48', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">BMX! No matter what poison you pick when riding your BMX&ndash;from flatland BMX to freestyle BMX&ndash;it commands the five disciplines as follows: street, park, vert, trails, and flatland. This is a top-extreme sport that Torqk&sbquo;&Auml;&ocirc;d digs. Naturally at Torqk&sbquo;&Auml;&ocirc;d, we prefer you to be out riding a session on a dirt kicker in what used to be your parents&sbquo;&Auml;&ocirc; backyard, but when you&sbquo;&Auml;&ocirc;re not, Torqk&sbquo;&Auml;&ocirc;d is where you can get social and meet up with other riders in your urban or suburban area.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">We created a post-your-favorite trick for riders of the land like yourself. It is your BMX duty to log in and push this sport in a way that it hasn&rsquo;t been pushed enough online. It&rsquo;s definitely a Torqk&sbquo;&Auml;&ocirc;d favorite and we want to see BMX local groups popping up everywhere across the earth. Now bring it and make it happen.</span></p>\r\n', '1', '26', '1394435048.png', null, '1400307447.jpg', '1', '', '1', 'BMX', '2', '1', '1');
INSERT INTO `sport` VALUES ('12', 'SKY DIVE', '4', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">When Torqk&sbquo;&Auml;&ocirc;d thinks sky, it&rsquo;s always a good thing. We have laid it out here for all riders who &sbquo;&Auml;&uacute;Ride the Sky.&sbquo;&Auml;&ugrave; This category was created for all gliders who slice through the atmosphere while hang gliding like a bird in the wind.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Riding that hot-air balloon across the skies, lighting that fire and blazing a trail through the clouds is something we totally dig. What a way to check the scenery from high in the sky.</span></p>\r\n', '1', '10', '1398762817.png', null, '1396598001.jpg', '1', ' Hang Glide, Hot Air Ballon, Sky Drive, Base Jump', '1', 'SKY DIVE', '2', '2', '1');
INSERT INTO `sport` VALUES ('13', 'HOT AIR BALOON', '20', '', '1', '30', '1394435179.png', null, '1400317539.jpg', '1', '', '1', 'HOT AIR BALOON', '1', '1', '1');
INSERT INTO `sport` VALUES ('14', 'HANG GLIDE', '20', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Try to tell us at Torqk&sbquo;&Auml;&ocirc;d that foot-launching a non-motorized aircraft that sends you soaring into the wind like a hawk isn&rsquo;t the only way to fly. It&rsquo;s so killer that with modern-day-gear, you can literally ride the wind and soar for hours, hit updrafts, throw sweet moves and glide across valleys for miles. Can you say radical?&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">If you hang glide, you know that you&rsquo;re down, so why should we have your feet on the ground? Log into Torqk&sbquo;&Auml;&ocirc;d, create a profile, pick your outdoor sports and show us your GoPro Ride in the Sky Video. We are waiting, so get on it!</span></p>\r\n', '1', '31', '1394435230.png', null, '1400317826.jpg', '1', '', '1', 'HANG GLIDE', '1', '1', '1');
INSERT INTO `sport` VALUES ('15', 'H2O', '10', '<p>Whether the riding surface you partake in is the land, sky, powder or H2O, Torqk&rsquo;d has got every element covered. Whether your session takes place hang gliding, on a board, on a wave, a deck, river rapids, powder, a bicycle seat etc, we&rsquo;ve got a spot here for you. Carve into our ride section, post your action pics for other riders to see your hardcore vids on Torqk&sbquo;&Auml;&ocirc;dTV, get social with other fellow riders in your area and connect, track and explore. <span class=\"example1\" style=\"display: inline;\"> Oh and afterward of course, go suck some suds down at your favorite watering hole.</span></p>\r\n', '1', '32', '1394435298.png', null, '1395742976.JPG', '1', ' Kite Board, SUP, Surf, Wake Board, Water Ski, Wind Surf, Boogie, Kayak', '1', 'H2O', '1', '1', '1');
INSERT INTO `sport` VALUES ('16', 'BOOGIE BOARD', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Boogie: A great ride, where Torqk&sbquo;&Auml;&ocirc;d prefers big-ass waves, a small retangular foam vessel and the ability to paddle out into the ocean and ride. Anytime you can ride the ocean, we are all for it! Hell, we demand it from all Torqk&sbquo;&Auml;&ocirc;d members. Get out and Ride the ocean.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">And while you are at it keep the ocean clean. We demand that too. So when you are done riding the Wedge at Balboa Island in Newport Beach, log into your mobile app and post pics of your good times riding your ocean.</span></p>\r\n', '1', '33', '1394435348.png', null, '1400320411.jpg', '1', '', '1', 'BOOGIE', '1', '1', '1');
INSERT INTO `sport` VALUES ('17', 'WIND SURF', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">At Torqk&sbquo;&Auml;&ocirc;d, we call wind surfing a double whammer! You ride the wind and the waves. You couldn&rsquo;t possibly have anything in the world to complain about with this kind of luxury. Torqk&sbquo;&Auml;&ocirc;d has created a community for windsurfers on any and all coasts, to meet up in the morning at high tide, skip work, school or that damn lunch date with grandma (no offense) and paddle out for a killer riding session.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">To keep it simple here, so you can get back out, log in, create a profile, log your favorite session, hook up with other wind riders in your area with other members in different regions to ride with. According to the American Windsurfing Industries Association, there are more than 1.2 million windsurfers in the United States &mdash; and millions more around the world. This is why Torqk&sbquo;&Auml;&ocirc;d was created, for you to meet others that ride and head over to Maui for big winds and great waves.</span></p>\r\n', '1', '34', '1394435394.png', null, '1400320631.jpg', '1', '', '1', 'WIND SURF', '2', '1', '1');
INSERT INTO `sport` VALUES ('18', 'POWDER', '10', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Powder&ndash;designed and created for all things that ride human-powered vessels on powder. This is the online spot for those who choose to ride backcountry, slalom, kickers, moguls, runs, parks, half-pipes and big air. If you also &ldquo;SPEAK or SPOUT&rdquo; any of the following vocabulary terms: traversing, rad, herringbone, hypothermia, off the grid, Mctwist, fall-line, carving (yum, turkey!), snow day, edge, switch-stance, etc., then you&rsquo;re obligated to log into Torqkd.com right now, create a profile, log your action sports, post some bad mofo pics and hit up Torqk&sbquo;&Auml;&ocirc;d TV.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">It&rsquo;s that simple, and while you&sbquo;&Auml;&ocirc;re at it, let&rsquo;s keep the meaning of the word, social, true and get social with another skier or rider to go out with on your next session. This allows Torqk&sbquo;&Auml;&ocirc;d to keep it real when throwing out the term, social.</span></p>\r\n', '0', '42', '1394435474.png', null, '1396599281.jpg', '1', 'Free Style, Heli, Park & Ride, Ski, Snowboard, XC Ski', '1', '', '2', '1', '1');
INSERT INTO `sport` VALUES ('19', 'XC SKI ', '18', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">XCSki: At Torqk&sbquo;&Auml;&ocirc;d, we call it &sbquo;&Auml;&uacute;Touring on Skis.&sbquo;&Auml;&ugrave; Of course, if you want to tour the outdoors around you, you&sbquo;&Auml;&ocirc;d better bring some endurance with you. Want to talk about an action sport? XC skiing requires the use of every muscle in your body. At Torqk&sbquo;&Auml;&ocirc;d, when you log in and create your profile, we expect you to use every muscle on Torqkd.com.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">There is no better way to challenge yourself and push past your limits on your favorite cross-country course than to log your favorite route on your dashboard for other Torqk&sbquo;&Auml;&ocirc;d members to see, post your miles and time, allowing other members to race you and try to beat your time. If racing isn&rsquo;t your cup of tea, how about going &sbquo;&Auml;&uacute;Powder Social&sbquo;&Auml;&ugrave; and meeting up with other XC skiers in your area? Log in and get started now.</span></p>\r\n', '1', '43', '1394435516.png', null, '1400321523.jpg', '1', '', '1', 'XC SKI', '1', '1', '1');
INSERT INTO `sport` VALUES ('20', 'SKY', '10', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">When Torqk&sbquo;&Auml;&ocirc;d thinks sky, it&rsquo;s always a good thing. We have laid it out here for all riders who &sbquo;&Auml;&uacute;Ride the Sky.&sbquo;&Auml;&ugrave; This category was created for all gliders who slice through the atmosphere while hang gliding like a bird in the wind.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Riding that hot-air balloon across the skies, lighting that fire and blazing a trail through the clouds is something we totally dig. What a way to check the scenery from high in the sky.</span></p>\r\n', '1', '29', '1394435561.png', null, '1397566371.jpg', '1', '', '1', 'RIDE SKY', '1', '1', '1');
INSERT INTO `sport` VALUES ('21', 'HIKE', '0', '<p>Hike: Our section created for any and all walks of life, trails, slopes, peeps, mountains, etc. It&rsquo;s devoted to those who stray well off the old beaten path, those who hike for the sheer joy of seeing the earth as it was meant to be seen without the everyday bustle of cars, buildings, noise, pollution, people and anything electronic (besides that GPS).<span class=\"example1\" style=\"display: inline;\"> Whether your hike includes a large backpack, days on trails, sleeping in tents, mountaineering visions at your base camp of you hitting that mountain peak, your dog strolling at your side on a trail or finding a secret geo-cache with friends in an urban area, HIKE is your spot. As a matter of fact, at Torqk&rsquo;d, we think this section will generate thousands of pictures of killer sunsets, steep trailside shots of canyons, look-out views and panoramic pics of every hike on the planet. Torqk&rsquo;d was created for you to log in and find other hikers in your area to enjoy all areas of hiking. Let&sbquo;&Auml;&ocirc;s get progressive, log in and connect, track and hike.</span></p>\r\n', '1', '49', '1394435620.png', null, '1396603624.jpg', '1', 'Canyoneering, Cave, GeoCache, Hike, Mountaineer, Snowshoe', '1', '', '2', '1', '1');
INSERT INTO `sport` VALUES ('22', 'SNOW SHOE', '21', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">It&sbquo;&Auml;&ocirc;s time to get your snowshoe on. We all know that when that powder falls from the sky, it&rsquo;s a magical time. And this is the time to break out the shoes, grab some friends and go snowshoeing. Snowshoeing is both an exhilarating way to view the mountains, the landscape, the terrain, the wildlife, and get the workout of your dreams.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Torqk&rsquo;d has designed our metrics dashboard for you to log your route, miles shoed GPS your adventure and post pics of those majestic views you took while plowing through that new powder storm. Torqk&rsquo;d looks forward to seeing you out in the back country and sharing via the social portal. Happy snowshoeing.</span></p>\r\n', '1', '50', '1394435671.png', null, '1397566811.jpg', '1', '', '1', 'SNOW SHOE', '1', '1', '1');
INSERT INTO `sport` VALUES ('23', 'CAVE', '21', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">The correct noun would be spleunking, but we went with Cave. It sounds a little eeire, with some mystery to it as it should sound. You gotta be wild to be exploring the insides of Mother Nature so we had to add Cave to the list. If H20, pitch and squeeze are part of your vocabulary then you can bet you&rsquo;re in the right spot.</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">&nbsp;Torqk&rsquo;d digs all those who explore or photograph the beauty of caves and felt the NEED to have a social media site dedicated to caving and spleunking so you could meet up with others who dig the mysteries of caves. And yes, we will be expecting out-of-this world videos and pics for all of us to view. So bring it!!</span></p>\r\n', '1', '51', '1394435716.png', null, '1397566990.jpg', '1', '', '1', 'CAVE', '2', '1', '1');
INSERT INTO `sport` VALUES ('41', 'NAKED', '7', '<p>sdgddf gf dfg dfg fgf gfhgh</p>\r\n', '1', '22', '1401268943.png', null, '1397565674.jpg', '1', '', '1', 'NAKED', '1', '1', '1');
INSERT INTO `sport` VALUES ('42', 'BOULDER', '7', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Whether your style of bouldering is a big old natural slab of rock in Joshua Tree Natty Park, artificial boulders at the local climbing spot or at the base of a large face, Torqk&rsquo;d is the online spot for you to post the problems you have encountered on the rock. You can also describe the sequence of moves you made that required sheer endurance, power and problem solving.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Climb into our section and post your top route to see if you hail as king or queen of your favorite problem. Meet other boulderers on our social side to connect, track and route all your climbs around the world.</span></p>\r\n', '1', '19', '1401268165.png', null, '1397565953.jpg', '1', '', '1', 'BOULDER & INDOOR', '1', '1', '1');
INSERT INTO `sport` VALUES ('47', 'RUN', '0', '<p>Do you get off on running through mud? How about climbing up, over and through obstacles while running with thousands of others on the same course? Are you that committed type who runs with a group of teammates in funky attire while dressing up your vehicle? Are you that runner who runs in 100-plus degrees in an ultra race with the ultra satisfaction of running over 50-plus miles? Whether you pound the concrete, dirt road, mud, obstacle, marathon, triathlon, trails, hills and mountain paths, Torqk&rsquo;d has created the online social media trail to connect, track and explore with others who dare to run like you no matter what elements are thrown at you. Come run off the well-beaten path and create a group of ultra-distance runners in your area, or find another peer in your area training for the Ironman Race. Also, come in and use our cutting-edge iPhone and Android app to log your run in real time for other runners to see on your Torqk&rsquo;d dashboard</p>\r\n', '1', '1', '1394615604.gif', null, '1396604341.jpg', '1', '5,10,26.2 & iron,obstacle,road', '1', '', '2', '1', '1');
INSERT INTO `sport` VALUES ('48', 'LAND', '10', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Yep all things land. From two-wheel carbon fiber super-fly frames to four-wheel decks taking on all forms of earth. From dirt to plywood, gaps and concrete, this section of land is devoted to those who ride a deck, roller and seat. Whether you are climbing that big a*% hill or bombing down the face of the mountain, we dare you to jump into our King of the Mountain section and compete with other riders on that steep trail that acts as a ski run during the winter months and is now converted into a playground for your two-wheel ride.</span></p>\r\n', '1', '24', '1396605059.png', null, '1396605075.jpg', '1', ' Hang Glide, Hot Air Ballon, Sky Drive, Base Jump', '1', 'LAND', '1', '1', '1');
INSERT INTO `sport` VALUES ('49', 'GEO CACHE', '21', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Geo-Cache: We can&rsquo;t think of a better place to post about your adventurous treasure hunts, hide-and-seek missions, scaling high mountains, urban-sidewalk walking or tree climbing odysseys than right here at Torqkd.com. If you are questioning whether the sport of geo-cache is Torqk&rsquo;d worthy, you&rsquo;ve got another thing coming. If you have geo-cached for some time, then you can relate.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">We have all been on hair-raising, steep mountainsides, digging through sagebrush and pine trees to find our cache. We&rsquo;ve also been chased by dogs, trusting our GPS unit right up a tree in someone&rsquo;s yard, seeking out our treasure. So, if this is your first time hearing of geo-cache, log in to your Torqk&rsquo;d profile and find fellow cachers in your area and they will take you on some real adventures.</span></p>\r\n', '1', '53', '1399291200.png', null, '1400318298.jpg', '1', '', '1', 'GEO CACHE', '2', '1', '1');
INSERT INTO `sport` VALUES ('52', 'OBSTACLE', '47', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">We were going to call this category Mud but went with Obstacle. Mud sounds dirty and we like that. Maybe we should put it to a vote for you and the rest of our epic Torqk&rsquo;d users to decide. Let the people decide. What&rsquo;s the definition of an obstacle? something that impedes progress or achievement. This is what our Torqk&rsquo;d obstacle runners tear through. And MUD! Up and down muddy &amp; wet slides, under ropes sloshed in mud, up walls, stairs and a variety of other barriers. As the runners heave themselves over and through obstacles, they are also lending a hand to others.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">People who they don&sbquo;&Auml;&ocirc;t even know but share a connection with as they slosh through the muck purely for the joy of and thrill of completing such an epic event. This is what we call &sbquo;&Auml;&uacute;Killer Torqk&sbquo;&Auml;&ocirc;d.&sbquo;&Auml;&ugrave; It takes fortitude and drive, crawling under the nets and through the mud for the sake of getting back up and running. It makes the survivor courses look like playgrounds, which is why Torqk&sbquo;&Auml;&ocirc;d digs it. We dare you to log into our killer social media site, go to the experience page and create a profile. Slap your pictures down on the pics page and show others how much fun they could have fighting their way through any and all obstacles on that next run!</span></p>\r\n', '1', '4', '1400671745.png', null, '1397128307.jpg', '1', '', '1', 'OBSTACLE', '2', '1', '1');
INSERT INTO `sport` VALUES ('53', 'ROAD', '47', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">On the road again&sbquo;&Auml;&para;We all love runners who slap the concrete, stomping down the earth for reasons only road runners can understand. Torqk&sbquo;&Auml;&ocirc;d knows the commitment it takes to wake up (sometimes seven days a week), lace up the shoes and run with the wind. We are behind the killer relays that pop up all over the earth.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">The Road was created for all those who run and it was the place that most of us started our journey as runners. Torqk&sbquo;&Auml;&ocirc;d is the place to enter our &sbquo;&Auml;&uacute;We Dare Ya&sbquo;&Auml;&ugrave; section where you compete with other runners in different challenges on the road. Sign up, create your own group and start your own running event and see what happens next. See you on the road soon!</span></p>\r\n', '1', '3', '1397129075.png', null, '1397129993.jpg', '1', '', '1', 'ROAD', '2', '2', '2');
INSERT INTO `sport` VALUES ('55', 'MARATHONS', '47', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">There is something that we feel you need to know first at Torqk&sbquo;&Auml;&ocirc;d headquarters. We wanted to originally start an outdoor travel agency. Yep, it&sbquo;&Auml;&ocirc;s true and you runners are going to be vital in getting us to that goal. Log into our online Torqk&sbquo;&Auml;&ocirc;d community of runners, create a group for all running races on the coast opposite to where you reside, register for those courses and fly over with the Torqk&sbquo;&Auml;&ocirc;d travel agency.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">All you have to do is log in, head over to our jump section, connect with a skydiver or wingsuiter and they will get you to that starting line in style. This type of thing is exactly what Torqk&sbquo;&Auml;&ocirc;d was created for. We make it simple to connect with other runners, build a social media community and take you to your ultimate running destination. This is the dream behind Torqk&sbquo;&Auml;&ocirc;d. Now lace up, search for your favorite run, compete with others for the best time on your 12-mile run and go have a black and bleu bacon burger with some suds afterward. Connect, track and run with Torqk&sbquo;&Auml;&ocirc;d.</span></p>\r\n', '0', '10', '1397130199.png', null, '1397130219.jpg', '0', null, '0', null, '1', '1', '1');
INSERT INTO `sport` VALUES ('56', 'ULTRA DISTANCE', '47', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">What&sbquo;&Auml;&ocirc;s the first thing that comes to our mind when you say ultra distance or Big Distance Marathon? Tired? Of course not! Killer is what rolls through our craniums and so does extreme running. When it comes to Big Distance, this is the extreme sport of running. It&sbquo;&Auml;&ocirc;s as extreme as you can get!&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Since you guys and gals are such bad #^*%!, Torqk&sbquo;&Auml;&ocirc;d is definitely the social media experience for you. We can see it now when you log into our We Dare Ya section. Get social with Torqk&sbquo;&Auml;&ocirc;d and make friends with other members who run marathons to start a group for runners training for the Ultra Big Distance. When you get social with Torqk&sbquo;&Auml;&ocirc;d, you connect, track and run big! This is where you create a community of runners hitting the trails, sand, concrete and training big. Post your runs on our Killer Dashboard to start a log of your training where others can view your runs. Log into our app and watch it show up in real time. When it comes to bringing it Big Distance, bring it and Torqk&sbquo;&Auml;&ocirc;d digs it!</span></p>\r\n', '1', '6', '1400672353.png', null, '1397130833.jpg', '1', '', '1', 'ULTRA', '1', '1', '1');
INSERT INTO `sport` VALUES ('57', 'CLIFF', '4', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Definitely an adventurous sport in the eyes of Torqk&sbquo;&Auml;&ocirc;d, where we recommend a cliff to dive from and some H2O below if you&rsquo;re not followed by a chute. The adrenaline comes from that leap off of that cliff, getting airborne and making sure there is some depth to the body of aqua below.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Isn&rsquo;t it time the World Wide Web had a playground for cliff-divers to come and meet other cliff-divers who catch height before hitting the water? Torqk&sbquo;&Auml;&ocirc;d thought so, now get on board, create a group and get a meet up at Colliding Rivers Glide, Oregon and get to diving.</span></p>\r\n', '1', '9', '1397562170.png', null, '1397562228.jpg', '1', '', '1', 'CLIFF', '1', '1', '1');
INSERT INTO `sport` VALUES ('58', 'BASE', '4', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">B.A.S.E. &mdash; all hail the base jumper. Torqk&rsquo;d has reserved a spot for all high-flying BASE jumpers in our &sbquo;&Auml;&uacute;JUMP&sbquo;&Auml;&ugrave; section, due to the hair-raising, killer views and radical flights you will share with our community of open air fellow peers. There is NO better way to meet other jumpers online than to log into your Torqk&sbquo;&Auml;&ocirc;d profile and post your GPS location and watch those in your area populate in our chat section.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Hell, you might even be the first in your area who pushes all boundaries when you jump from that bridge down in Moab, Utah or that 876-foot vertical drop at the New River Gorge Bridge in West Va. Place Link here for high flying Base Jumper T Shirts (B.A.S.E. Torqk&sbquo;&Auml;&ocirc;d) shirts.</span></p>\r\n', '1', '11', '1397562797.png', null, '1397562870.jpg', '1', '', '1', 'BASE', '1', '1', '1');
INSERT INTO `sport` VALUES ('59', 'WING SUIT', '4', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Wing: A 200 percent kick-ass action sport. Wing-suiting Check List: Red Bull &mdash; check, gut check &sbquo;&Auml;&igrave; check, wings &mdash; check, GoPro on &mdash; check, no need for a flight simulator &mdash; check, intense secretion of adrenaline from the adrenal glands &mdash; check. Hell yeah.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">This sport is a vital reason that Torqk&sbquo;&Auml;&ocirc;d created &sbquo;&Auml;&uacute;King of the Flight&sbquo;&Auml;&ugrave; status and personal dashboards with flights jumped and flown for other Torqk&sbquo;&Auml;&ocirc;d members to view. In our eyes, you have a duty to show others your flight from a birds-eye perception to drive others to leap with no bounds.</span></p>\r\n', '1', '12', '1397563005.png', null, '1397563134.jpg', '1', '', '1', 'WING SUIT', '1', '1', '1');
INSERT INTO `sport` VALUES ('60', 'DEEP WATER', '7', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Torqkd.com is pushing Deep Water Soloing or as we dub it, &ldquo;Deep H2O Solo&rdquo; or &sbquo;&Auml;&uacute;psicobloc&rdquo;, to the masses. By far it&rsquo;s the purest form of climbing there is and will keep your ass safe when climbing naked up a face the size of Mt St. Helen&rsquo;s but with a giant body of H2O below you. One of Torqk&rsquo;ds favorite styles of climbing, with high, technically difficult routes on seaside cliffs all around our planet.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">We strongly urge that you utilize a giant body of H2O under you when climbing free like this. This form of climbing began in the early &rsquo;70s, but it has really taken off since the mid &rsquo;90s (the same time grunge had overtaken the radio airwaves). We felt it necessary and our duty to devote a section to all those who use the H2O-SOLO force when tempting two of Mother Earth&rsquo;s great creations&ndash;a giant face to climb and the powerful ocean. Post your pics and vids on your Torqkd.TV Tab profile and meet other Dep H2O soloist&rsquo;s on the block to go climbing with.</span></p>\r\n', '1', '18', '1397564411.png', null, '1397564672.jpg', '1', '', '1', 'DEEP WATER SOLO', '1', '1', '1');
INSERT INTO `sport` VALUES ('61', 'HIKE', '21', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Hike: Our section created for any and all walks of life, trails, slopes, peeps, mountains, etc. It&rsquo;s devoted to those who stray well off the old beaten path, those who hike for the sheer joy of seeing the earth as it was meant to be seen without the everyday bustle of cars, buildings, noise, pollution, people and anything electronic (besides that GPS).</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">&nbsp;Whether your hike includes a large backpack, days on trails, sleeping in tents, mountaineering visions at your base camp of you hitting that mountain peak, your dog strolling at your side on a trail or finding a secret geo-cache with friends in an urban area, HIKE is your spot. As a matter of fact, at Torqk&rsquo;d, we think this section will generate thousands of pictures of killer sunsets, steep trailside shots of canyons, look-out views and panoramic pics of every hike on the planet. Torqk&rsquo;d was created for you to log in and find other hikers in your area to enjoy all areas of hiking. Let&sbquo;&Auml;&ocirc;s get progressive, log in and connect, track and hike.</span></p>\r\n', '1', '54', '1397567289.png', null, '1397567265.jpg', '1', '', '1', 'HIKE', '1', '1', '1');
INSERT INTO `sport` VALUES ('62', 'MOUNTAINEERING', '21', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Mountaineering: Yep, the do-all sport of climbing, hiking and or skiing on any and all mountain fronts. The goal: reaching the highest point of that mountaintop and having the drive and guts to get there. A must-do for all outdoor lovers. We call it the Mountain Triathlon.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">it&rsquo;s rock, snow or ice, it&rsquo;s all about the top. At Torqk&rsquo;d we want to hear the stories and see the GoPro video of that final ascent to the peak of the mountain, so log in and do your duty to motivate others to summit that peak.</span></p>\r\n', '1', '52', '1397568051.png', null, '1397568001.jpg', '1', '', '1', 'MOUNTAINEERING', '1', '1', '1');
INSERT INTO `sport` VALUES ('63', 'TRAIL', '47', '<p>Trail running is a sport which consists of running and hiking over trails. In the United Kingdom and Irish Republic it is called mountain or fell running. It differs from road running and track running in that generally takes place on hiking trails, often in mountainous terrain, where there can be much larger ascents and descents. It is difficult to definitively distinguish trail running from cross country running. In general, however, cross country is an IAAF governed discipline that is typically raced over shorter distances (rarely over 12 kilometers), whereas trail running is loosely governed, and run over longer routes.</p>\r\n\r\n<p>The ranks of trail runners are increasing annually. They have grown from 4.5 million to more than 6 million in the United States alone between 2006 and 2012. The amount of organized trail races has grown exponentially over the past few years throughout the world, now well into the hundreds in North America alone. Runners often cite less impact stress compared to road running, as well as the landscape and non-urban environment, as primary reasons for preferring trail running. This move to nature is also reflected in a large increase in competitors in non-traditional/off-road triathlons and adventure racing over the past five years.</p>\r\n', '1', '2', '1398757687.gif', null, '1398757619.jpg', '0', '', '0', 'TRAIL', '1', '1', '1');
INSERT INTO `sport` VALUES ('64', '5, 10, 26.2 & IRON', '47', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">There is something that we feel you need to know first at Torqk&sbquo;&Auml;&ocirc;d headquarters. We wanted to originally start an outdoor travel agency. Yep, it&sbquo;&Auml;&ocirc;s true and you runners are going to be vital in getting us to that goal. Log into our online Torqk&sbquo;&Auml;&ocirc;d community of runners, create a group for all running races on the coast opposite to where you reside, register for those courses and fly over with the Torqk&sbquo;&Auml;&ocirc;d travel agency.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">All you have to do is log in, head over to our jump section, connect with a skydiver or wingsuiter and they will get you to that starting line in style. This type of thing is exactly what Torqk&sbquo;&Auml;&ocirc;d was created for. We make it simple to connect with other runners, build a social media community and take you to your ultimate running destination. This is the dream behind Torqk&sbquo;&Auml;&ocirc;d. Now lace up, search for your favorite run, compete with others for the best time on your 12-mile run and go have a black and bleu bacon burger with some suds afterward. Connect, track and run with Torqk&sbquo;&Auml;&ocirc;d.</span></p>\r\n', '1', '5', '1398762498.png', null, '1398762604.jpg', '1', '', '1', '5, 10, 26.2 & IRON', '1', '1', '1');
INSERT INTO `sport` VALUES ('65', 'MOUNTAIN', '48', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Mountain biking directions: Turn on GoPro, get going and then post! Easy enough? Torqk&sbquo;&Auml;&ocirc;d wanted to keep it simple so we could all get back to our favorite dirt-ski run and bomb down the trail. The only requirements when bombing need to be as follows: Red Bull, full suspension, helmet, !#%&amp;* of steel, pads, adrenaline intact and a beer at the bottom.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">The biggest recommendation we EXPECT is to log into Torqk&sbquo;&Auml;&ocirc;d, get your social on, form a group of riders, set up your own event and connect, track and bomb down the trail together. We also kindly request that you log into your live time app, hit the go button and post that ride in live time for others to view. Now get it done!</span></p>\r\n', '1', '25', '1398763698.png', null, '1398763679.jpg', '1', '', '1', 'MOUNTAIN', '2', '1', '1');
INSERT INTO `sport` VALUES ('66', 'SK8', '48', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">SK8! Whatever your favorite flavor of skating is, from vert to park, to street or a form of transportation, SK8 is the online park created for you. Torqk&sbquo;&Auml;&ocirc;d has been riding skateboards from short to ling, fat and skinny, for many years and has finally created an online social mecca to hook up with other skaters in your area to sidewalk surf the urban concrete jungle or local skate park with. We wanted to extend an invitation to you. Log into Torqk&sbquo;&Auml;&ocirc;d, create your profile, step into our Experience Page and check the digs of the site, hit the Ride Skate Tab and we dare ya to accept the Torqk&sbquo;&Auml;&ocirc;d Challenge and try to land our new trick of the month in under 50 slams. Also, get social and click on other riders in your area and post in our Forums Section.</span></p>\r\n', '1', '28', '1400319358.png', null, '1400319403.jpg', '1', null, '1', 'SK8', '2', '1', '1');
INSERT INTO `sport` VALUES ('67', 'VERT', '66', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Yep. Torqk&sbquo;&Auml;&ocirc;d demands big-ass air. Vert is king seven days a week and we want to see the pics posted on your profile for other riders of the open air and plywood to view. You know what is sometimes better than a pic? Yep, a GoPro video of your earth-slapping, vertical session slapped right onto Torqk&sbquo;&Auml;&ocirc;d TV for us all to view.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Didn&rsquo;t your mama teach you that sharing is caring? Isn&rsquo;t it time to set up your own little vert competition at your local skate park with other riders? Post the results in the &sbquo;&Auml;&uacute;Torqk&sbquo;&Auml;&ocirc;d Challenge&sbquo;&Auml;&ugrave; for all members to hail the winner, &sbquo;&Auml;&uacute;Vert King.&sbquo;&Auml;&ugrave; We have an obligation to take that big air and create a big-air community online here at Torqk&sbquo;&Auml;&ocirc;d for all riders to join, so let&sbquo;&Auml;&ocirc;s start creating community and buzz about Vert on Torqk&sbquo;&Auml;&ocirc;d.</span></p>\r\n', '1', '9', '1400319593.png', null, '1400319654.jpg', '1', null, '1', 'VERT', '1', '1', '1');
INSERT INTO `sport` VALUES ('68', 'SK8 PARK', '66', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">All things park. This section is dedicated to all deck riders who affiliate themselves with any of the following terms: caballerial, fakie, smith grind, nose grind, nollie, ollie, goofy foot, all flips lick, varial, heel, kick, laser, three-sixty and hard. Torqk&sbquo;&Auml;&ocirc;d wants to encourage you to log in and post your favorite trick under your profile for other skaters to view.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Load your concrete-park session GoPro vid on Torqk&sbquo;&Auml;&ocirc;d TV and plan a session with new riders in your area. This would all be after you get home from a long day of riding, after eating that turkey leg with Ramen and sucking down your fav beverage.</span></p>\r\n', '1', '9', '1400320003.png', null, '1400319971.jpg', '1', '', '1', 'PARK', '2', '1', '1');
INSERT INTO `sport` VALUES ('69', 'STREET', '66', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">My mom used to always say, &ldquo;Stay off the streets,&rdquo; but it&rsquo;s so hard with deck in hand! So if you can relate and your mom used to shout the same thing to you, then Torqk&sbquo;&Auml;&ocirc;d is definitely for you. We find it hard to create an outdoor social media website without the addition of street skating. Now some of you might view the term street skating as roller-skating or inline skating etc.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">No offense here, but when Torqk&sbquo;&Auml;&ocirc;d thinks street we think bus stops, rails, walls, gaps and curbs. Hitting the gap is what we think of. The cow says moo right? As a matter of fact, we can&rsquo;t imagine a site without the wordsmith grind on it or carving the hell out of a steep hill in the local avenues. If you haven&rsquo;t broken your pride, deck or bones, you need not apply. Now login, get social, build a giant street skating community, create a local group, post a street event at the boardwalk by the pier and let&rsquo;s ride all day and night.</span></p>\r\n', '1', '10', '1400320199.png', null, '1400320212.jpg', '1', null, '1', 'STREET', '2', '1', '1');
INSERT INTO `sport` VALUES ('70', 'WATER SKI', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Water ski: There is no skimming the surface here. Nope, we want you full-throttle here. There is no better place to go online than a social media site designed specifically for waterskiing and other outdoor action sports. Yep, Torqk&sbquo;&Auml;&ocirc;d was created for the water-skier like you.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">This is the place to show up and create a huge waterskiing event on your lake and ride all day. Torqk&sbquo;&Auml;&ocirc;d is your waterskiing community to make your own event happen. Hell, we hope you bring a water blob as well, after a killer session skimming the lake. Log in, jump into the water and get wet.</span></p>\r\n', '1', '41', '1400320736.png', null, '1400320791.jpg', '1', null, '1', 'WATER SKI', '2', '1', '1');
INSERT INTO `sport` VALUES ('71', 'KITE BOARD', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">A killer Torqk&sbquo;&Auml;&ocirc;d ride H20 sport where slingshot and launch are verbs that describe your extreme actions on the water. This sport is bad to the Torqk&sbquo;&Auml;&ocirc;d bones in your body. What other sport combines the moves of wakeboarding, windsurfing, surfing, paragliding, gymnastics and riding into one sport?</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Torqk&sbquo;&Auml;&ocirc;d raises its beer stein to all the women and men that ride this way. Wanna talk about killer Gopro moments too? Hell yeah, you know what you need to do. Log in and load it up to Torqk&sbquo;&Auml;&ocirc;d TV now! Yep we demanded it, now bring it!</span></p>\r\n', '1', '39', '1400321080.png', null, '1400321109.jpg', '1', null, '1', 'KITE BOARD', '2', '1', '1');
INSERT INTO `sport` VALUES ('72', 'WAKE BOARD', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Wake: No not that kind of a wake. This wake requires you to be really alive. Another bad-ass, triple-threat, Torqk&sbquo;&Auml;&ocirc;d sport that allows you to waterski, snowboard and surf at the same time. Three in one all day, that&rsquo;s a serious good time, with good peeps and good drinks afterward. The drinks require you to be 21 though. We had to put that in there.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Seriously though, Torqk&sbquo;&Auml;&ocirc;d strives to get you hooked up with our social network to meet other H2O riders to wake with. So get your boat, your three-stage rocker to jump higher with and get that pop off the wake. All Torqk&sbquo;&Auml;&ocirc;d riders, are requested to load all pics and vids to our Picture Party in your profile and on our GoPro &amp; Go, then load in the Torqk&sbquo;&Auml;&ocirc;d TV section.</span></p>\r\n', '1', '38', '1400321242.png', null, '1400321262.jpg', '1', null, '1', 'WAKE BOARD', '1', '1', '1');
INSERT INTO `sport` VALUES ('73', 'KAYAK', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Are you that cat or chika with nine lives that double-blade-paddles your human-powered torpedo from your spray deck down whitewater rapids that would scare the %#*^ out of a grizzly bear during salmon season? Do you dominate waterfalls that rival the great Niagara Falls or a weir that scares the Hoover Dam?</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">&nbsp;Whether your Kayak is put in use for polo, slalom, whitewater, surf, touring/expedition, light touring/day tripping, sprint/racing and general recreation, Torqk&sbquo;&Auml;&ocirc;d has created the social media collective geared toward kayakers in our ride H20 section for you to find other kayakers in your area so you can hit that waterfall together. Sidebar: All river-runners must turn on GoPro &amp; Go, then Post!!! Float on in and log your favorite rapid on our app in live time, post pics of that fish you caught while out on that inflatable kayak at your local lake and again get social and create a kayak group in your area through our connect, track and explore section.</span></p>\r\n', '1', '35', '1400322694.png', null, '1400322754.jpg', '1', null, '1', 'KAYAK', '1', '1', '1');
INSERT INTO `sport` VALUES ('74', 'SURF', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">One of the most fluid forms of riding on Torqk&sbquo;&Auml;&ocirc;d is dropping in on that double-overhead left swell, carving, off-the-lip into a backside floater. There&rsquo;s nothing on this earth more fluid than battling with the power of a wave, being barreled, shooting out the end, with the feeling of conquering natures most powerful force, the ocean. From the East coast, surfing Cocoa Beach, Florida, the West coast on the south side of the pier of Huntington Beach, to the pristine barrel at North Shore&rsquo;s Pipeline.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">GPS your wave, height, ride and submit your GoPro video of dropping in at the Mavericks Break and post on Torqk&sbquo;&Auml;&ocirc;d TV, for all of your fellow riders to view. Need someone to paddle out with? Check out our social section and connect, track and surf with a new rider with the same skill set as you. Torqk&rsquo;d will see you on a double overhead session and looks forward to your posts for all your friends to read.</span></p>\r\n', '1', '37', '1400322954.png', null, '1400322981.jpg', '1', null, '1', 'SURF', '1', '1', '1');
INSERT INTO `sport` VALUES ('75', 'SUP', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">What&rsquo;s SUP paddlers? Whether you&sbquo;&Auml;&ocirc;re out at the lake, dropping in on a wave or on a long paddling session, stand-up-paddling is in, and it&rsquo;s a great way to ride any surface of H2O these days. Torqk&rsquo;d has created a new venue for you to find fellow SUP riders to ride with from here onward. From the great lakes of the Midwest, to the inlets of the South, from the West and East coast, there are no boundaries to Stand Up and Paddle.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">We invite you to log into Torqk&sbquo;&Auml;&ocirc;d, GPS your ride for others to paddle and in live time GPS your SUP session for friends and others that want to check your favorite spot to ride. Torqk&rsquo;d looks forward to you logging in and getting social with other riders and connect, track and SUP.</span></p>\r\n', '1', '36', '1400323884.png', null, '1400323958.jpg', '1', null, '1', 'SUP', '2', '1', '1');
INSERT INTO `sport` VALUES ('76', 'H2O RAPIDS', '15', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Whitewater is a monster of an adrenaline sport at Torqk&sbquo;&Auml;&ocirc;d. We strongly recommend that when you decide to float into the class IV rapids of a river like Middle Fork or Salmon River, Idaho, you strap on that life jacket and Hold ON, because you&sbquo;&Auml;&ocirc;re in for one hell of an adrenaline kicking, heart-pumping, in-your-face thrill of a ride.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">Your whitewater rafting adventure might not allow you view the lush and glorious alpine scenery to your left and right, because you are holding on for your life, trying to prevent yourself from falling out of your vessel. We can feel the cold water hitting our faces now. Gotta go, Cataract Canyon in Moab on the Colorado and Green River is calling. It&sbquo;&Auml;&ocirc;s time to break out the GoPro.</span></p>\r\n', '1', '40', '1400325027.png', null, '1400325078.jpg', '1', null, '1', 'H2O RAPIDS', '2', '1', '1');
INSERT INTO `sport` VALUES ('77', 'SKI', '18', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">SKI: What comes to mind when Torqk&sbquo;&Auml;&ocirc;d thinks SKI? Not the bunny trail, though sometimes it all starts there. We think all types of skiing. Pick your poison. Is it cross-country? Yep, the outdoor powder sport where your human-powered engine better be running strong.&nbsp;</span><span class=\"example1\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(235, 235, 235); color: rgb(79, 79, 81); font-family: helvetica, arial; line-height: 20.399999618530273px; text-align: justify; display: inline;\">We visualize freestyle aerial sessions off of kickers in the back country or at the resort. Torqk&sbquo;&Auml;&ocirc;d also sees helicopters. No, we aren&rsquo;t talking about the bad-ass heli pilots at the Red Bull show, we are talking about heli skiing. You knew that we weren&rsquo;t going to leave that out!</span></p>\r\n', '1', '44', '1400325524.png', null, '1400325566.jpg', '1', null, '1', 'SKI', '2', '1', '1');
INSERT INTO `sport` VALUES ('78', 'SNOWBOARD', '18', '<p>SNOWBOARD</p>\r\n', '1', '45', '1400326059.png', null, '1400326002.jpg', '1', '', '1', 'SNOW BOARD', '2', '2', '2');
INSERT INTO `sport` VALUES ('80', 'FREE STYLE', '18', '<p>FREESTYLE</p>\r\n', '1', '46', '1400326179.png', null, '1400326226.jpg', '1', '', '1', 'FREE STYLE', '1', '1', '1');
INSERT INTO `sport` VALUES ('81', 'HELI', '18', '<p><span style=\"color: rgb(79, 79, 81); font-family: helvetica, arial; font-size: 13px; line-height: 20.399999618530273px; text-align: justify; background-color: rgb(235, 235, 235);\">Yep, &sbquo;&Auml;&uacute;High Mountain Heli Skiing.&sbquo;&Auml;&ugrave; You know that place up in the clouds where you need avalanche beacons, shovels, probes, packs, and of course that fellow experienced (we really stress this word) heli powder rider you met on Torqk&sbquo;&Auml;&ocirc;d, who just happened to be into heli skiing right in your local area? Now that&rsquo;s what we had in mind when we created Torqk&sbquo;&Auml;&ocirc;d.</span></p>\r\n', '1', '47', '1400326572.png', null, '1400326614.jpg', '1', null, '1', 'HELI', '1', '1', '1');
INSERT INTO `sport` VALUES ('82', 'PARK & RIDE', '18', '<p>PARK &amp; RIDE</p>\r\n', '1', '48', '1400326823.png', null, '1400326904.jpg', '1', null, '1', 'PARK & RIDE', '1', '1', '1');
INSERT INTO `sport` VALUES ('83', 'test test', '0', '<p>test</p>\r\n', '1', '12', '1410426726.jpg', null, '1410426786.jpg', '1', '', '1', 'test', '2', '1', '1');

-- ----------------------------
-- Table structure for `sportsbanner`
-- ----------------------------
DROP TABLE IF EXISTS `sportsbanner`;
CREATE TABLE `sportsbanner` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `sports_id` bigint(255) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sportsbanner
-- ----------------------------
INSERT INTO `sportsbanner` VALUES ('2', '34', '1394450115.jpg');
INSERT INTO `sportsbanner` VALUES ('3', '34', '1394450133.jpg');
INSERT INTO `sportsbanner` VALUES ('4', '34', '1394450150.jpg');
INSERT INTO `sportsbanner` VALUES ('5', '35', '1394450978.jpg');
INSERT INTO `sportsbanner` VALUES ('6', '35', '1394450991.jpg');
INSERT INTO `sportsbanner` VALUES ('7', '35', '1394451008.jpg');
INSERT INTO `sportsbanner` VALUES ('8', '35', '1394452264.jpg');
INSERT INTO `sportsbanner` VALUES ('9', '35', '1394452277.jpg');
INSERT INTO `sportsbanner` VALUES ('10', '34', '1394452442.jpg');
INSERT INTO `sportsbanner` VALUES ('11', '34', '1394452455.jpg');
INSERT INTO `sportsbanner` VALUES ('12', '34', '1394452670.jpg');
INSERT INTO `sportsbanner` VALUES ('13', '34', '1394452682.jpg');
INSERT INTO `sportsbanner` VALUES ('14', '34', '1394452670.jpg');
INSERT INTO `sportsbanner` VALUES ('15', '34', '1394452682.jpg');
INSERT INTO `sportsbanner` VALUES ('16', '34', '1394453201.jpg');
INSERT INTO `sportsbanner` VALUES ('17', '34', '1394453267.jpg');
INSERT INTO `sportsbanner` VALUES ('18', '34', '1394453278.jpg');
INSERT INTO `sportsbanner` VALUES ('19', '34', '1394453679.jpg');
INSERT INTO `sportsbanner` VALUES ('20', '34', '1394453690.jpg');
INSERT INTO `sportsbanner` VALUES ('21', '33', '1394453774.jpg');
INSERT INTO `sportsbanner` VALUES ('22', '32', '1394454410.jpg');
INSERT INTO `sportsbanner` VALUES ('23', '32', '1394454759.jpg');
INSERT INTO `sportsbanner` VALUES ('24', '30', '1394455920.jpg');
INSERT INTO `sportsbanner` VALUES ('25', '33', '1394532083.jpg');
INSERT INTO `sportsbanner` VALUES ('26', '33', '1394532135.jpg');
INSERT INTO `sportsbanner` VALUES ('27', '33', '1394532135.jpg');
INSERT INTO `sportsbanner` VALUES ('29', '34', '1394536132.jpg');
INSERT INTO `sportsbanner` VALUES ('30', '35', '1394536575.jpg');
INSERT INTO `sportsbanner` VALUES ('31', '39', '1394536908.jpg');
INSERT INTO `sportsbanner` VALUES ('57', '44', '1394540403.jpg');
INSERT INTO `sportsbanner` VALUES ('58', '44', '1394540497.jpg');
INSERT INTO `sportsbanner` VALUES ('59', '43', '1394539974.jpg');
INSERT INTO `sportsbanner` VALUES ('60', '43', '1394540036.jpg');
INSERT INTO `sportsbanner` VALUES ('61', '43', '1394540128.jpg');
INSERT INTO `sportsbanner` VALUES ('66', '45', '1394540752.jpg');
INSERT INTO `sportsbanner` VALUES ('67', '45', '1394540859.jpg');
INSERT INTO `sportsbanner` VALUES ('68', '45', '1394540971.jpg');
INSERT INTO `sportsbanner` VALUES ('70', '46', '1394609511.jpg');
INSERT INTO `sportsbanner` VALUES ('135', '54', '1397129426.jpg');
INSERT INTO `sportsbanner` VALUES ('137', '55', '1397130388.jpg');
INSERT INTO `sportsbanner` VALUES ('149', '10', '1399371091.jpg');
INSERT INTO `sportsbanner` VALUES ('150', '18', '1399974525.jpg');
INSERT INTO `sportsbanner` VALUES ('152', '21', '1394619624.jpg');
INSERT INTO `sportsbanner` VALUES ('154', '7', '1394616366.jpg');
INSERT INTO `sportsbanner` VALUES ('161', '48', '1400310876.jpg');
INSERT INTO `sportsbanner` VALUES ('163', '64', '1400312690.jpg');
INSERT INTO `sportsbanner` VALUES ('164', '58', '1400312851.jpg');
INSERT INTO `sportsbanner` VALUES ('165', '5', '1400312930.jpg');
INSERT INTO `sportsbanner` VALUES ('167', '57', '1400313265.jpg');
INSERT INTO `sportsbanner` VALUES ('168', '59', '1400313396.jpg');
INSERT INTO `sportsbanner` VALUES ('169', '8', '1400313566.jpg');
INSERT INTO `sportsbanner` VALUES ('170', '9', '1400314258.jpg');
INSERT INTO `sportsbanner` VALUES ('173', '60', '1400314586.jpg');
INSERT INTO `sportsbanner` VALUES ('174', '15', '1400314928.jpg');
INSERT INTO `sportsbanner` VALUES ('175', '12', '1400313039.jpg');
INSERT INTO `sportsbanner` VALUES ('177', '13', '1400317380.jpg');
INSERT INTO `sportsbanner` VALUES ('178', '14', '1400317818.jpg');
INSERT INTO `sportsbanner` VALUES ('180', '49', '1400318253.jpg');
INSERT INTO `sportsbanner` VALUES ('181', '22', '1400318095.jpg');
INSERT INTO `sportsbanner` VALUES ('182', '62', '1400318453.jpg');
INSERT INTO `sportsbanner` VALUES ('183', '65', '1400318770.jpg');
INSERT INTO `sportsbanner` VALUES ('184', '65', '1400318794.jpg');
INSERT INTO `sportsbanner` VALUES ('185', '65', '1400318807.jpg');
INSERT INTO `sportsbanner` VALUES ('186', '11', '1400307341.jpg');
INSERT INTO `sportsbanner` VALUES ('187', '66', '1400319388.jpg');
INSERT INTO `sportsbanner` VALUES ('188', '20', '1400317084.jpg');
INSERT INTO `sportsbanner` VALUES ('189', '67', '1400319643.jpg');
INSERT INTO `sportsbanner` VALUES ('191', '68', '1400319944.jpg');
INSERT INTO `sportsbanner` VALUES ('194', '17', '1400320614.jpg');
INSERT INTO `sportsbanner` VALUES ('195', '70', '1400320783.jpg');
INSERT INTO `sportsbanner` VALUES ('196', '71', '1400321063.jpg');
INSERT INTO `sportsbanner` VALUES ('197', '72', '1400321254.jpg');
INSERT INTO `sportsbanner` VALUES ('198', '19', '1400321512.jpg');
INSERT INTO `sportsbanner` VALUES ('199', '73', '1400322729.jpg');
INSERT INTO `sportsbanner` VALUES ('200', '74', '1400322968.jpg');
INSERT INTO `sportsbanner` VALUES ('201', '16', '1400320400.jpg');
INSERT INTO `sportsbanner` VALUES ('202', '75', '1400323934.jpg');
INSERT INTO `sportsbanner` VALUES ('203', '76', '1400325060.jpg');
INSERT INTO `sportsbanner` VALUES ('204', '77', '1400325545.jpg');
INSERT INTO `sportsbanner` VALUES ('206', '79', '1400326205.jpg');
INSERT INTO `sportsbanner` VALUES ('208', '81', '1400326593.jpg');
INSERT INTO `sportsbanner` VALUES ('209', '82', '1400326876.jpg');
INSERT INTO `sportsbanner` VALUES ('210', '78', '1400325973.jpg');
INSERT INTO `sportsbanner` VALUES ('211', '53', '1397129101.jpg');
INSERT INTO `sportsbanner` VALUES ('212', '52', '1400672156.jpg');
INSERT INTO `sportsbanner` VALUES ('213', '56', '1400672337.jpg');
INSERT INTO `sportsbanner` VALUES ('215', '23', '1399984131.jpg');
INSERT INTO `sportsbanner` VALUES ('216', '61', '1399984221.jpg');
INSERT INTO `sportsbanner` VALUES ('217', '2', '1400306660.jpg');
INSERT INTO `sportsbanner` VALUES ('218', '42', '1400314471.jpg');
INSERT INTO `sportsbanner` VALUES ('219', '80', '1400326205.jpg');
INSERT INTO `sportsbanner` VALUES ('220', '41', '1400314352.jpg');
INSERT INTO `sportsbanner` VALUES ('222', null, '');
INSERT INTO `sportsbanner` VALUES ('225', '47', '1394615615.jpg');
INSERT INTO `sportsbanner` VALUES ('226', '47', '1411104111.jpg');
INSERT INTO `sportsbanner` VALUES ('227', '83', '1410426742.jpg');
INSERT INTO `sportsbanner` VALUES ('228', '83', '1410426750.jpg');
INSERT INTO `sportsbanner` VALUES ('229', '4', '1394616138.jpg');

-- ----------------------------
-- Table structure for `state`
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `i_cnt_id` varchar(20) NOT NULL,
  `s_st_name` varchar(60) NOT NULL,
  `s_st_iso` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1746 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES ('1', '1', 'Kabul ', '');
INSERT INTO `state` VALUES ('2', '2', 'Tiranes ', '');
INSERT INTO `state` VALUES ('3', '3', 'Alger ', '');
INSERT INTO `state` VALUES ('4', '3', 'Constantine ', '');
INSERT INTO `state` VALUES ('5', '3', 'Mascara ', '');
INSERT INTO `state` VALUES ('6', '3', 'Oran ', '');
INSERT INTO `state` VALUES ('7', '3', 'Skikda ', '');
INSERT INTO `state` VALUES ('8', '4', 'Eastern ', '');
INSERT INTO `state` VALUES ('9', '5', 'Andorra la Vella', '');
INSERT INTO `state` VALUES ('10', '5', 'Escaldes-Engordany', '');
INSERT INTO `state` VALUES ('11', '6', 'Benguela ', '');
INSERT INTO `state` VALUES ('12', '6', 'Cuanza Sul', '');
INSERT INTO `state` VALUES ('13', '6', 'Huila ', '');
INSERT INTO `state` VALUES ('14', '6', 'Luanda ', '');
INSERT INTO `state` VALUES ('15', '6', 'Uige ', '');
INSERT INTO `state` VALUES ('16', '7', 'Anguilla ', '');
INSERT INTO `state` VALUES ('18', '9', 'Saint John', '');
INSERT INTO `state` VALUES ('19', '9', 'Saint Paul', '');
INSERT INTO `state` VALUES ('20', '10', 'Buenos Aires', '');
INSERT INTO `state` VALUES ('21', '10', 'Capital Federal', '');
INSERT INTO `state` VALUES ('22', '10', 'Catamarca ', '');
INSERT INTO `state` VALUES ('23', '10', 'value', '');
INSERT INTO `state` VALUES ('24', '10', 'Chubut ', '');
INSERT INTO `state` VALUES ('25', '10', 'Cordoba ', '');
INSERT INTO `state` VALUES ('26', '10', 'Corrientes ', '');
INSERT INTO `state` VALUES ('27', '10', 'Entre Rios ', '');
INSERT INTO `state` VALUES ('28', '10', 'Formosa ', '');
INSERT INTO `state` VALUES ('29', '10', 'Jujuy ', '');
INSERT INTO `state` VALUES ('30', '10', 'La Pampa', '');
INSERT INTO `state` VALUES ('31', '10', 'La Rioja', '');
INSERT INTO `state` VALUES ('32', '10', 'Mendoza ', '');
INSERT INTO `state` VALUES ('33', '10', 'Misiones ', '');
INSERT INTO `state` VALUES ('34', '10', 'Neuquen ', '');
INSERT INTO `state` VALUES ('35', '10', 'Rio Negro ', '');
INSERT INTO `state` VALUES ('36', '10', 'Salta ', '');
INSERT INTO `state` VALUES ('37', '10', 'San Juan', '');
INSERT INTO `state` VALUES ('38', '10', 'San Luis', '');
INSERT INTO `state` VALUES ('39', '10', 'Santa Cruz', '');
INSERT INTO `state` VALUES ('40', '10', 'Santa Fe', '');
INSERT INTO `state` VALUES ('41', '10', 'Santiago del Estero ', '');
INSERT INTO `state` VALUES ('42', '10', 'Tierra del Fuego ', '');
INSERT INTO `state` VALUES ('43', '10', 'Tucuman ', '');
INSERT INTO `state` VALUES ('44', '11', 'Lorri ', '');
INSERT INTO `state` VALUES ('45', '11', 'Shirak ', '');
INSERT INTO `state` VALUES ('46', '11', 'Yerevan ', '');
INSERT INTO `state` VALUES ('47', '12', 'Aruba', '');
INSERT INTO `state` VALUES ('49', '14', 'Blowing Point Village', '');
INSERT INTO `state` VALUES ('50', '14', 'Cannifist', '');
INSERT INTO `state` VALUES ('51', '14', 'Crocus Hill', '');
INSERT INTO `state` VALUES ('52', '14', 'East End Village', '');
INSERT INTO `state` VALUES ('53', '14', 'George Hill', '');
INSERT INTO `state` VALUES ('54', '14', 'Little Dix', '');
INSERT INTO `state` VALUES ('55', '14', 'Long Bay Village', '');
INSERT INTO `state` VALUES ('56', '14', 'Long Path', '');
INSERT INTO `state` VALUES ('57', '14', 'Mount Fortune', '');
INSERT INTO `state` VALUES ('58', '14', 'Sandy Ground Village', '');
INSERT INTO `state` VALUES ('59', '14', 'Shoal Village', '');
INSERT INTO `state` VALUES ('60', '14', 'South Hill Village', '');
INSERT INTO `state` VALUES ('61', '14', 'Stoney Ground', '');
INSERT INTO `state` VALUES ('62', '14', 'The Copse', '');
INSERT INTO `state` VALUES ('63', '14', 'The Copse', '');
INSERT INTO `state` VALUES ('64', '14', 'The Farrington', '');
INSERT INTO `state` VALUES ('65', '14', 'The Valley', '');
INSERT INTO `state` VALUES ('66', '14', 'West End Village', '');
INSERT INTO `state` VALUES ('67', '15', 'Australian Capital Territory ', '');
INSERT INTO `state` VALUES ('68', '15', 'Christmas Island', '');
INSERT INTO `state` VALUES ('69', '15', 'New South Wales', '');
INSERT INTO `state` VALUES ('70', '15', 'Northern Territory', '');
INSERT INTO `state` VALUES ('71', '15', 'Queensland ', '');
INSERT INTO `state` VALUES ('72', '15', 'South Australia', '');
INSERT INTO `state` VALUES ('73', '15', 'Tasmania ', '');
INSERT INTO `state` VALUES ('74', '15', 'Victoria ', '');
INSERT INTO `state` VALUES ('75', '15', 'Western Australia', '');
INSERT INTO `state` VALUES ('76', '16', 'Abseron ', '');
INSERT INTO `state` VALUES ('77', '17', 'Abaco ', '');
INSERT INTO `state` VALUES ('78', '17', 'Acklins Island', '');
INSERT INTO `state` VALUES ('79', '17', 'Andros ', '');
INSERT INTO `state` VALUES ('80', '17', 'Cat Island', '');
INSERT INTO `state` VALUES ('81', '17', 'Eleuthera ', '');
INSERT INTO `state` VALUES ('82', '17', 'Exuma and Cays', '');
INSERT INTO `state` VALUES ('83', '17', 'Grand Bahama ', '');
INSERT INTO `state` VALUES ('84', '17', 'Inagua Islands', '');
INSERT INTO `state` VALUES ('85', '17', 'New Providence', '');
INSERT INTO `state` VALUES ('86', '17', 'San Salvador', '');
INSERT INTO `state` VALUES ('87', '18', 'Al Manamah', '');
INSERT INTO `state` VALUES ('88', '18', 'Al Muharraq', '');
INSERT INTO `state` VALUES ('89', '18', 'Ash Shamaliyah', '');
INSERT INTO `state` VALUES ('91', '20', 'Chittagong ', '');
INSERT INTO `state` VALUES ('92', '20', 'Dhaka ', '');
INSERT INTO `state` VALUES ('93', '2', 'Khulna ', '');
INSERT INTO `state` VALUES ('94', '20', 'Rajshahi ', '');
INSERT INTO `state` VALUES ('95', '21', 'Saint Michael', '');
INSERT INTO `state` VALUES ('96', '21', 'Saint Peter ', '');
INSERT INTO `state` VALUES ('98', '23', 'Mahilyowskaya ', '');
INSERT INTO `state` VALUES ('99', '23', 'Minskaya ', '');
INSERT INTO `state` VALUES ('100', '24', 'Antwerpen - Anvers', '');
INSERT INTO `state` VALUES ('101', '24', 'Brabant Wallon', '');
INSERT INTO `state` VALUES ('102', '24', 'Bruxelles - Brussel ', '');
INSERT INTO `state` VALUES ('103', '24', 'Hainaut - Henegouwen', '');
INSERT INTO `state` VALUES ('104', '24', 'Li?ge - Luik', '');
INSERT INTO `state` VALUES ('105', '24', 'Limburg - Limbourg', '');
INSERT INTO `state` VALUES ('106', '24', 'Luxembourg - Luxemburg', '');
INSERT INTO `state` VALUES ('107', '24', 'Namur - Namen', '');
INSERT INTO `state` VALUES ('108', '24', 'Oost Vlaanderen - Flandre Orientale ', '');
INSERT INTO `state` VALUES ('109', '24', 'Vlaams Brabant - Brabant Flamand', '');
INSERT INTO `state` VALUES ('110', '24', 'West Vlaanderen - Flandre Occidentale ', '');
INSERT INTO `state` VALUES ('111', '25', 'Belize ', '');
INSERT INTO `state` VALUES ('112', '25', 'Cayo ', '');
INSERT INTO `state` VALUES ('113', '25', 'Orange Walk', '');
INSERT INTO `state` VALUES ('114', '25', 'Toledo ', '');
INSERT INTO `state` VALUES ('115', '26', 'Atakora ', '');
INSERT INTO `state` VALUES ('116', '26', 'Atlantique ', '');
INSERT INTO `state` VALUES ('117', '26', 'Oueme ', '');
INSERT INTO `state` VALUES ('118', '27', 'Hamilton ', '');
INSERT INTO `state` VALUES ('119', '27', 'Sandys ', '');
INSERT INTO `state` VALUES ('120', '28', 'Bhutan ', '');
INSERT INTO `state` VALUES ('121', '29', 'Beni ', '');
INSERT INTO `state` VALUES ('122', '29', 'Chuquisaca ', '');
INSERT INTO `state` VALUES ('123', '29', 'Cochabamba ', '');
INSERT INTO `state` VALUES ('124', '29', 'La Paz', '');
INSERT INTO `state` VALUES ('125', '29', 'Oruro ', '');
INSERT INTO `state` VALUES ('126', '29', 'Pando ', '');
INSERT INTO `state` VALUES ('127', '29', 'Potosi ', '');
INSERT INTO `state` VALUES ('128', '29', 'Santa Cruz', '');
INSERT INTO `state` VALUES ('129', '29', 'Tarija ', '');
INSERT INTO `state` VALUES ('130', '30', 'Beni ', '');
INSERT INTO `state` VALUES ('131', '31', 'South East ', '');
INSERT INTO `state` VALUES ('132', '32', 'NA ', '');
INSERT INTO `state` VALUES ('133', '33', 'Acre ', '');
INSERT INTO `state` VALUES ('134', '33', 'Alagoas ', '');
INSERT INTO `state` VALUES ('135', '33', 'Amapa ', '');
INSERT INTO `state` VALUES ('136', '33', 'Amazonas ', '');
INSERT INTO `state` VALUES ('137', '33', 'Bahia ', '');
INSERT INTO `state` VALUES ('138', '33', 'Ceara ', '');
INSERT INTO `state` VALUES ('139', '33', 'Distrito Federal ', '');
INSERT INTO `state` VALUES ('140', '33', 'Espirito Santo', '');
INSERT INTO `state` VALUES ('141', '33', 'Goias ', '');
INSERT INTO `state` VALUES ('142', '33', 'Maranhao ', '');
INSERT INTO `state` VALUES ('143', '33', 'Mato Grosso', '');
INSERT INTO `state` VALUES ('144', '33', 'Mato Grosso do Sul', '');
INSERT INTO `state` VALUES ('145', '33', 'Minas Gerais ', '');
INSERT INTO `state` VALUES ('146', '33', 'Para ', '');
INSERT INTO `state` VALUES ('147', '33', 'Paraiba ', '');
INSERT INTO `state` VALUES ('148', '33', 'Parana ', '');
INSERT INTO `state` VALUES ('149', '33', 'Pernambuco ', '');
INSERT INTO `state` VALUES ('150', '33', 'Piaui ', '');
INSERT INTO `state` VALUES ('151', '33', 'Rio de Janeiro', '');
INSERT INTO `state` VALUES ('152', '33', 'Rio Grande do Norte', '');
INSERT INTO `state` VALUES ('153', '33', 'Rio Grande do Sul', '');
INSERT INTO `state` VALUES ('154', '33', 'Rondonia ', '');
INSERT INTO `state` VALUES ('155', '33', 'Roraima ', '');
INSERT INTO `state` VALUES ('156', '33', 'Santa Catarina', '');
INSERT INTO `state` VALUES ('157', '33', 'Sao Paulo', '');
INSERT INTO `state` VALUES ('158', '33', 'Sergipe ', '');
INSERT INTO `state` VALUES ('159', '33', 'Tocantins ', '');
INSERT INTO `state` VALUES ('160', '34', 'NA ', '');
INSERT INTO `state` VALUES ('163', '37', 'Burgas ', '');
INSERT INTO `state` VALUES ('164', '37', 'Grad Sofiya', '');
INSERT INTO `state` VALUES ('165', '37', 'Lovech ', '');
INSERT INTO `state` VALUES ('166', '37', 'Plovdiv ', '');
INSERT INTO `state` VALUES ('167', '37', 'Razgrad ', '');
INSERT INTO `state` VALUES ('168', '37', 'Stara Zagora ', '');
INSERT INTO `state` VALUES ('169', '37', 'Varna ', '');
INSERT INTO `state` VALUES ('170', '38', 'Kourweogo ', '');
INSERT INTO `state` VALUES ('171', '38', 'Passore ', '');
INSERT INTO `state` VALUES ('172', '38', 'Yatenga ', '');
INSERT INTO `state` VALUES ('173', '39', 'Thaninthayi', '');
INSERT INTO `state` VALUES ('174', '40', 'Bujumbura ', '');
INSERT INTO `state` VALUES ('175', '41', 'Battambang ', '');
INSERT INTO `state` VALUES ('176', '41', 'Kampong Cham', '');
INSERT INTO `state` VALUES ('177', '41', 'Kampong Speu ', '');
INSERT INTO `state` VALUES ('178', '41', 'Kampong Thom', '');
INSERT INTO `state` VALUES ('179', '41', 'Kracheh ', '');
INSERT INTO `state` VALUES ('180', '41', 'Phnom Penh Municipality ', '');
INSERT INTO `state` VALUES ('181', '41', 'Prey Veng', '');
INSERT INTO `state` VALUES ('182', '41', 'Pursat ', '');
INSERT INTO `state` VALUES ('183', '41', 'Siem Reap', '');
INSERT INTO `state` VALUES ('184', '41', 'Stung Treng ', '');
INSERT INTO `state` VALUES ('185', '41', 'Svay Rieng ', '');
INSERT INTO `state` VALUES ('186', '41', 'Takeo ', '');
INSERT INTO `state` VALUES ('187', '42', 'Centre ', '');
INSERT INTO `state` VALUES ('188', '42', 'Littoral ', '');
INSERT INTO `state` VALUES ('189', '42', 'Sud-Ouest', '');
INSERT INTO `state` VALUES ('190', '43', 'Alberta ', '');
INSERT INTO `state` VALUES ('191', '43', 'British Columbia', '');
INSERT INTO `state` VALUES ('192', '43', 'Manitoba ', '');
INSERT INTO `state` VALUES ('193', '43', 'New Brunswick', '');
INSERT INTO `state` VALUES ('194', '43', 'Newfoundland ', '');
INSERT INTO `state` VALUES ('195', '43', 'Northwest Territories', '');
INSERT INTO `state` VALUES ('196', '43', 'Nova Scotia', '');
INSERT INTO `state` VALUES ('197', '43', 'Nunavut ', '');
INSERT INTO `state` VALUES ('198', '43', 'Ontario ', '');
INSERT INTO `state` VALUES ('199', '43', 'Prince Edward Island ', '');
INSERT INTO `state` VALUES ('200', '43', 'Quebec ', '');
INSERT INTO `state` VALUES ('201', '43', 'Saskatchewan ', '');
INSERT INTO `state` VALUES ('202', '43', 'ukon Territory', '');
INSERT INTO `state` VALUES ('203', '44', 'Sao Tiago', '');
INSERT INTO `state` VALUES ('204', '44', 'Sao Vicente ', '');
INSERT INTO `state` VALUES ('205', '45', 'Little Cayman ', '');
INSERT INTO `state` VALUES ('206', '46', 'Lobaye ', '');
INSERT INTO `state` VALUES ('207', '47', 'Chad ', '');
INSERT INTO `state` VALUES ('208', '48', 'Aisen ', '');
INSERT INTO `state` VALUES ('209', '48', 'Antofagasta ', '');
INSERT INTO `state` VALUES ('210', '48', 'Araucania ', '');
INSERT INTO `state` VALUES ('211', '48', 'Atacama ', '');
INSERT INTO `state` VALUES ('212', '48', 'Bio-Bio', '');
INSERT INTO `state` VALUES ('213', '48', 'Coquimbo ', '');
INSERT INTO `state` VALUES ('214', '48', 'Libertador General ', '');
INSERT INTO `state` VALUES ('215', '48', 'los Lagos', '');
INSERT INTO `state` VALUES ('216', '48', 'Magall. Y Ant. Chilena', '');
INSERT INTO `state` VALUES ('217', '48', 'Maule ', '');
INSERT INTO `state` VALUES ('218', '48', 'Metrop. De Santiago', '');
INSERT INTO `state` VALUES ('219', '48', 'Tarapaca ', '');
INSERT INTO `state` VALUES ('220', '48', 'Valparaiso', '');
INSERT INTO `state` VALUES ('221', '49', 'Shanghai ', '');
INSERT INTO `state` VALUES ('222', '49', 'Yunnan ', '');
INSERT INTO `state` VALUES ('223', '49', 'Neimenggu ', '');
INSERT INTO `state` VALUES ('224', '49', 'Beijing ', '');
INSERT INTO `state` VALUES ('225', '49', 'Jilin ', '');
INSERT INTO `state` VALUES ('226', '49', 'Sichuan ', '');
INSERT INTO `state` VALUES ('227', '49', 'Tianjin ', '');
INSERT INTO `state` VALUES ('228', '49', 'Ningxia Hui', '');
INSERT INTO `state` VALUES ('229', '49', 'Anhui ', '');
INSERT INTO `state` VALUES ('230', '49', 'Shandong ', '');
INSERT INTO `state` VALUES ('231', '49', 'Shanxi ', '');
INSERT INTO `state` VALUES ('232', '49', 'Guangdong ', '');
INSERT INTO `state` VALUES ('233', '49', 'Guangxi Zhuang', '');
INSERT INTO `state` VALUES ('234', '49', 'Xinjiang Uygur ', '');
INSERT INTO `state` VALUES ('235', '49', 'Jiangsu', '');
INSERT INTO `state` VALUES ('236', '49', 'Jiangxi', '');
INSERT INTO `state` VALUES ('237', '49', 'Hebei ', '');
INSERT INTO `state` VALUES ('238', '49', 'Henan ', '');
INSERT INTO `state` VALUES ('239', '49', 'Zhejiang ', '');
INSERT INTO `state` VALUES ('240', '49', 'Hainan ', '');
INSERT INTO `state` VALUES ('241', '49', 'Hubei ', '');
INSERT INTO `state` VALUES ('242', '49', 'Hunan ', '');
INSERT INTO `state` VALUES ('243', '49', 'Macao ', '');
INSERT INTO `state` VALUES ('244', '49', 'Gansu ', '');
INSERT INTO `state` VALUES ('245', '49', 'Fujian ', '');
INSERT INTO `state` VALUES ('246', '49', 'Taiwan ', '');
INSERT INTO `state` VALUES ('247', '49', 'Sitsang/Xizang ', '');
INSERT INTO `state` VALUES ('248', '49', 'Guizhou ', '');
INSERT INTO `state` VALUES ('249', '49', 'Liaoning ', '');
INSERT INTO `state` VALUES ('250', '49', 'Chongqing ', '');
INSERT INTO `state` VALUES ('251', '49', 'Shanxi ', '');
INSERT INTO `state` VALUES ('252', '49', 'Qinghai ', '');
INSERT INTO `state` VALUES ('253', '49', 'Hong Kong', '');
INSERT INTO `state` VALUES ('254', '49', 'Heilongjiang ', '');
INSERT INTO `state` VALUES ('265', '53', 'Amazonas ', '');
INSERT INTO `state` VALUES ('264', '52', 'Cocos (Keeling) Islands', '');
INSERT INTO `state` VALUES ('262', '50', 'Christmas Island', '');
INSERT INTO `state` VALUES ('266', '53', 'Antioquia ', '');
INSERT INTO `state` VALUES ('267', '53', 'Arauca', '');
INSERT INTO `state` VALUES ('268', '53', 'Atlantico', '');
INSERT INTO `state` VALUES ('269', '53', 'Bogota ', '');
INSERT INTO `state` VALUES ('270', '53', 'Bolivar ', '');
INSERT INTO `state` VALUES ('271', '53', 'Boyaca ', '');
INSERT INTO `state` VALUES ('272', '53', 'Caldas ', '');
INSERT INTO `state` VALUES ('273', '53', 'Caqueta ', '');
INSERT INTO `state` VALUES ('274', '53', 'Casanare ', '');
INSERT INTO `state` VALUES ('275', '53', 'Cauca ', '');
INSERT INTO `state` VALUES ('276', '53', 'Cesar ', '');
INSERT INTO `state` VALUES ('277', '53', 'Choco ', '');
INSERT INTO `state` VALUES ('278', '53', 'Cordoba ', '');
INSERT INTO `state` VALUES ('279', '53', 'Cundinamarca ', '');
INSERT INTO `state` VALUES ('280', '53', 'Distrito Capital', '');
INSERT INTO `state` VALUES ('281', '53', 'Huila ', '');
INSERT INTO `state` VALUES ('282', '53', 'La Guajira ', '');
INSERT INTO `state` VALUES ('283', '53', 'Magdalena ', '');
INSERT INTO `state` VALUES ('284', '53', 'Meta ', '');
INSERT INTO `state` VALUES ('285', '53', 'Narino ', '');
INSERT INTO `state` VALUES ('286', '53', 'Norte de Santander', '');
INSERT INTO `state` VALUES ('287', '53', 'Putumayo ', '');
INSERT INTO `state` VALUES ('288', '53', 'Risaralda ', '');
INSERT INTO `state` VALUES ('289', '53', 'San Andres y Providencia', '');
INSERT INTO `state` VALUES ('290', '53', 'Santander ', '');
INSERT INTO `state` VALUES ('291', '53', 'Tolima ', '');
INSERT INTO `state` VALUES ('292', '53', 'Valle del Cauca', '');
INSERT INTO `state` VALUES ('293', '54', 'Comoros ', '');
INSERT INTO `state` VALUES ('296', '57', 'Rarotonga ', '');
INSERT INTO `state` VALUES ('298', '59', 'Alajuela ', '');
INSERT INTO `state` VALUES ('299', '59', 'Cartago ', '');
INSERT INTO `state` VALUES ('300', '59', 'Guanacaste ', '');
INSERT INTO `state` VALUES ('301', '59', 'Heredia ', '');
INSERT INTO `state` VALUES ('302', '59', 'Puerto Limon - Limon', '');
INSERT INTO `state` VALUES ('303', '59', 'Puntarenas ', '');
INSERT INTO `state` VALUES ('304', '59', 'San Jose', '');
INSERT INTO `state` VALUES ('306', '61', 'Brodsko-Posavska ', '');
INSERT INTO `state` VALUES ('307', '61', 'Dubrovacko-Neretvanska', '');
INSERT INTO `state` VALUES ('308', '61', 'Istarska ', '');
INSERT INTO `state` VALUES ('309', '61', 'Koprivnicko-Krizevacka', '');
INSERT INTO `state` VALUES ('310', '61', 'Krapinsko-Zagorska', '');
INSERT INTO `state` VALUES ('311', '61', 'Osjecko-Baranjska', '');
INSERT INTO `state` VALUES ('312', '61', 'Pozesko-Slavonska', '');
INSERT INTO `state` VALUES ('313', '61', 'Primorsko-Goranska', '');
INSERT INTO `state` VALUES ('314', '61', 'Sisacko-Moslavacka', '');
INSERT INTO `state` VALUES ('315', '61', 'Splitsko-Dalmatinska', '');
INSERT INTO `state` VALUES ('316', '61', 'Varazdinska ', '');
INSERT INTO `state` VALUES ('317', '61', 'Vukovarsko-Srijemska', '');
INSERT INTO `state` VALUES ('318', '61', 'Zadarska ', '');
INSERT INTO `state` VALUES ('319', '61', 'Zagreb ', '');
INSERT INTO `state` VALUES ('320', '61', 'Zagrebacka ', '');
INSERT INTO `state` VALUES ('321', '62', 'Camaguey ', '');
INSERT INTO `state` VALUES ('322', '62', 'Ciego de Avila', '');
INSERT INTO `state` VALUES ('323', '62', 'Cienfuegos ', '');
INSERT INTO `state` VALUES ('324', '62', 'Ciudad de La Habana', '');
INSERT INTO `state` VALUES ('325', '62', 'Granma ', '');
INSERT INTO `state` VALUES ('326', '62', 'Guantanamo ', '');
INSERT INTO `state` VALUES ('327', '62', 'Holguin ', '');
INSERT INTO `state` VALUES ('328', '62', 'La Habana ', '');
INSERT INTO `state` VALUES ('329', '62', 'Las Tunas', '');
INSERT INTO `state` VALUES ('330', '62', 'Matanzas ', '');
INSERT INTO `state` VALUES ('331', '62', 'Pinar del Rio', '');
INSERT INTO `state` VALUES ('332', '62', 'Sancti Spiritus', '');
INSERT INTO `state` VALUES ('333', '62', 'Santiago de Cuba', '');
INSERT INTO `state` VALUES ('334', '62', 'Villa Clara', '');
INSERT INTO `state` VALUES ('335', '63', 'Famagusta ', '');
INSERT INTO `state` VALUES ('336', '63', 'Kyrenia ', '');
INSERT INTO `state` VALUES ('337', '63', 'Larnaca ', '');
INSERT INTO `state` VALUES ('338', '63', 'Limassol ', '');
INSERT INTO `state` VALUES ('339', '63', 'Nicosia ', '');
INSERT INTO `state` VALUES ('340', '63', 'Paphos ', '');
INSERT INTO `state` VALUES ('341', '64', 'Hlavni Mesto Praha', '');
INSERT INTO `state` VALUES ('342', '64', 'JihoCesk Kraj', '');
INSERT INTO `state` VALUES ('343', '64', 'Jihomoravsk Kraj', '');
INSERT INTO `state` VALUES ('344', '64', 'Karlovarsk Kraj', '');
INSERT INTO `state` VALUES ('345', '64', 'Kralovehradeck Kraj', '');
INSERT INTO `state` VALUES ('346', '64', 'Libereck Kraj', '');
INSERT INTO `state` VALUES ('347', '64', 'Moravskoslezsk Kraj', '');
INSERT INTO `state` VALUES ('348', '64', 'Olomouck Kraj', '');
INSERT INTO `state` VALUES ('349', '64', 'Pardubick Kraj', '');
INSERT INTO `state` VALUES ('350', '64', 'Plze?sk Kraj', '');
INSERT INTO `state` VALUES ('351', '64', 'St?edocesk Kraj', '');
INSERT INTO `state` VALUES ('352', '64', 'usteck Kraj', '');
INSERT INTO `state` VALUES ('353', '64', 'VysoCina ', '');
INSERT INTO `state` VALUES ('354', '64', 'Zlinsk Kraj', '');
INSERT INTO `state` VALUES ('355', '65', 'Hovedstaden ', '');
INSERT INTO `state` VALUES ('356', '65', 'Midtjylland ', '');
INSERT INTO `state` VALUES ('357', '65', 'Nordjylland ', '');
INSERT INTO `state` VALUES ('358', '65', 'Sjlland', '');
INSERT INTO `state` VALUES ('359', '65', 'Syddanmark ', '');
INSERT INTO `state` VALUES ('360', '66', 'Djibouti ', '');
INSERT INTO `state` VALUES ('361', '67', 'Saint George', '');
INSERT INTO `state` VALUES ('362', '68', 'Azua ', '');
INSERT INTO `state` VALUES ('363', '68', 'Bahoruco ', '');
INSERT INTO `state` VALUES ('364', '68', 'Barahona ', '');
INSERT INTO `state` VALUES ('365', '68', 'Dajabon ', '');
INSERT INTO `state` VALUES ('366', '68', 'Distrito Nacional', '');
INSERT INTO `state` VALUES ('367', '68', 'Duarte ', '');
INSERT INTO `state` VALUES ('368', '68', 'El Seibo', '');
INSERT INTO `state` VALUES ('369', '68', 'Elias Pina', '');
INSERT INTO `state` VALUES ('370', '68', 'Espaillat ', '');
INSERT INTO `state` VALUES ('371', '68', 'Hato Mayor', '');
INSERT INTO `state` VALUES ('372', '68', 'Independencia ', '');
INSERT INTO `state` VALUES ('373', '68', 'La Altagracia', '');
INSERT INTO `state` VALUES ('374', '68', 'La Romana', '');
INSERT INTO `state` VALUES ('375', '68', 'La Vega', '');
INSERT INTO `state` VALUES ('376', '68', 'Maria Trinidad Sanchez', '');
INSERT INTO `state` VALUES ('377', '68', 'Monsenor Nouel', '');
INSERT INTO `state` VALUES ('378', '68', 'Monte Cristi', '');
INSERT INTO `state` VALUES ('379', '68', 'Monte Plata', '');
INSERT INTO `state` VALUES ('380', '68', 'Pedernales ', '');
INSERT INTO `state` VALUES ('381', '68', 'Peravia ', '');
INSERT INTO `state` VALUES ('382', '68', 'Puerto Plata', '');
INSERT INTO `state` VALUES ('383', '68', 'Salcedo ', '');
INSERT INTO `state` VALUES ('384', '68', 'Samana ', '');
INSERT INTO `state` VALUES ('385', '68', 'San Cristobal', '');
INSERT INTO `state` VALUES ('386', '68', 'San Jose De Ocoa', '');
INSERT INTO `state` VALUES ('387', '68', 'San Juan', '');
INSERT INTO `state` VALUES ('388', '68', 'San Pedro de Macoris', '');
INSERT INTO `state` VALUES ('389', '68', 'Sanchez Ramirez', '');
INSERT INTO `state` VALUES ('390', '68', 'Santiago ', '');
INSERT INTO `state` VALUES ('391', '68', 'Santiago Rodriguez', '');
INSERT INTO `state` VALUES ('392', '68', 'Santo Domingo', '');
INSERT INTO `state` VALUES ('393', '68', 'Valverde ', '');
INSERT INTO `state` VALUES ('394', '69', 'East Timor', '');
INSERT INTO `state` VALUES ('395', '70', 'Azuay ', '');
INSERT INTO `state` VALUES ('396', '70', 'Bolivar ', '');
INSERT INTO `state` VALUES ('397', '70', 'Canar ', '');
INSERT INTO `state` VALUES ('398', '70', 'Carchi ', '');
INSERT INTO `state` VALUES ('399', '70', 'Chimborazo ', '');
INSERT INTO `state` VALUES ('400', '70', 'Cotopaxi ', '');
INSERT INTO `state` VALUES ('401', '70', 'El Oro', '');
INSERT INTO `state` VALUES ('402', '70', 'Esmeraldas ', '');
INSERT INTO `state` VALUES ('403', '70', 'Galapagos ', '');
INSERT INTO `state` VALUES ('404', '70', 'Guayas ', '');
INSERT INTO `state` VALUES ('405', '70', 'Imbabura ', '');
INSERT INTO `state` VALUES ('406', '70', 'Loja ', '');
INSERT INTO `state` VALUES ('407', '70', 'Los Rios', '');
INSERT INTO `state` VALUES ('408', '70', 'Manabi ', '');
INSERT INTO `state` VALUES ('409', '70', 'Morona-Santiago', '');
INSERT INTO `state` VALUES ('410', '70', 'Napo ', '');
INSERT INTO `state` VALUES ('411', '70', 'Orellana ', '');
INSERT INTO `state` VALUES ('412', '70', 'Pastaza ', '');
INSERT INTO `state` VALUES ('413', '70', 'Pichincha ', '');
INSERT INTO `state` VALUES ('414', '70', 'Sucumbios ', '');
INSERT INTO `state` VALUES ('415', '70', 'Tungurahua ', '');
INSERT INTO `state` VALUES ('416', '70', 'Zamora Chinchipe', '');
INSERT INTO `state` VALUES ('417', '71', 'Ad Daqahliyah', '');
INSERT INTO `state` VALUES ('418', '71', 'Al Bahr al Ahmar', '');
INSERT INTO `state` VALUES ('419', '71', 'Al Jizah', '');
INSERT INTO `state` VALUES ('420', '71', 'Al Qahirah', '');
INSERT INTO `state` VALUES ('421', '71', 'Qina ', '');
INSERT INTO `state` VALUES ('422', '71', 'Sinai Desert', '');
INSERT INTO `state` VALUES ('423', '71', 'Suhaj ', '');
INSERT INTO `state` VALUES ('424', '72', 'Ahuachapan ', '');
INSERT INTO `state` VALUES ('425', '72', 'Cabanas ', '');
INSERT INTO `state` VALUES ('426', '72', 'Chalatenango ', '');
INSERT INTO `state` VALUES ('427', '72', 'Cuscatlan ', '');
INSERT INTO `state` VALUES ('428', '72', 'La Libertad', '');
INSERT INTO `state` VALUES ('429', '72', 'La Paz', '');
INSERT INTO `state` VALUES ('430', '72', 'La Union', '');
INSERT INTO `state` VALUES ('431', '72', 'Morazan ', '');
INSERT INTO `state` VALUES ('432', '72', 'San Miguel', '');
INSERT INTO `state` VALUES ('433', '72', 'San Salvador', '');
INSERT INTO `state` VALUES ('434', '72', 'San Vicente', '');
INSERT INTO `state` VALUES ('435', '72', 'Santa Ana', '');
INSERT INTO `state` VALUES ('436', '72', 'Sonsonate ', '');
INSERT INTO `state` VALUES ('437', '72', 'Usulutan ', '');
INSERT INTO `state` VALUES ('438', '73', 'Equatorial Guinea ', '');
INSERT INTO `state` VALUES ('440', '75', 'Harju ', '');
INSERT INTO `state` VALUES ('441', '75', 'Jogeva ', '');
INSERT INTO `state` VALUES ('442', '75', 'Laane-Viru', '');
INSERT INTO `state` VALUES ('443', '75', 'Parnu ', '');
INSERT INTO `state` VALUES ('444', '75', 'Saare ', '');
INSERT INTO `state` VALUES ('445', '75', 'Tartu ', '');
INSERT INTO `state` VALUES ('446', '75', 'Viljandi ', '');
INSERT INTO `state` VALUES ('447', '76', 'Adis Abeba', '');
INSERT INTO `state` VALUES ('448', '76', 'Tigray ', '');
INSERT INTO `state` VALUES ('451', '79', 'Faroe Islands', '');
INSERT INTO `state` VALUES ('452', '80', 'Central ', '');
INSERT INTO `state` VALUES ('453', '81', 'Ahvenanmaa ', '');
INSERT INTO `state` VALUES ('454', '81', 'Etel-Karjala', '');
INSERT INTO `state` VALUES ('455', '81', 'Etel-Pohjanmaa', '');
INSERT INTO `state` VALUES ('456', '81', 'Etel-Savo', '');
INSERT INTO `state` VALUES ('457', '81', 'Hme', '');
INSERT INTO `state` VALUES ('458', '81', 'It-Uusimaa', '');
INSERT INTO `state` VALUES ('459', '81', 'Kainuu ', '');
INSERT INTO `state` VALUES ('460', '81', 'Keski-Pohjanmaa', '');
INSERT INTO `state` VALUES ('461', '81', 'Keski-Suomi', '');
INSERT INTO `state` VALUES ('462', '81', 'Kymenlaakso ', '');
INSERT INTO `state` VALUES ('463', '81', 'Lappi ', '');
INSERT INTO `state` VALUES ('464', '81', 'Pijt-Hme', '');
INSERT INTO `state` VALUES ('465', '81', 'Pirkanmaa ', '');
INSERT INTO `state` VALUES ('466', '81', 'Pohjanmaa ', '');
INSERT INTO `state` VALUES ('467', '81', 'Pohjois-Karjala', '');
INSERT INTO `state` VALUES ('468', '81', 'Pohjois-Pohjanmaa', '');
INSERT INTO `state` VALUES ('469', '81', 'Pohjois-Savo', '');
INSERT INTO `state` VALUES ('470', '81', 'Satakunta ', '');
INSERT INTO `state` VALUES ('471', '81', 'Uusimaa ', '');
INSERT INTO `state` VALUES ('472', '81', 'Varsinais-Suomi', '');
INSERT INTO `state` VALUES ('473', '82', 'Alsace ', '');
INSERT INTO `state` VALUES ('474', '82', 'Aquitaine ', '');
INSERT INTO `state` VALUES ('475', '82', 'Auvergne ', '');
INSERT INTO `state` VALUES ('476', '82', 'Basse Normandie', '');
INSERT INTO `state` VALUES ('477', '82', 'Bourgogne ', '');
INSERT INTO `state` VALUES ('478', '82', 'Bretagne ', '');
INSERT INTO `state` VALUES ('479', '82', 'Centre ', '');
INSERT INTO `state` VALUES ('480', '82', 'Champagne-Ardenne', '');
INSERT INTO `state` VALUES ('481', '82', 'Corse ', '');
INSERT INTO `state` VALUES ('482', '82', 'Franche Comte', '');
INSERT INTO `state` VALUES ('483', '82', 'Guadeloupe ', '');
INSERT INTO `state` VALUES ('484', '82', 'Guyane ', '');
INSERT INTO `state` VALUES ('485', '82', 'Haute Normandie', '');
INSERT INTO `state` VALUES ('486', '82', 'Ile de France', '');
INSERT INTO `state` VALUES ('487', '82', 'La Reunion', '');
INSERT INTO `state` VALUES ('488', '82', 'Languedoc-Roussillon', '');
INSERT INTO `state` VALUES ('489', '82', 'Limousin ', '');
INSERT INTO `state` VALUES ('490', '82', 'Martinique ', '');
INSERT INTO `state` VALUES ('491', '82', 'Midi-Pyrenees', '');
INSERT INTO `state` VALUES ('492', '82', 'Nord - Pas de Calais', '');
INSERT INTO `state` VALUES ('493', '82', 'Nouvelle Caledonie', '');
INSERT INTO `state` VALUES ('494', '82', 'Pays de la Loire', '');
INSERT INTO `state` VALUES ('495', '82', 'Picardie ', '');
INSERT INTO `state` VALUES ('496', '82', 'Poitou-Charentes', '');
INSERT INTO `state` VALUES ('497', '82', 'Polynesie Francaise ', '');
INSERT INTO `state` VALUES ('498', '82', 'Provence - Alpes - Cote d Azur', '');
INSERT INTO `state` VALUES ('499', '82', 'Rhone-Alpes ', '');
INSERT INTO `state` VALUES ('500', '82', 'St Pierre et Miquelon ', '');
INSERT INTO `state` VALUES ('502', '84', 'Cayenne ', '');
INSERT INTO `state` VALUES ('503', '85', 'French Polynesia ', '');
INSERT INTO `state` VALUES ('505', '87', 'Estuaire ', '');
INSERT INTO `state` VALUES ('506', '88', 'Banjul ', '');
INSERT INTO `state` VALUES ('507', '88', 'Brikama ', '');
INSERT INTO `state` VALUES ('510', '91', 'Baden-Wurttemberg', '');
INSERT INTO `state` VALUES ('511', '91', 'Bayern ', '');
INSERT INTO `state` VALUES ('512', '91', 'Berlin ', '');
INSERT INTO `state` VALUES ('513', '91', 'Brandenburg ', '');
INSERT INTO `state` VALUES ('514', '91', 'Bremen ', '');
INSERT INTO `state` VALUES ('515', '91', 'Hamburg ', '');
INSERT INTO `state` VALUES ('516', '91', 'Hessen ', '');
INSERT INTO `state` VALUES ('517', '91', 'Mecklenburg-Vorpommern', '');
INSERT INTO `state` VALUES ('518', '91', 'Niedersachsen ', '');
INSERT INTO `state` VALUES ('519', '91', 'Nordrhein-Westfalen', '');
INSERT INTO `state` VALUES ('520', '91', 'Rheinland-Pfalz', '');
INSERT INTO `state` VALUES ('521', '91', 'Saarland ', '');
INSERT INTO `state` VALUES ('522', '91', 'Sachsen ', '');
INSERT INTO `state` VALUES ('523', '91', 'Sachsen-Anhalt', '');
INSERT INTO `state` VALUES ('524', '91', 'Schleswig-Holstein', '');
INSERT INTO `state` VALUES ('525', '91', 'Thuringen ', '');
INSERT INTO `state` VALUES ('526', '92', 'Ashanti ', '');
INSERT INTO `state` VALUES ('527', '92', 'Central ', '');
INSERT INTO `state` VALUES ('528', '92', 'Eastern ', '');
INSERT INTO `state` VALUES ('529', '92', 'Greater Accra', '');
INSERT INTO `state` VALUES ('530', '92', 'Northern ', '');
INSERT INTO `state` VALUES ('531', '92', 'Upper East', '');
INSERT INTO `state` VALUES ('532', '93', 'Gibraltar ', '');
INSERT INTO `state` VALUES ('534', '95', 'Ahaia ', '');
INSERT INTO `state` VALUES ('535', '95', 'Argolis ', '');
INSERT INTO `state` VALUES ('536', '95', 'Attiki ', '');
INSERT INTO `state` VALUES ('537', '95', 'Dodekanisos ', '');
INSERT INTO `state` VALUES ('538', '95', 'Evvoia ', '');
INSERT INTO `state` VALUES ('539', '95', 'Hania ', '');
INSERT INTO `state` VALUES ('540', '95', 'Iraklion ', '');
INSERT INTO `state` VALUES ('541', '95', 'Kavala ', '');
INSERT INTO `state` VALUES ('542', '95', 'Kefallinia ', '');
INSERT INTO `state` VALUES ('543', '95', 'Kerkira ', '');
INSERT INTO `state` VALUES ('544', '95', 'Kiklades ', '');
INSERT INTO `state` VALUES ('545', '95', 'Kilkis ', '');
INSERT INTO `state` VALUES ('546', '95', 'Korinthia ', '');
INSERT INTO `state` VALUES ('547', '95', 'Kozani ', '');
INSERT INTO `state` VALUES ('548', '95', 'Larisa ', '');
INSERT INTO `state` VALUES ('549', '95', 'Lasithi ', '');
INSERT INTO `state` VALUES ('550', '95', 'Lesvos ', '');
INSERT INTO `state` VALUES ('551', '95', 'Magnisia ', '');
INSERT INTO `state` VALUES ('552', '95', 'Messinia ', '');
INSERT INTO `state` VALUES ('553', '95', 'Pieria ', '');
INSERT INTO `state` VALUES ('554', '95', 'Samos ', '');
INSERT INTO `state` VALUES ('555', '95', 'Serrai ', '');
INSERT INTO `state` VALUES ('556', '95', 'Thessaloniki ', '');
INSERT INTO `state` VALUES ('557', '95', 'Trikala ', '');
INSERT INTO `state` VALUES ('558', '95', 'Voiotia ', '');
INSERT INTO `state` VALUES ('559', '95', 'Zakinthos ', '');
INSERT INTO `state` VALUES ('560', '96', 'Nuuk ', '');
INSERT INTO `state` VALUES ('561', '97', 'Carriacou and Petit Martinique', '');
INSERT INTO `state` VALUES ('562', '98', 'Guadeloupe ', '');
INSERT INTO `state` VALUES ('563', '99', 'Guam ', '');
INSERT INTO `state` VALUES ('564', '100', 'Alta Verapaz ', '');
INSERT INTO `state` VALUES ('565', '100', 'Baja Verapaz', '');
INSERT INTO `state` VALUES ('566', '100', 'Chimaltenango ', '');
INSERT INTO `state` VALUES ('567', '100', 'Chiquimula ', '');
INSERT INTO `state` VALUES ('568', '100', 'El Progreso', '');
INSERT INTO `state` VALUES ('569', '100', 'Escuintla ', '');
INSERT INTO `state` VALUES ('570', '100', 'Guatemala ', '');
INSERT INTO `state` VALUES ('571', '100', 'Huehuetenango ', '');
INSERT INTO `state` VALUES ('572', '100', 'Izabal ', '');
INSERT INTO `state` VALUES ('573', '100', 'Jalapa ', '');
INSERT INTO `state` VALUES ('574', '100', 'Jutiapa ', '');
INSERT INTO `state` VALUES ('575', '100', 'Peten ', '');
INSERT INTO `state` VALUES ('576', '100', 'Quetzaltenango ', '');
INSERT INTO `state` VALUES ('577', '100', 'Quiche ', '');
INSERT INTO `state` VALUES ('578', '100', 'Retalhuleu ', '');
INSERT INTO `state` VALUES ('579', '100', 'Sacatepequez ', '');
INSERT INTO `state` VALUES ('580', '100', 'San Marcos ', '');
INSERT INTO `state` VALUES ('581', '100', 'Santa Rosa', '');
INSERT INTO `state` VALUES ('582', '100', 'Solola ', '');
INSERT INTO `state` VALUES ('583', '100', 'Suchitepequez ', '');
INSERT INTO `state` VALUES ('584', '100', 'Totonicapan ', '');
INSERT INTO `state` VALUES ('585', '100', 'Zacapa ', '');
INSERT INTO `state` VALUES ('587', '102', 'Conakry ', '');
INSERT INTO `state` VALUES ('588', '103', 'Guinea-Bissau', '');
INSERT INTO `state` VALUES ('589', '104', 'Demerara-Mahaica ', '');
INSERT INTO `state` VALUES ('590', '104', 'East Berbice-Corentyne', '');
INSERT INTO `state` VALUES ('591', '104', 'Essequibo Islands-West Demerara', '');
INSERT INTO `state` VALUES ('592', '104', 'Mahaica-Berbice', '');
INSERT INTO `state` VALUES ('593', '104', 'Pomeroon-Supenaam', '');
INSERT INTO `state` VALUES ('594', '104', 'Upper Demerara-Berbice', '');
INSERT INTO `state` VALUES ('595', '105', 'Centre ', '');
INSERT INTO `state` VALUES ('596', '105', 'Ouest ', '');
INSERT INTO `state` VALUES ('597', '105', 'Sud-Est', '');
INSERT INTO `state` VALUES ('600', '108', 'Atlantida ', '');
INSERT INTO `state` VALUES ('601', '108', 'Choluteca ', '');
INSERT INTO `state` VALUES ('602', '108', 'Colon ', '');
INSERT INTO `state` VALUES ('603', '108', 'Comayagua ', '');
INSERT INTO `state` VALUES ('604', '108', 'Copan ', '');
INSERT INTO `state` VALUES ('605', '108', 'Cortes ', '');
INSERT INTO `state` VALUES ('606', '108', 'El Paraiso', '');
INSERT INTO `state` VALUES ('607', '108', 'Francisco Morazan ', '');
INSERT INTO `state` VALUES ('608', '108', 'Gracias a Dios', '');
INSERT INTO `state` VALUES ('609', '108', 'Intibuca ', '');
INSERT INTO `state` VALUES ('610', '108', 'Islas de la Bahia ', '');
INSERT INTO `state` VALUES ('611', '108', 'La Paz', '');
INSERT INTO `state` VALUES ('612', '108', 'Lempira ', '');
INSERT INTO `state` VALUES ('613', '108', 'Ocotepeque ', '');
INSERT INTO `state` VALUES ('614', '108', 'Olancho ', '');
INSERT INTO `state` VALUES ('615', '108', 'Santa Barbara', '');
INSERT INTO `state` VALUES ('616', '108', 'Valle ', '');
INSERT INTO `state` VALUES ('617', '108', 'Yoro ', '');
INSERT INTO `state` VALUES ('618', '109', 'Hong Kong', '');
INSERT INTO `state` VALUES ('620', '111', 'Bacs-Kiskun', '');
INSERT INTO `state` VALUES ('621', '111', 'Baranya ', '');
INSERT INTO `state` VALUES ('622', '111', 'Borsod-Abauj-Zemblen', '');
INSERT INTO `state` VALUES ('623', '111', 'Budapest ', '');
INSERT INTO `state` VALUES ('624', '111', 'Csongrad ', '');
INSERT INTO `state` VALUES ('625', '111', 'Fejer ', '');
INSERT INTO `state` VALUES ('626', '111', 'Gyor-Moson-Sopron', '');
INSERT INTO `state` VALUES ('627', '111', 'Hajdu-Bihar', '');
INSERT INTO `state` VALUES ('628', '111', 'Heves ', '');
INSERT INTO `state` VALUES ('629', '111', 'Jasz-Nagkyun-Szolnok', '');
INSERT INTO `state` VALUES ('630', '111', 'Komarom-Esztergom', '');
INSERT INTO `state` VALUES ('631', '111', 'Nograd ', '');
INSERT INTO `state` VALUES ('632', '111', 'Pest ', '');
INSERT INTO `state` VALUES ('633', '111', 'Somogy ', '');
INSERT INTO `state` VALUES ('634', '111', 'Szabolcs-Szatmar-Bereg ', '');
INSERT INTO `state` VALUES ('635', '111', 'Tolna ', '');
INSERT INTO `state` VALUES ('636', '111', 'Vas ', '');
INSERT INTO `state` VALUES ('637', '111', 'Zala ', '');
INSERT INTO `state` VALUES ('638', '112', 'Hofudborgarsvaedi ', '');
INSERT INTO `state` VALUES ('639', '112', 'Nordhurland Vestra', '');
INSERT INTO `state` VALUES ('640', '112', 'Sudhurland ', '');
INSERT INTO `state` VALUES ('641', '112', 'Sudhurnes ', '');
INSERT INTO `state` VALUES ('642', '113', 'Andhra Pradesh ', '');
INSERT INTO `state` VALUES ('643', '113', 'Assam ', '');
INSERT INTO `state` VALUES ('644', '113', 'Bihar ', '');
INSERT INTO `state` VALUES ('645', '113', 'Chandigarh ', '');
INSERT INTO `state` VALUES ('646', '113', 'Chhattisgarh ', '');
INSERT INTO `state` VALUES ('647', '113', 'Delhi ', '');
INSERT INTO `state` VALUES ('648', '113', 'Goa ', '');
INSERT INTO `state` VALUES ('649', '113', 'Gujarat ', '');
INSERT INTO `state` VALUES ('650', '113', 'Haryana ', '');
INSERT INTO `state` VALUES ('651', '113', 'Himachal Pradesh', '');
INSERT INTO `state` VALUES ('652', '113', 'Jammu and Kashmir', '');
INSERT INTO `state` VALUES ('653', '113', 'Jharkhand ', '');
INSERT INTO `state` VALUES ('654', '113', 'Karnataka ', '');
INSERT INTO `state` VALUES ('655', '113', 'Kerala ', '');
INSERT INTO `state` VALUES ('656', '113', 'Madhya Pradesh', '');
INSERT INTO `state` VALUES ('657', '113', 'Maharashtra ', '');
INSERT INTO `state` VALUES ('658', '113', 'Manipur ', '');
INSERT INTO `state` VALUES ('659', '113', 'Orissa ', '');
INSERT INTO `state` VALUES ('660', '113', 'Pondicherry ', '');
INSERT INTO `state` VALUES ('661', '113', 'Punjab ', '');
INSERT INTO `state` VALUES ('662', '113', 'Rajasthan ', '');
INSERT INTO `state` VALUES ('663', '113', 'Sikkim ', '');
INSERT INTO `state` VALUES ('664', '113', 'Tamil Nadu', '');
INSERT INTO `state` VALUES ('665', '113', 'Uttar Pradesh', '');
INSERT INTO `state` VALUES ('666', '113', 'Uttarakhand ', '');
INSERT INTO `state` VALUES ('667', '113', 'West Bengal', '');
INSERT INTO `state` VALUES ('668', '114', 'Bali ', '');
INSERT INTO `state` VALUES ('669', '114', 'Banten ', '');
INSERT INTO `state` VALUES ('670', '114', 'Jakarta Raya', '');
INSERT INTO `state` VALUES ('671', '114', 'Jawa Barat - West Java ', '');
INSERT INTO `state` VALUES ('672', '114', 'Jawa Tengah - Central Java ', '');
INSERT INTO `state` VALUES ('673', '114', 'Jawa Timur - East Java ', '');
INSERT INTO `state` VALUES ('674', '114', 'Kalimantan Barat - West Kalimantan', '');
INSERT INTO `state` VALUES ('675', '114', 'Kalimantan Timur - East Kalimantan ', '');
INSERT INTO `state` VALUES ('676', '114', 'Lampung ', '');
INSERT INTO `state` VALUES ('677', '114', 'Nusa Tenggara Barat - West Nusa Tenggara ', '');
INSERT INTO `state` VALUES ('678', '114', 'Papua ', '');
INSERT INTO `state` VALUES ('679', '114', 'Riau Kepulauan', '');
INSERT INTO `state` VALUES ('680', '114', 'Sulawesi Selatan - South Sulawesi', '');
INSERT INTO `state` VALUES ('681', '114', 'Sulawesi Utara - North Sulawesi ', '');
INSERT INTO `state` VALUES ('682', '114', 'Sumatera Barat - West Sumatra ', '');
INSERT INTO `state` VALUES ('683', '114', 'Sumatera Selatan - South Sumatra', '');
INSERT INTO `state` VALUES ('684', '114', 'Sumatera Utara - North Sumatra', '');
INSERT INTO `state` VALUES ('685', '114', 'Yogyakarta ', '');
INSERT INTO `state` VALUES ('687', '116', 'Al Basrah ', '');
INSERT INTO `state` VALUES ('688', '116', 'Baghdad ', '');
INSERT INTO `state` VALUES ('689', '117', 'Carlow ', '');
INSERT INTO `state` VALUES ('690', '117', 'Cavan ', '');
INSERT INTO `state` VALUES ('691', '117', 'Clare ', '');
INSERT INTO `state` VALUES ('692', '117', 'Cork ', '');
INSERT INTO `state` VALUES ('693', '117', 'Donegal ', '');
INSERT INTO `state` VALUES ('694', '117', 'Dublin ', '');
INSERT INTO `state` VALUES ('695', '117', 'Galway ', '');
INSERT INTO `state` VALUES ('696', '117', 'Kerry ', '');
INSERT INTO `state` VALUES ('697', '117', 'Kildare ', '');
INSERT INTO `state` VALUES ('698', '117', 'Kilkenny ', '');
INSERT INTO `state` VALUES ('699', '117', 'Laois ', '');
INSERT INTO `state` VALUES ('700', '117', 'Leitrim ', '');
INSERT INTO `state` VALUES ('701', '117', 'Limerick ', '');
INSERT INTO `state` VALUES ('702', '117', 'Longford ', '');
INSERT INTO `state` VALUES ('703', '117', 'Louth ', '');
INSERT INTO `state` VALUES ('704', '117', 'Mayo ', '');
INSERT INTO `state` VALUES ('705', '117', 'Meath ', '');
INSERT INTO `state` VALUES ('706', '117', 'Monaghan ', '');
INSERT INTO `state` VALUES ('707', '117', 'Offaly ', '');
INSERT INTO `state` VALUES ('708', '117', 'Roscommon ', '');
INSERT INTO `state` VALUES ('709', '117', 'Sligo ', '');
INSERT INTO `state` VALUES ('710', '117', 'Tipperary ', '');
INSERT INTO `state` VALUES ('711', '117', 'Waterford ', '');
INSERT INTO `state` VALUES ('712', '117', 'Westmeath ', '');
INSERT INTO `state` VALUES ('713', '117', 'Wexford ', '');
INSERT INTO `state` VALUES ('714', '117', 'Wicklow ', '');
INSERT INTO `state` VALUES ('715', '118', 'Hadaron (Southern Dsitrict)', '');
INSERT INTO `state` VALUES ('716', '118', 'Haifa - Hefa ', '');
INSERT INTO `state` VALUES ('717', '118', 'Hamerkaz (Central district)', '');
INSERT INTO `state` VALUES ('718', '118', 'Hazafon (Northern District)', '');
INSERT INTO `state` VALUES ('719', '118', 'Jerusalem ', '');
INSERT INTO `state` VALUES ('720', '118', 'Tel Aviv ', '');
INSERT INTO `state` VALUES ('721', '119', 'Abruzzo ', '');
INSERT INTO `state` VALUES ('722', '119', 'Basilicata ', '');
INSERT INTO `state` VALUES ('723', '119', 'Calabria ', '');
INSERT INTO `state` VALUES ('724', '119', 'Campania ', '');
INSERT INTO `state` VALUES ('725', '119', 'Emilia-Romagna', '');
INSERT INTO `state` VALUES ('726', '119', 'Friuli-Venezia Giulia ', '');
INSERT INTO `state` VALUES ('727', '119', 'Lazio ', '');
INSERT INTO `state` VALUES ('728', '119', 'Liguria ', '');
INSERT INTO `state` VALUES ('729', '119', 'Lombardia ', '');
INSERT INTO `state` VALUES ('730', '119', 'Marche ', '');
INSERT INTO `state` VALUES ('731', '119', 'Molise ', '');
INSERT INTO `state` VALUES ('732', '119', 'Piemonte ', '');
INSERT INTO `state` VALUES ('733', '119', 'Puglia ', '');
INSERT INTO `state` VALUES ('734', '119', 'Sardegna ', '');
INSERT INTO `state` VALUES ('735', '119', 'Sicilia ', '');
INSERT INTO `state` VALUES ('736', '119', 'Toscana ', '');
INSERT INTO `state` VALUES ('737', '119', 'Trentino-Alto Adige', '');
INSERT INTO `state` VALUES ('738', '119', 'Umbria ', '');
INSERT INTO `state` VALUES ('739', '119', 'Veneto ', '');
INSERT INTO `state` VALUES ('740', '120', 'Clarendon ', '');
INSERT INTO `state` VALUES ('741', '120', 'Hanover ', '');
INSERT INTO `state` VALUES ('742', '120', 'Kingston ', '');
INSERT INTO `state` VALUES ('743', '120', 'Manchester ', '');
INSERT INTO `state` VALUES ('744', '120', 'Saint Andrew ', '');
INSERT INTO `state` VALUES ('745', '120', 'Saint Ann ', '');
INSERT INTO `state` VALUES ('746', '120', 'Saint Catherine', '');
INSERT INTO `state` VALUES ('747', '120', 'Saint Elizabeth ', '');
INSERT INTO `state` VALUES ('748', '120', 'Saint James ', '');
INSERT INTO `state` VALUES ('749', '120', 'Saint Mary ', '');
INSERT INTO `state` VALUES ('750', '120', 'Saint Thomas', '');
INSERT INTO `state` VALUES ('751', '120', 'Trelawny ', '');
INSERT INTO `state` VALUES ('752', '120', 'Westmoreland ', '');
INSERT INTO `state` VALUES ('754', '122', 'Mie Prefecture', '');
INSERT INTO `state` VALUES ('755', '122', 'Kyoto ', '');
INSERT INTO `state` VALUES ('756', '122', 'Saga ', '');
INSERT INTO `state` VALUES ('757', '122', 'Hyogo ', '');
INSERT INTO `state` VALUES ('758', '122', 'Hokkaido ', '');
INSERT INTO `state` VALUES ('759', '122', 'Chiba ', '');
INSERT INTO `state` VALUES ('760', '122', 'Wakayama ', '');
INSERT INTO `state` VALUES ('761', '122', 'Saitama ', '');
INSERT INTO `state` VALUES ('762', '122', 'Oita ', '');
INSERT INTO `state` VALUES ('763', '122', 'Osaka prefecture', '');
INSERT INTO `state` VALUES ('764', '122', 'NARA ', '');
INSERT INTO `state` VALUES ('765', '122', 'Miyagi ', '');
INSERT INTO `state` VALUES ('766', '122', 'Miyazaki ', '');
INSERT INTO `state` VALUES ('767', '122', 'Toyama ', '');
INSERT INTO `state` VALUES ('768', '122', 'Yamaguchi ', '');
INSERT INTO `state` VALUES ('769', '122', 'Yamagata Prefecture', '');
INSERT INTO `state` VALUES ('770', '122', 'Yamanashi ', '');
INSERT INTO `state` VALUES ('771', '122', 'Gifu ', '');
INSERT INTO `state` VALUES ('772', '122', 'Okayama ', '');
INSERT INTO `state` VALUES ('773', '122', 'Iwate Prefecture', '');
INSERT INTO `state` VALUES ('774', '122', 'Shimane Prefecture', '');
INSERT INTO `state` VALUES ('775', '122', 'Shimane Prefecture', '');
INSERT INTO `state` VALUES ('776', '122', 'Hiroshima ', '');
INSERT INTO `state` VALUES ('777', '122', 'Tokushima ', '');
INSERT INTO `state` VALUES ('778', '122', 'Ehime ', '');
INSERT INTO `state` VALUES ('779', '122', 'Aichi ', '');
INSERT INTO `state` VALUES ('780', '122', 'Niigata ', '');
INSERT INTO `state` VALUES ('781', '122', 'Tokyo ', '');
INSERT INTO `state` VALUES ('782', '122', 'Tochigi ', '');
INSERT INTO `state` VALUES ('783', '122', 'Okinawa ', '');
INSERT INTO `state` VALUES ('784', '122', 'Shiga ', '');
INSERT INTO `state` VALUES ('785', '122', 'Kumamoto ', '');
INSERT INTO `state` VALUES ('786', '122', 'Ishikawa ', '');
INSERT INTO `state` VALUES ('787', '122', 'Kanagawa ', '');
INSERT INTO `state` VALUES ('788', '122', 'Fukui ', '');
INSERT INTO `state` VALUES ('789', '122', 'Fukuoka ', '');
INSERT INTO `state` VALUES ('790', '122', 'Fukushima ', '');
INSERT INTO `state` VALUES ('791', '122', 'Akita ', '');
INSERT INTO `state` VALUES ('792', '122', 'Gunma ', '');
INSERT INTO `state` VALUES ('793', '122', 'Ibaraki ', '');
INSERT INTO `state` VALUES ('794', '122', 'Nagasaki ', '');
INSERT INTO `state` VALUES ('795', '122', 'Nagano ', '');
INSERT INTO `state` VALUES ('796', '122', 'Aomori Prefecture ', '');
INSERT INTO `state` VALUES ('797', '122', 'Shizuoka ', '');
INSERT INTO `state` VALUES ('798', '122', 'Kagawa ', '');
INSERT INTO `state` VALUES ('799', '122', 'Kochi ', '');
INSERT INTO `state` VALUES ('800', '122', 'Tottori ', '');
INSERT INTO `state` VALUES ('801', '122', 'Kagoshima Prefecture ', '');
INSERT INTO `state` VALUES ('805', '126', 'Al Karak', '');
INSERT INTO `state` VALUES ('806', '126', 'Irbid ', '');
INSERT INTO `state` VALUES ('809', '129', 'Central ', '');
INSERT INTO `state` VALUES ('810', '129', 'Coast ', '');
INSERT INTO `state` VALUES ('811', '129', 'Eastern ', '');
INSERT INTO `state` VALUES ('812', '129', 'Nairobi Area ', '');
INSERT INTO `state` VALUES ('813', '129', 'Nyanza ', '');
INSERT INTO `state` VALUES ('814', '129', 'Rift Valley ', '');
INSERT INTO `state` VALUES ('815', '129', 'Western ', '');
INSERT INTO `state` VALUES ('817', '131', 'Kiribati ', '');
INSERT INTO `state` VALUES ('820', '134', 'Al Ahmadi', '');
INSERT INTO `state` VALUES ('821', '134', 'Al Farwaniyah', '');
INSERT INTO `state` VALUES ('822', '135', 'Bishkek Shaary', '');
INSERT INTO `state` VALUES ('823', '135', 'Ysyk-Kol (Karakol)', '');
INSERT INTO `state` VALUES ('825', '137', 'Liepajas ', '');
INSERT INTO `state` VALUES ('826', '137', 'Rigas ', '');
INSERT INTO `state` VALUES ('827', '137', 'Ventspils ', '');
INSERT INTO `state` VALUES ('828', '138', 'Beyrouth ', '');
INSERT INTO `state` VALUES ('829', '138', 'Liban-Nord', '');
INSERT INTO `state` VALUES ('830', '139', 'Maseru ', '');
INSERT INTO `state` VALUES ('831', '140', 'Bong ', '');
INSERT INTO `state` VALUES ('832', '140', 'Montserrado ', '');
INSERT INTO `state` VALUES ('834', '142', 'Balzers ', '');
INSERT INTO `state` VALUES ('835', '142', 'Planken ', '');
INSERT INTO `state` VALUES ('836', '142', 'Ruggell ', '');
INSERT INTO `state` VALUES ('837', '142', 'Schaan ', '');
INSERT INTO `state` VALUES ('838', '142', 'Schellenberg ', '');
INSERT INTO `state` VALUES ('839', '142', 'Triesen ', '');
INSERT INTO `state` VALUES ('840', '142', 'Vaduz ', '');
INSERT INTO `state` VALUES ('841', '143', 'Kauno ', '');
INSERT INTO `state` VALUES ('842', '143', 'Klaipedos ', '');
INSERT INTO `state` VALUES ('843', '143', 'Vilniaus ', '');
INSERT INTO `state` VALUES ('844', '144', 'Diekirch ', '');
INSERT INTO `state` VALUES ('845', '144', 'Grevenmacher ', '');
INSERT INTO `state` VALUES ('846', '144', 'Luxembourg ', '');
INSERT INTO `state` VALUES ('848', '146', 'Ohrid ', '');
INSERT INTO `state` VALUES ('849', '146', 'Skopje ', '');
INSERT INTO `state` VALUES ('850', '146', 'Tetovo ', '');
INSERT INTO `state` VALUES ('851', '147', 'Antananarivo ', '');
INSERT INTO `state` VALUES ('852', '148', 'Blantyre ', '');
INSERT INTO `state` VALUES ('853', '149', 'Johor ', '');
INSERT INTO `state` VALUES ('854', '149', 'Kedah ', '');
INSERT INTO `state` VALUES ('855', '149', 'Kelantan ', '');
INSERT INTO `state` VALUES ('856', '149', 'Melaka ', '');
INSERT INTO `state` VALUES ('857', '149', 'Negeri Sembilan ', '');
INSERT INTO `state` VALUES ('858', '149', 'Pahang ', '');
INSERT INTO `state` VALUES ('859', '149', 'Perak ', '');
INSERT INTO `state` VALUES ('860', '149', 'Perlis ', '');
INSERT INTO `state` VALUES ('861', '149', 'Pulau Pinang', '');
INSERT INTO `state` VALUES ('862', '149', 'Sabah ', '');
INSERT INTO `state` VALUES ('863', '149', 'Sarawak ', '');
INSERT INTO `state` VALUES ('864', '149', 'Selangor ', '');
INSERT INTO `state` VALUES ('865', '149', 'Terengganu ', '');
INSERT INTO `state` VALUES ('866', '149', 'Wilayah persekutuan Labuan', '');
INSERT INTO `state` VALUES ('867', '150', 'Maale ', '');
INSERT INTO `state` VALUES ('868', '151', 'Bamako ', '');
INSERT INTO `state` VALUES ('869', '151', 'Mopti ', '');
INSERT INTO `state` VALUES ('870', '152', 'Malta ', '');
INSERT INTO `state` VALUES ('873', '154', 'Marshall Islands', '');
INSERT INTO `state` VALUES ('879', '158', 'Mayotte ', '');
INSERT INTO `state` VALUES ('875', '155', 'Fort-de-Franc', '');
INSERT INTO `state` VALUES ('876', '156', 'Nouakchott ', '');
INSERT INTO `state` VALUES ('877', '157', 'Plaines Wilhems', '');
INSERT INTO `state` VALUES ('878', '157', 'Port Louis', '');
INSERT INTO `state` VALUES ('880', '159', 'Aguascalientes ', '');
INSERT INTO `state` VALUES ('881', '159', 'Baja California ', '');
INSERT INTO `state` VALUES ('882', '159', 'Baja California Sur', '');
INSERT INTO `state` VALUES ('883', '159', 'Campeche ', '');
INSERT INTO `state` VALUES ('884', '159', 'Chiapas ', '');
INSERT INTO `state` VALUES ('885', '159', 'Chihuahua ', '');
INSERT INTO `state` VALUES ('886', '159', 'Coahuila ', '');
INSERT INTO `state` VALUES ('887', '159', 'Colima ', '');
INSERT INTO `state` VALUES ('888', '159', 'Distrito Federal ', '');
INSERT INTO `state` VALUES ('889', '159', 'Durango ', '');
INSERT INTO `state` VALUES ('890', '159', 'Guanajuato ', '');
INSERT INTO `state` VALUES ('891', '159', 'Guerrero ', '');
INSERT INTO `state` VALUES ('892', '159', 'Hidalgo ', '');
INSERT INTO `state` VALUES ('893', '159', 'Jalisco ', '');
INSERT INTO `state` VALUES ('894', '159', 'Mexico ', '');
INSERT INTO `state` VALUES ('895', '159', 'Michoacan ', '');
INSERT INTO `state` VALUES ('896', '159', 'Morelos ', '');
INSERT INTO `state` VALUES ('897', '159', 'Nayarit ', '');
INSERT INTO `state` VALUES ('898', '159', 'Nuevo Leon', '');
INSERT INTO `state` VALUES ('899', '159', 'Oaxaca ', '');
INSERT INTO `state` VALUES ('900', '159', 'Queretaro ', '');
INSERT INTO `state` VALUES ('901', '159', 'Quintana Roo', '');
INSERT INTO `state` VALUES ('902', '159', 'San Luis Potosi', '');
INSERT INTO `state` VALUES ('903', '159', 'Sinaloa ', '');
INSERT INTO `state` VALUES ('904', '159', 'Sonora ', '');
INSERT INTO `state` VALUES ('905', '159', 'Tabasco ', '');
INSERT INTO `state` VALUES ('906', '159', 'Tamaulipas ', '');
INSERT INTO `state` VALUES ('907', '159', 'Tlaxcala ', '');
INSERT INTO `state` VALUES ('908', '159', 'Veracruz ', '');
INSERT INTO `state` VALUES ('909', '159', 'Yucatan ', '');
INSERT INTO `state` VALUES ('914', '164', 'Monaco ', '');
INSERT INTO `state` VALUES ('915', '165', 'Arhangay ', '');
INSERT INTO `state` VALUES ('916', '165', 'Bayan-Olgiy', '');
INSERT INTO `state` VALUES ('917', '165', 'Bulgan ', '');
INSERT INTO `state` VALUES ('918', '165', 'Dornod ', '');
INSERT INTO `state` VALUES ('919', '165', 'Govi-Altay', '');
INSERT INTO `state` VALUES ('920', '165', 'Hentiy ', '');
INSERT INTO `state` VALUES ('921', '165', 'Hovd ', '');
INSERT INTO `state` VALUES ('922', '165', 'Hovsgol ', '');
INSERT INTO `state` VALUES ('923', '165', 'Orhon ', '');
INSERT INTO `state` VALUES ('924', '165', 'Selenge ', '');
INSERT INTO `state` VALUES ('925', '165', 'Ulaanbaatar ', '');
INSERT INTO `state` VALUES ('926', '165', 'Uvs ', '');
INSERT INTO `state` VALUES ('928', '167', 'Montserrat ', '');
INSERT INTO `state` VALUES ('929', '168', 'Montserrat ', '');
INSERT INTO `state` VALUES ('930', '168', 'Fes-Boulmane', '');
INSERT INTO `state` VALUES ('931', '168', 'Meknes-Tafilalet', '');
INSERT INTO `state` VALUES ('932', '168', 'Oriental ', '');
INSERT INTO `state` VALUES ('933', '168', 'Rabat-Sale-Zemmour-Zaer', '');
INSERT INTO `state` VALUES ('934', '168', 'Sous-Massa-Draa ', '');
INSERT INTO `state` VALUES ('935', '168', 'Casablanca ', '');
INSERT INTO `state` VALUES ('936', '168', 'Fes-Boulmane', '');
INSERT INTO `state` VALUES ('937', '169', 'Maputo City ', '');
INSERT INTO `state` VALUES ('938', '169', 'Nampula ', '');
INSERT INTO `state` VALUES ('939', '170', 'Mon State', '');
INSERT INTO `state` VALUES ('940', '170', 'Yangon ', '');
INSERT INTO `state` VALUES ('941', '171', 'Erongo ', '');
INSERT INTO `state` VALUES ('942', '171', 'Kavango ', '');
INSERT INTO `state` VALUES ('943', '171', 'Khomas ', '');
INSERT INTO `state` VALUES ('944', '171', 'Oshana ', '');
INSERT INTO `state` VALUES ('945', '171', 'Oshikoto ', '');
INSERT INTO `state` VALUES ('946', '171', 'Otjozondjupa ', '');
INSERT INTO `state` VALUES ('947', '172', 'Nauru ', '');
INSERT INTO `state` VALUES ('949', '174', 'Bagmati ', '');
INSERT INTO `state` VALUES ('950', '174', 'Kosi ', '');
INSERT INTO `state` VALUES ('951', '175', 'Drenthe ', '');
INSERT INTO `state` VALUES ('952', '175', 'Flevoland ', '');
INSERT INTO `state` VALUES ('953', '175', 'Friesland ', '');
INSERT INTO `state` VALUES ('954', '175', 'Gelderland ', '');
INSERT INTO `state` VALUES ('955', '175', 'Groningen ', '');
INSERT INTO `state` VALUES ('956', '175', 'Limburg ', '');
INSERT INTO `state` VALUES ('957', '175', 'Noord-Brabant', '');
INSERT INTO `state` VALUES ('958', '175', 'Noord-Holland', '');
INSERT INTO `state` VALUES ('959', '175', 'Overijssel ', '');
INSERT INTO `state` VALUES ('960', '175', 'Utrecht ', '');
INSERT INTO `state` VALUES ('961', '175', 'Zeeland ', '');
INSERT INTO `state` VALUES ('962', '175', 'Zuid-Holland', '');
INSERT INTO `state` VALUES ('963', '176', 'Netherlands Antilles', '');
INSERT INTO `state` VALUES ('964', '177', 'New Caledonia', '');
INSERT INTO `state` VALUES ('965', '178', 'Auckland ', '');
INSERT INTO `state` VALUES ('966', '178', 'Bay of Plenty', '');
INSERT INTO `state` VALUES ('967', '178', 'Canterbury ', '');
INSERT INTO `state` VALUES ('968', '178', 'Chatham islands', '');
INSERT INTO `state` VALUES ('969', '178', 'Christchurch ', '');
INSERT INTO `state` VALUES ('970', '178', 'Coromandel ', '');
INSERT INTO `state` VALUES ('971', '178', 'Dunedin ', '');
INSERT INTO `state` VALUES ('972', '178', 'Eastland ', '');
INSERT INTO `state` VALUES ('973', '178', 'Fiordland ', '');
INSERT INTO `state` VALUES ('974', '178', 'Horowhenua ', '');
INSERT INTO `state` VALUES ('975', '178', 'Mt Cook', '');
INSERT INTO `state` VALUES ('976', '178', 'Nelson ', '');
INSERT INTO `state` VALUES ('977', '178', 'Northland ', '');
INSERT INTO `state` VALUES ('978', '178', 'Otago ', '');
INSERT INTO `state` VALUES ('979', '178', 'Rotorua ', '');
INSERT INTO `state` VALUES ('980', '178', 'Southland ', '');
INSERT INTO `state` VALUES ('981', '178', 'Taranaki ', '');
INSERT INTO `state` VALUES ('982', '178', 'Taupo/Ruapehu', '');
INSERT INTO `state` VALUES ('983', '178', 'Waikato ', '');
INSERT INTO `state` VALUES ('984', '178', 'Wairarapa ', '');
INSERT INTO `state` VALUES ('985', '178', 'Wanaka ', '');
INSERT INTO `state` VALUES ('986', '178', 'Wellington ', '');
INSERT INTO `state` VALUES ('987', '178', 'Westcoast ', '');
INSERT INTO `state` VALUES ('988', '179', 'Atlantico Norte', '');
INSERT INTO `state` VALUES ('989', '179', 'Atlantico Sur ', '');
INSERT INTO `state` VALUES ('990', '179', 'Boaco ', '');
INSERT INTO `state` VALUES ('991', '179', 'Carazo ', '');
INSERT INTO `state` VALUES ('992', '179', 'Chinandega ', '');
INSERT INTO `state` VALUES ('993', '179', 'Chontales ', '');
INSERT INTO `state` VALUES ('994', '179', 'Esteli ', '');
INSERT INTO `state` VALUES ('995', '179', 'Granada ', '');
INSERT INTO `state` VALUES ('996', '179', 'Jinotega ', '');
INSERT INTO `state` VALUES ('997', '179', 'Leon ', '');
INSERT INTO `state` VALUES ('998', '179', 'Madriz ', '');
INSERT INTO `state` VALUES ('999', '179', 'Managua ', '');
INSERT INTO `state` VALUES ('1000', '179', 'Masaya ', '');
INSERT INTO `state` VALUES ('1001', '179', 'Matagalpa ', '');
INSERT INTO `state` VALUES ('1002', '179', 'Nueva Segovia', '');
INSERT INTO `state` VALUES ('1003', '179', 'Rio San Juan ', '');
INSERT INTO `state` VALUES ('1004', '180', 'Niger ', '');
INSERT INTO `state` VALUES ('1005', '181', 'Abuja Federal Capital Territory', '');
INSERT INTO `state` VALUES ('1006', '181', 'Delta ', '');
INSERT INTO `state` VALUES ('1007', '181', 'Edo ', '');
INSERT INTO `state` VALUES ('1008', '181', 'Kaduna ', '');
INSERT INTO `state` VALUES ('1009', '181', 'Lagos ', '');
INSERT INTO `state` VALUES ('1010', '181', 'Osun ', '');
INSERT INTO `state` VALUES ('1011', '181', 'Oyo ', '');
INSERT INTO `state` VALUES ('1012', '181', 'Rivers ', '');
INSERT INTO `state` VALUES ('1013', '182', 'Niue ', '');
INSERT INTO `state` VALUES ('1014', '183', 'Norfolk Island', '');
INSERT INTO `state` VALUES ('1015', '184', 'Saipan ', '');
INSERT INTO `state` VALUES ('1016', '185', 'Akershus ', '');
INSERT INTO `state` VALUES ('1017', '185', 'Aust-Adger', '');
INSERT INTO `state` VALUES ('1018', '185', 'Buskerud ', '');
INSERT INTO `state` VALUES ('1019', '185', 'Hedmark ', '');
INSERT INTO `state` VALUES ('1020', '185', 'Hordaland ', '');
INSERT INTO `state` VALUES ('1021', '185', 'M?re og Romsdal', '');
INSERT INTO `state` VALUES ('1022', '185', 'Nord-Tr?ndelag', '');
INSERT INTO `state` VALUES ('1023', '185', 'Nordland ', '');
INSERT INTO `state` VALUES ('1024', '185', 'Oppland ', '');
INSERT INTO `state` VALUES ('1025', '185', 'Oslo ', '');
INSERT INTO `state` VALUES ('1026', '185', 'Rogaland ', '');
INSERT INTO `state` VALUES ('1027', '185', 'Telemark ', '');
INSERT INTO `state` VALUES ('1028', '185', 'Troms ', '');
INSERT INTO `state` VALUES ('1029', '185', 'Vest-Agder ', '');
INSERT INTO `state` VALUES ('1030', '186', 'Ash Sharqiyah', '');
INSERT INTO `state` VALUES ('1031', '186', 'Masqat ', '');
INSERT INTO `state` VALUES ('1032', '187', 'Azad Kashmir', '');
INSERT INTO `state` VALUES ('1033', '187', 'Balochistan ', '');
INSERT INTO `state` VALUES ('1034', '187', 'N.W.F.P (Surhad', '');
INSERT INTO `state` VALUES ('1035', '187', 'Islamabad Capital Territory', '');
INSERT INTO `state` VALUES ('1036', '187', 'Northern Areas', '');
INSERT INTO `state` VALUES ('1037', '187', 'Punjab ', '');
INSERT INTO `state` VALUES ('1038', '187', 'Sindh ', '');
INSERT INTO `state` VALUES ('1039', '188', 'Palau ', '');
INSERT INTO `state` VALUES ('1041', '190', 'Bocas del Toro', '');
INSERT INTO `state` VALUES ('1042', '190', 'Chiriqui ', '');
INSERT INTO `state` VALUES ('1043', '190', 'Cocle ', '');
INSERT INTO `state` VALUES ('1044', '190', 'Colon ', '');
INSERT INTO `state` VALUES ('1045', '190', 'Darien ', '');
INSERT INTO `state` VALUES ('1046', '190', 'Herrera ', '');
INSERT INTO `state` VALUES ('1047', '190', 'Los Santos', '');
INSERT INTO `state` VALUES ('1048', '190', 'Panama ', '');
INSERT INTO `state` VALUES ('1049', '190', 'Veraguas ', '');
INSERT INTO `state` VALUES ('1050', '191', 'Eastern Highlands', '');
INSERT INTO `state` VALUES ('1051', '191', 'Madang ', '');
INSERT INTO `state` VALUES ('1052', '191', 'Morobe ', '');
INSERT INTO `state` VALUES ('1053', '191', 'National Capital', '');
INSERT INTO `state` VALUES ('1054', '191', 'Western Highlands', '');
INSERT INTO `state` VALUES ('1056', '193', 'Alto Paraguay ', '');
INSERT INTO `state` VALUES ('1057', '193', 'Alto Parana', '');
INSERT INTO `state` VALUES ('1058', '193', 'Amambay ', '');
INSERT INTO `state` VALUES ('1059', '193', 'Asuncion ', '');
INSERT INTO `state` VALUES ('1060', '193', 'Caaguazu ', '');
INSERT INTO `state` VALUES ('1061', '193', 'Caazapa ', '');
INSERT INTO `state` VALUES ('1062', '193', 'Canindeyu ', '');
INSERT INTO `state` VALUES ('1063', '193', 'Central ', '');
INSERT INTO `state` VALUES ('1064', '193', 'Concepcion ', '');
INSERT INTO `state` VALUES ('1065', '193', 'Cordillera ', '');
INSERT INTO `state` VALUES ('1066', '193', 'Guaira ', '');
INSERT INTO `state` VALUES ('1067', '193', 'Itapua ', '');
INSERT INTO `state` VALUES ('1068', '193', 'Misiones ', '');
INSERT INTO `state` VALUES ('1069', '193', 'neembucu ', '');
INSERT INTO `state` VALUES ('1070', '193', 'Paraguari ', '');
INSERT INTO `state` VALUES ('1071', '193', 'Presidente Hayes', '');
INSERT INTO `state` VALUES ('1073', '193', 'San Pedro ', '');
INSERT INTO `state` VALUES ('1074', '194', 'Amazonas ', '');
INSERT INTO `state` VALUES ('1075', '194', 'Ancash ', '');
INSERT INTO `state` VALUES ('1076', '194', 'Apurimac ', '');
INSERT INTO `state` VALUES ('1077', '194', 'Arequipa ', '');
INSERT INTO `state` VALUES ('1078', '194', 'Ayacucho ', '');
INSERT INTO `state` VALUES ('1079', '194', 'Cajamarca ', '');
INSERT INTO `state` VALUES ('1080', '194', 'Callao ', '');
INSERT INTO `state` VALUES ('1081', '194', 'Cusco ', '');
INSERT INTO `state` VALUES ('1082', '194', 'Huancavelica ', '');
INSERT INTO `state` VALUES ('1083', '194', 'Huanuco ', '');
INSERT INTO `state` VALUES ('1084', '194', 'Ica ', '');
INSERT INTO `state` VALUES ('1085', '194', 'Junin ', '');
INSERT INTO `state` VALUES ('1086', '194', 'La Libertad', '');
INSERT INTO `state` VALUES ('1087', '194', '>Lambayeque', '');
INSERT INTO `state` VALUES ('1088', '194', 'Lima ', '');
INSERT INTO `state` VALUES ('1089', '194', 'Loreto ', '');
INSERT INTO `state` VALUES ('1090', '194', 'Madre de Dios', '');
INSERT INTO `state` VALUES ('1091', '194', 'Moquegua ', '');
INSERT INTO `state` VALUES ('1092', '194', 'Pasco ', '');
INSERT INTO `state` VALUES ('1093', '194', 'Puno ', '');
INSERT INTO `state` VALUES ('1094', '194', 'San Martin', '');
INSERT INTO `state` VALUES ('1095', '194', 'Tacna ', '');
INSERT INTO `state` VALUES ('1096', '195', 'Tacna ', '');
INSERT INTO `state` VALUES ('1097', '195', 'Albay ', '');
INSERT INTO `state` VALUES ('1098', '195', 'Benguet ', '');
INSERT INTO `state` VALUES ('1099', '195', 'Cagayan ', '');
INSERT INTO `state` VALUES ('1100', '195', 'Camarines Norte', '');
INSERT INTO `state` VALUES ('1101', '195', 'Capiz ', '');
INSERT INTO `state` VALUES ('1102', '195', 'Cavite ', '');
INSERT INTO `state` VALUES ('1103', '195', 'Cebu ', '');
INSERT INTO `state` VALUES ('1104', '195', 'Davao del Norte', '');
INSERT INTO `state` VALUES ('1105', '195', 'Ilocos Norte ', '');
INSERT INTO `state` VALUES ('1106', '195', 'Iloilo', '');
INSERT INTO `state` VALUES ('1107', '195', 'La Union', '');
INSERT INTO `state` VALUES ('1108', '195', 'Laguna ', '');
INSERT INTO `state` VALUES ('1109', '195', 'Leyte ', '');
INSERT INTO `state` VALUES ('1110', '195', 'Mindoro Oriental', '');
INSERT INTO `state` VALUES ('1111', '195', 'Misamis Oriental', '');
INSERT INTO `state` VALUES ('1112', '195', 'Negros Occidental', '');
INSERT INTO `state` VALUES ('1113', '195', 'Negros Oriental ', '');
INSERT INTO `state` VALUES ('1114', '195', 'Palawan ', '');
INSERT INTO `state` VALUES ('1115', '195', 'Rizal ', '');
INSERT INTO `state` VALUES ('1116', '195', 'Sorsogon ', '');
INSERT INTO `state` VALUES ('1117', '195', 'South Cotabato ', '');
INSERT INTO `state` VALUES ('1118', '195', 'Tarlac ', '');
INSERT INTO `state` VALUES ('1119', '195', 'Tawitawi ', '');
INSERT INTO `state` VALUES ('1120', '195', 'Zambales ', '');
INSERT INTO `state` VALUES ('1121', '195', 'Zamboanga del norte', '');
INSERT INTO `state` VALUES ('1123', '197', 'Dolnoslaskie ', '');
INSERT INTO `state` VALUES ('1124', '197', 'Kujawsko-Pomorskie ', '');
INSERT INTO `state` VALUES ('1125', '197', 'Lodzkie ', '');
INSERT INTO `state` VALUES ('1126', '197', 'Lubelskie ', '');
INSERT INTO `state` VALUES ('1127', '197', 'Lubuskie ', '');
INSERT INTO `state` VALUES ('1128', '197', 'Malopolskie ', '');
INSERT INTO `state` VALUES ('1129', '197', 'Mazowieckie ', '');
INSERT INTO `state` VALUES ('1130', '197', 'Podkarpackie ', '');
INSERT INTO `state` VALUES ('1131', '197', 'Podlaskie ', '');
INSERT INTO `state` VALUES ('1132', '197', 'Pomorskie ', '');
INSERT INTO `state` VALUES ('1133', '197', 'Slaskie ', '');
INSERT INTO `state` VALUES ('1134', '197', 'Swietokrzyskie ', '');
INSERT INTO `state` VALUES ('1135', '197', 'Warminsko-Mazurskie', '');
INSERT INTO `state` VALUES ('1136', '197', 'Wielkopolskie ', '');
INSERT INTO `state` VALUES ('1137', '197', 'Zachodniopomorskie ', '');
INSERT INTO `state` VALUES ('1138', '198', 'Aveiro ', '');
INSERT INTO `state` VALUES ('1139', '198', 'Azores', '');
INSERT INTO `state` VALUES ('1140', '198', 'Braganca ', '');
INSERT INTO `state` VALUES ('1141', '198', 'Coimbra ', '');
INSERT INTO `state` VALUES ('1142', '198', 'evora ', '');
INSERT INTO `state` VALUES ('1143', '198', 'Faro ', '');
INSERT INTO `state` VALUES ('1144', '198', 'Guarda ', '');
INSERT INTO `state` VALUES ('1145', '198', 'Leiria ', '');
INSERT INTO `state` VALUES ('1146', '198', 'Lisboa ', '');
INSERT INTO `state` VALUES ('1147', '198', 'Madeira ', '');
INSERT INTO `state` VALUES ('1148', '198', 'Portalegre ', '');
INSERT INTO `state` VALUES ('1149', '198', 'Porto ', '');
INSERT INTO `state` VALUES ('1150', '198', 'Santarem ', '');
INSERT INTO `state` VALUES ('1151', '198', 'Setubal ', '');
INSERT INTO `state` VALUES ('1152', '198', 'Viana do Castelo', '');
INSERT INTO `state` VALUES ('1153', '198', 'Viseu ', '');
INSERT INTO `state` VALUES ('1154', '199', 'Adjuntas ', '');
INSERT INTO `state` VALUES ('1155', '199', 'Aguada ', '');
INSERT INTO `state` VALUES ('1156', '199', 'Aguadilla ', '');
INSERT INTO `state` VALUES ('1157', '199', 'Aguas Buenas', '');
INSERT INTO `state` VALUES ('1158', '199', 'Aibonito ', '');
INSERT INTO `state` VALUES ('1159', '199', 'Anasco ', '');
INSERT INTO `state` VALUES ('1160', '199', 'Arecibo ', '');
INSERT INTO `state` VALUES ('1161', '199', 'Arroyo ', '');
INSERT INTO `state` VALUES ('1162', '199', 'Barceloneta ', '');
INSERT INTO `state` VALUES ('1163', '199', 'Barranquitas ', '');
INSERT INTO `state` VALUES ('1164', '199', 'Bayamon ', '');
INSERT INTO `state` VALUES ('1165', '199', 'Cabo Rojo', '');
INSERT INTO `state` VALUES ('1166', '199', 'Caguas ', '');
INSERT INTO `state` VALUES ('1167', '199', 'Camuy ', '');
INSERT INTO `state` VALUES ('1168', '199', 'Canovanas ', '');
INSERT INTO `state` VALUES ('1169', '199', 'Carolina ', '');
INSERT INTO `state` VALUES ('1170', '199', 'Catano ', '');
INSERT INTO `state` VALUES ('1171', '199', 'Cayey ', '');
INSERT INTO `state` VALUES ('1172', '199', 'Ceiba ', '');
INSERT INTO `state` VALUES ('1173', '199', 'Ciales ', '');
INSERT INTO `state` VALUES ('1174', '199', 'Cidra ', '');
INSERT INTO `state` VALUES ('1175', '199', 'Coamo ', '');
INSERT INTO `state` VALUES ('1176', '199', 'Comerio ', '');
INSERT INTO `state` VALUES ('1177', '199', 'Corozal ', '');
INSERT INTO `state` VALUES ('1178', '199', 'Culebra ', '');
INSERT INTO `state` VALUES ('1179', '199', 'Dorado ', '');
INSERT INTO `state` VALUES ('1180', '199', 'Fajardo ', '');
INSERT INTO `state` VALUES ('1181', '199', 'Florida ', '');
INSERT INTO `state` VALUES ('1182', '199', 'Guanica ', '');
INSERT INTO `state` VALUES ('1183', '199', 'Guayama ', '');
INSERT INTO `state` VALUES ('1184', '199', 'Guayanilla ', '');
INSERT INTO `state` VALUES ('1185', '199', 'Guaynabo ', '');
INSERT INTO `state` VALUES ('1186', '199', 'Gurabo ', '');
INSERT INTO `state` VALUES ('1187', '199', 'Hatillo ', '');
INSERT INTO `state` VALUES ('1188', '199', 'Hormigueros ', '');
INSERT INTO `state` VALUES ('1189', '199', 'Humacao ', '');
INSERT INTO `state` VALUES ('1190', '199', 'Isabela ', '');
INSERT INTO `state` VALUES ('1191', '199', 'Jayuya ', '');
INSERT INTO `state` VALUES ('1192', '199', 'Juana Diaz', '');
INSERT INTO `state` VALUES ('1193', '199', 'Juncos ', '');
INSERT INTO `state` VALUES ('1194', '199', 'Lajas ', '');
INSERT INTO `state` VALUES ('1195', '199', 'Lares ', '');
INSERT INTO `state` VALUES ('1196', '199', 'Las Marias', '');
INSERT INTO `state` VALUES ('1197', '199', 'Las Piedras', '');
INSERT INTO `state` VALUES ('1198', '199', 'Loiza ', '');
INSERT INTO `state` VALUES ('1199', '199', 'Luquillo ', '');
INSERT INTO `state` VALUES ('1200', '199', 'Manati ', '');
INSERT INTO `state` VALUES ('1201', '199', 'Maricao ', '');
INSERT INTO `state` VALUES ('1202', '199', 'Maunabo ', '');
INSERT INTO `state` VALUES ('1203', '199', 'Mayaguez ', '');
INSERT INTO `state` VALUES ('1204', '199', 'Moca ', '');
INSERT INTO `state` VALUES ('1205', '199', 'Morovis ', '');
INSERT INTO `state` VALUES ('1206', '199', 'Naguabo ', '');
INSERT INTO `state` VALUES ('1207', '199', 'Naranjito ', '');
INSERT INTO `state` VALUES ('1208', '199', 'Orocovis ', '');
INSERT INTO `state` VALUES ('1209', '199', 'Patillas ', '');
INSERT INTO `state` VALUES ('1210', '199', 'Penuelas ', '');
INSERT INTO `state` VALUES ('1211', '199', 'Ponce ', '');
INSERT INTO `state` VALUES ('1212', '199', 'Quebradillas ', '');
INSERT INTO `state` VALUES ('1213', '199', 'Rincon ', '');
INSERT INTO `state` VALUES ('1214', '199', 'Rio Grande', '');
INSERT INTO `state` VALUES ('1215', '199', 'Sabana Grande', '');
INSERT INTO `state` VALUES ('1216', '199', 'Salinas ', '');
INSERT INTO `state` VALUES ('1217', '199', 'San German', '');
INSERT INTO `state` VALUES ('1218', '199', 'San Juan', '');
INSERT INTO `state` VALUES ('1219', '199', 'San Lorenzo', '');
INSERT INTO `state` VALUES ('1220', '199', 'San Sebastian', '');
INSERT INTO `state` VALUES ('1221', '199', 'Santa Isabel', '');
INSERT INTO `state` VALUES ('1222', '199', 'Toa Alta', '');
INSERT INTO `state` VALUES ('1223', '199', 'Toa Baja', '');
INSERT INTO `state` VALUES ('1224', '199', 'Trujillo Alto', '');
INSERT INTO `state` VALUES ('1225', '199', 'Utuado ', '');
INSERT INTO `state` VALUES ('1226', '199', 'Vega Alta', '');
INSERT INTO `state` VALUES ('1227', '199', 'Vega Baja', '');
INSERT INTO `state` VALUES ('1228', '199', 'Vieques ', '');
INSERT INTO `state` VALUES ('1229', '199', 'Villalba ', '');
INSERT INTO `state` VALUES ('1230', '199', 'Yabucoa ', '');
INSERT INTO `state` VALUES ('1231', '199', 'Yauco ', '');
INSERT INTO `state` VALUES ('1232', '200', 'Ad Dawhah', '');
INSERT INTO `state` VALUES ('1233', '200', 'Ar Rayyan', '');
INSERT INTO `state` VALUES ('1234', '201', 'Reunion ', '');
INSERT INTO `state` VALUES ('1235', '202', 'Arad ', '');
INSERT INTO `state` VALUES ('1236', '202', 'Arges ', '');
INSERT INTO `state` VALUES ('1237', '202', 'Bacau ', '');
INSERT INTO `state` VALUES ('1238', '202', 'Bihor ', '');
INSERT INTO `state` VALUES ('1239', '202', 'Brasov ', '');
INSERT INTO `state` VALUES ('1240', '202', 'Bucuresti ', '');
INSERT INTO `state` VALUES ('1241', '202', 'Buzau ', '');
INSERT INTO `state` VALUES ('1242', '202', 'Caras-Severin', '');
INSERT INTO `state` VALUES ('1243', '202', 'Cluj ', '');
INSERT INTO `state` VALUES ('1244', '202', 'Constanta ', '');
INSERT INTO `state` VALUES ('1245', '202', 'Dolj ', '');
INSERT INTO `state` VALUES ('1246', '202', 'Galati ', '');
INSERT INTO `state` VALUES ('1247', '202', 'Harghita ', '');
INSERT INTO `state` VALUES ('1248', '202', 'Hunedoara ', '');
INSERT INTO `state` VALUES ('1249', '202', 'Iasi ', '');
INSERT INTO `state` VALUES ('1250', '202', 'Maramures ', '');
INSERT INTO `state` VALUES ('1251', '202', 'Mures ', '');
INSERT INTO `state` VALUES ('1252', '202', 'Prahova ', '');
INSERT INTO `state` VALUES ('1253', '202', 'Satu Mare', '');
INSERT INTO `state` VALUES ('1254', '202', 'Sibiu ', '');
INSERT INTO `state` VALUES ('1255', '202', 'Timis ', '');
INSERT INTO `state` VALUES ('1256', '202', 'Tulcea ', '');
INSERT INTO `state` VALUES ('1257', '202', 'Vaslui ', '');
INSERT INTO `state` VALUES ('1259', '204', 'Kigali Ngali', '');
INSERT INTO `state` VALUES ('1261', '206', 'Saint George Basseterre', '');
INSERT INTO `state` VALUES ('1262', '207', 'Castries ', '');
INSERT INTO `state` VALUES ('1264', '209', 'Saint George', '');
INSERT INTO `state` VALUES ('1265', '210', 'Samoa ', '');
INSERT INTO `state` VALUES ('1266', '211', 'San Marino', '');
INSERT INTO `state` VALUES ('1267', '212', 'Sao Tome', '');
INSERT INTO `state` VALUES ('1268', '213', 'Al Jawf', '');
INSERT INTO `state` VALUES ('1269', '213', 'Al Qasim', '');
INSERT INTO `state` VALUES ('1270', '213', 'Ar Riyad', '');
INSERT INTO `state` VALUES ('1271', '213', 'Ash Sharqiyah (Eastern Province)', '');
INSERT INTO `state` VALUES ('1272', '213', 'Makkah ', '');
INSERT INTO `state` VALUES ('1273', '214', 'Kaolack ', '');
INSERT INTO `state` VALUES ('1274', '214', 'Louga ', '');
INSERT INTO `state` VALUES ('1275', '214', 'Ziguinchor ', '');
INSERT INTO `state` VALUES ('1278', '217', 'Seychelles ', '');
INSERT INTO `state` VALUES ('1279', '218', 'Southern ', '');
INSERT INTO `state` VALUES ('1280', '218', 'Western ', '');
INSERT INTO `state` VALUES ('1281', '219', 'Singapore ', '');
INSERT INTO `state` VALUES ('1283', '221', 'Dolenjska (Jugovzhodna Slovenija)', '');
INSERT INTO `state` VALUES ('1284', '221', 'Gorenjska ', '');
INSERT INTO `state` VALUES ('1285', '221', 'Notranjsko-kraka', '');
INSERT INTO `state` VALUES ('1286', '221', 'Obalno-kraka', '');
INSERT INTO `state` VALUES ('1287', '221', 'Osrednjeslovenska ', '');
INSERT INTO `state` VALUES ('1288', '221', 'Podravska ', '');
INSERT INTO `state` VALUES ('1289', '221', 'Pomurska ', '');
INSERT INTO `state` VALUES ('1290', '221', 'Savinjska ', '');
INSERT INTO `state` VALUES ('1291', '221', 'Zasavska ', '');
INSERT INTO `state` VALUES ('1292', '222', 'Guadalcanal ', '');
INSERT INTO `state` VALUES ('1293', '223', 'Banaadir ', '');
INSERT INTO `state` VALUES ('1294', '223', 'Gedo ', '');
INSERT INTO `state` VALUES ('1295', '224', 'Eastern Cape', '');
INSERT INTO `state` VALUES ('1296', '224', 'Free State', '');
INSERT INTO `state` VALUES ('1297', '224', 'Gauteng ', '');
INSERT INTO `state` VALUES ('1298', '224', 'KwaZulu-Natal', '');
INSERT INTO `state` VALUES ('1299', '224', 'Mpumalanga ', '');
INSERT INTO `state` VALUES ('1300', '224', 'North-West', '');
INSERT INTO `state` VALUES ('1301', '224', 'Northern Cape', '');
INSERT INTO `state` VALUES ('1302', '224', 'Western Cape', '');
INSERT INTO `state` VALUES ('1304', '226', 'alava ', '');
INSERT INTO `state` VALUES ('1305', '226', 'Albacete ', '');
INSERT INTO `state` VALUES ('1306', '226', 'Alicante ', '');
INSERT INTO `state` VALUES ('1307', '226', 'Almeria ', '');
INSERT INTO `state` VALUES ('1308', '226', 'Asturias ', '');
INSERT INTO `state` VALUES ('1309', '226', 'avila ', '');
INSERT INTO `state` VALUES ('1310', '226', 'Badajoz ', '');
INSERT INTO `state` VALUES ('1311', '226', 'Baleares ', '');
INSERT INTO `state` VALUES ('1312', '226', 'Barcelona ', '');
INSERT INTO `state` VALUES ('1313', '226', 'Burgos ', '');
INSERT INTO `state` VALUES ('1314', '226', 'Caceres ', '');
INSERT INTO `state` VALUES ('1315', '226', 'Cadiz ', '');
INSERT INTO `state` VALUES ('1316', '226', 'Cantabria ', '');
INSERT INTO `state` VALUES ('1317', '226', 'Castellon ', '');
INSERT INTO `state` VALUES ('1318', '226', 'Ceuta ', '');
INSERT INTO `state` VALUES ('1319', '226', 'Ciudad Real', '');
INSERT INTO `state` VALUES ('1320', '226', 'Cordoba ', '');
INSERT INTO `state` VALUES ('1321', '226', 'Cuenca ', '');
INSERT INTO `state` VALUES ('1322', '226', 'Gerona ', '');
INSERT INTO `state` VALUES ('1323', '226', 'Granada ', '');
INSERT INTO `state` VALUES ('1324', '226', 'Guadalajara ', '');
INSERT INTO `state` VALUES ('1325', '226', 'Guipuzcoa ', '');
INSERT INTO `state` VALUES ('1326', '226', 'Huelva ', '');
INSERT INTO `state` VALUES ('1327', '226', 'Huesca ', '');
INSERT INTO `state` VALUES ('1328', '226', 'Jaen ', '');
INSERT INTO `state` VALUES ('1329', '226', 'La Coruna', '');
INSERT INTO `state` VALUES ('1330', '226', 'La Rioja ', '');
INSERT INTO `state` VALUES ('1331', '226', 'Las Palmas', '');
INSERT INTO `state` VALUES ('1332', '226', 'Leon ', '');
INSERT INTO `state` VALUES ('1333', '226', 'Lerida ', '');
INSERT INTO `state` VALUES ('1334', '226', 'Lugo ', '');
INSERT INTO `state` VALUES ('1335', '226', 'Madrid ', '');
INSERT INTO `state` VALUES ('1336', '226', 'Malaga ', '');
INSERT INTO `state` VALUES ('1337', '226', 'Melilla ', '');
INSERT INTO `state` VALUES ('1338', '226', 'Murcia ', '');
INSERT INTO `state` VALUES ('1339', '226', 'Navarra ', '');
INSERT INTO `state` VALUES ('1340', '226', 'Ourense ', '');
INSERT INTO `state` VALUES ('1341', '226', 'Palencia ', '');
INSERT INTO `state` VALUES ('1342', '226', 'Pontevedra ', '');
INSERT INTO `state` VALUES ('1343', '226', 'Salamanca ', '');
INSERT INTO `state` VALUES ('1344', '226', 'Santa Cruz de Tenerife ', '');
INSERT INTO `state` VALUES ('1345', '226', 'Segovia ', '');
INSERT INTO `state` VALUES ('1346', '226', 'Sevilla ', '');
INSERT INTO `state` VALUES ('1347', '226', 'Soria ', '');
INSERT INTO `state` VALUES ('1348', '226', 'Tarragona ', '');
INSERT INTO `state` VALUES ('1349', '226', 'Teruel ', '');
INSERT INTO `state` VALUES ('1350', '226', 'Toledo ', '');
INSERT INTO `state` VALUES ('1351', '226', 'Valencia ', '');
INSERT INTO `state` VALUES ('1352', '226', 'Valladolid ', '');
INSERT INTO `state` VALUES ('1353', '226', 'Vizcaya ', '');
INSERT INTO `state` VALUES ('1354', '226', 'Zamora ', '');
INSERT INTO `state` VALUES ('1355', '226', 'Zaragoza ', '');
INSERT INTO `state` VALUES ('1357', '228', 'Sri Lanka', '');
INSERT INTO `state` VALUES ('1358', '229', 'Al Khartum', '');
INSERT INTO `state` VALUES ('1359', '230', 'Paramaribo ', '');
INSERT INTO `state` VALUES ('1361', '231', 'Paramaribo ', '');
INSERT INTO `state` VALUES ('1362', '232', 'Hhohho ', '');
INSERT INTO `state` VALUES ('1363', '233', 'Blekinge ln', '');
INSERT INTO `state` VALUES ('1364', '233', 'Dalarnas ln', '');
INSERT INTO `state` VALUES ('1365', '233', 'Gvleborgs ln', '');
INSERT INTO `state` VALUES ('1366', '233', 'Gotlands ln', '');
INSERT INTO `state` VALUES ('1367', '233', 'Halland ln', '');
INSERT INTO `state` VALUES ('1368', '233', 'Jmtlands ln', '');
INSERT INTO `state` VALUES ('1369', '233', 'Jonkopings ln', '');
INSERT INTO `state` VALUES ('1370', '233', 'Kalmar ln', '');
INSERT INTO `state` VALUES ('1371', '233', 'Kronobergs ln', '');
INSERT INTO `state` VALUES ('1372', '233', 'Norrbottens ln', '');
INSERT INTO `state` VALUES ('1373', '233', 'orebro ln', '');
INSERT INTO `state` VALUES ('1374', '233', 'ostergotlands ln', '');
INSERT INTO `state` VALUES ('1375', '233', 'Skne ln', '');
INSERT INTO `state` VALUES ('1376', '233', 'Sodermanlands ln', '');
INSERT INTO `state` VALUES ('1377', '233', 'Stockholms ln', '');
INSERT INTO `state` VALUES ('1378', '233', 'Uppsala ln', '');
INSERT INTO `state` VALUES ('1379', '233', 'Vrmlands ln', '');
INSERT INTO `state` VALUES ('1380', '233', 'Vsterbottens ln', '');
INSERT INTO `state` VALUES ('1381', '233', 'Vsternorrlands ln', '');
INSERT INTO `state` VALUES ('1382', '233', 'Vstmanlands ln', '');
INSERT INTO `state` VALUES ('1383', '233', 'Vstra Gotalands ln', '');
INSERT INTO `state` VALUES ('1384', '234', 'Aargau - Argovie', '');
INSERT INTO `state` VALUES ('1385', '234', 'Appenzell Ausserrhoden  Appenzell Rh.(Ext.)', '');
INSERT INTO `state` VALUES ('1386', '234', 'Appenzell Innerrhoden Appenzell Rh.(Int.)', '');
INSERT INTO `state` VALUES ('1387', '234', 'Basel-Landschaft - Bale-Campagne', '');
INSERT INTO `state` VALUES ('1388', '234', 'Basel-Stadt - Bale-Ville', '');
INSERT INTO `state` VALUES ('1389', '234', 'Bern - Berne', '');
INSERT INTO `state` VALUES ('1390', '234', 'Freiburg - Fribourg', '');
INSERT INTO `state` VALUES ('1391', '234', 'Genf - Genve', '');
INSERT INTO `state` VALUES ('1392', '234', 'Glarus - Glaris', '');
INSERT INTO `state` VALUES ('1393', '234', 'Graubunden - Grisons', '');
INSERT INTO `state` VALUES ('1394', '234', 'Jura - Jura', '');
INSERT INTO `state` VALUES ('1395', '234', 'Luzern-Lucerne', '');
INSERT INTO `state` VALUES ('1396', '234', 'Neuenburg - Neuchatel', '');
INSERT INTO `state` VALUES ('1397', '234', 'Nidwalden - Nidwald', '');
INSERT INTO `state` VALUES ('1398', '234', 'Obwalden - Obwald', '');
INSERT INTO `state` VALUES ('1399', '234', 'Sankt Gallen - Saint-Gall', '');
INSERT INTO `state` VALUES ('1400', '234', 'Schaffhausen - Schaffhouse', '');
INSERT INTO `state` VALUES ('1401', '234', 'Schwyz - Schwytz', '');
INSERT INTO `state` VALUES ('1402', '234', 'Solothurn - Soleure', '');
INSERT INTO `state` VALUES ('1403', '234', 'Tessin - Tessin', '');
INSERT INTO `state` VALUES ('1404', '234', 'Thurgau - Thurgovie', '');
INSERT INTO `state` VALUES ('1405', '234', 'Uri - Uri', '');
INSERT INTO `state` VALUES ('1406', '234', 'Waadt - Vaud', '');
INSERT INTO `state` VALUES ('1407', '234', 'Wallis - Valais', '');
INSERT INTO `state` VALUES ('1408', '234', 'Zug - Zoug', '');
INSERT INTO `state` VALUES ('1409', '234', 'Zurich - Zurich', '');
INSERT INTO `state` VALUES ('1412', '237', 'Kuhistoni-Badakhshan', '');
INSERT INTO `state` VALUES ('1413', '237', 'Sughd ', '');
INSERT INTO `state` VALUES ('1415', '239', 'Bangkok ', '');
INSERT INTO `state` VALUES ('1416', '239', 'Chachoengsao ', '');
INSERT INTO `state` VALUES ('1417', '239', 'Chiang Mai', '');
INSERT INTO `state` VALUES ('1418', '239', 'Chonburi ', '');
INSERT INTO `state` VALUES ('1419', '239', 'Nakhon Pathom', '');
INSERT INTO `state` VALUES ('1420', '239', 'Nakhon Ratchasima', '');
INSERT INTO `state` VALUES ('1421', '239', 'Nonthanburi ', '');
INSERT INTO `state` VALUES ('1422', '239', 'Phetchaburi ', '');
INSERT INTO `state` VALUES ('1423', '239', 'Phitsanulok ', '');
INSERT INTO `state` VALUES ('1424', '239', 'Phuket ', '');
INSERT INTO `state` VALUES ('1425', '239', 'Rayong ', '');
INSERT INTO `state` VALUES ('1426', '239', 'Samut Prakan', '');
INSERT INTO `state` VALUES ('1427', '239', 'Suratthani ', '');
INSERT INTO `state` VALUES ('1428', '239', 'Trat ', '');
INSERT INTO `state` VALUES ('1429', '239', 'Udon Thani', '');
INSERT INTO `state` VALUES ('1430', '240', 'Maritime ', '');
INSERT INTO `state` VALUES ('1431', '241', 'Tokelau ', '');
INSERT INTO `state` VALUES ('1432', '242', 'Tonga ', '');
INSERT INTO `state` VALUES ('1433', '243', 'Arima ', '');
INSERT INTO `state` VALUES ('1434', '243', 'Caroni ', '');
INSERT INTO `state` VALUES ('1435', '243', 'Mayaro ', '');
INSERT INTO `state` VALUES ('1436', '243', 'Nariva ', '');
INSERT INTO `state` VALUES ('1437', '243', 'Port-of-Spain', '');
INSERT INTO `state` VALUES ('1438', '243', 'Saint Andrew', '');
INSERT INTO `state` VALUES ('1439', '243', 'Saint David', '');
INSERT INTO `state` VALUES ('1440', '243', 'Saint George', '');
INSERT INTO `state` VALUES ('1441', '243', 'Saint Patrick', '');
INSERT INTO `state` VALUES ('1442', '243', 'San Fernando', '');
INSERT INTO `state` VALUES ('1443', '243', 'Tobago ', '');
INSERT INTO `state` VALUES ('1444', '243', 'Victoria ', '');
INSERT INTO `state` VALUES ('1446', '245', 'Gafsa (Qafsah)', '');
INSERT INTO `state` VALUES ('1447', '245', 'Medenine (Madanin)', '');
INSERT INTO `state` VALUES ('1448', '245', 'Monastir (Al Munastir)', '');
INSERT INTO `state` VALUES ('1449', '245', 'Sousse (Susah)', '');
INSERT INTO `state` VALUES ('1450', '245', 'Tunis ', '');
INSERT INTO `state` VALUES ('1451', '246', 'Adana ', '');
INSERT INTO `state` VALUES ('1452', '246', 'Ankara ', '');
INSERT INTO `state` VALUES ('1453', '246', 'Antalya ', '');
INSERT INTO `state` VALUES ('1454', '246', 'Aydin ', '');
INSERT INTO `state` VALUES ('1455', '246', 'Balikesir ', '');
INSERT INTO `state` VALUES ('1456', '246', 'Bursa ', '');
INSERT INTO `state` VALUES ('1457', '246', 'Diyarbakir ', '');
INSERT INTO `state` VALUES ('1458', '246', 'Eskisehir ', '');
INSERT INTO `state` VALUES ('1459', '246', 'Gaziantep ', '');
INSERT INTO `state` VALUES ('1460', '246', 'Icel ', '');
INSERT INTO `state` VALUES ('1461', '246', 'Isparta ', '');
INSERT INTO `state` VALUES ('1462', '246', 'Istanbul ', '');
INSERT INTO `state` VALUES ('1463', '246', 'Izmir ', '');
INSERT INTO `state` VALUES ('1464', '246', 'Kocaeli ', '');
INSERT INTO `state` VALUES ('1465', '246', 'Manisa ', '');
INSERT INTO `state` VALUES ('1466', '246', 'Mugla ', '');
INSERT INTO `state` VALUES ('1467', '246', 'Nigde ', '');
INSERT INTO `state` VALUES ('1468', '246', 'Samsun ', '');
INSERT INTO `state` VALUES ('1469', '246', 'Tokat ', '');
INSERT INTO `state` VALUES ('1470', '247', 'Ahal (Ashgabat)', '');
INSERT INTO `state` VALUES ('1471', '248', 'Turks And Caicos Islands', '');
INSERT INTO `state` VALUES ('1472', '249', 'Tuvalu ', '');
INSERT INTO `state` VALUES ('1473', '250', 'Central ', '');
INSERT INTO `state` VALUES ('1474', '250', 'Eastern ', '');
INSERT INTO `state` VALUES ('1475', '251', 'Avtonomna Respublika Krym', '');
INSERT INTO `state` VALUES ('1476', '251', 'Cherkasy ', '');
INSERT INTO `state` VALUES ('1477', '251', 'Dnipropetrovsk ', '');
INSERT INTO `state` VALUES ('1478', '251', 'Donetsk ', '');
INSERT INTO `state` VALUES ('1479', '251', 'Kharkiv ', '');
INSERT INTO `state` VALUES ('1480', '251', 'Kyyiv ', '');
INSERT INTO `state` VALUES ('1481', '251', 'Luhansk ', '');
INSERT INTO `state` VALUES ('1482', '251', 'Mykolayiv ', '');
INSERT INTO `state` VALUES ('1483', '251', 'Odesa ', '');
INSERT INTO `state` VALUES ('1484', '251', 'Poltava ', '');
INSERT INTO `state` VALUES ('1485', '251', 'Rivne ', '');
INSERT INTO `state` VALUES ('1486', '251', 'Vinnytsya ', '');
INSERT INTO `state` VALUES ('1487', '252', 'Abu Dhabi', '');
INSERT INTO `state` VALUES ('1488', '252', 'Ajman ', '');
INSERT INTO `state` VALUES ('1489', '252', 'Ash Shariqah', '');
INSERT INTO `state` VALUES ('1490', '252', 'Dubai ', '');
INSERT INTO `state` VALUES ('1491', '252', 'Fujairah ', '');
INSERT INTO `state` VALUES ('1492', '252', 'Ras al-Khaymah', '');
INSERT INTO `state` VALUES ('1493', '253', 'Aberdeen ', '');
INSERT INTO `state` VALUES ('1494', '253', 'Aberdeenshire ', '');
INSERT INTO `state` VALUES ('1495', '253', 'Anglesey ', '');
INSERT INTO `state` VALUES ('1496', '253', 'Angus ', '');
INSERT INTO `state` VALUES ('1497', '253', 'Argyllshire ', '');
INSERT INTO `state` VALUES ('1498', '253', 'Ayrshire ', '');
INSERT INTO `state` VALUES ('1499', '253', 'Banffshire ', '');
INSERT INTO `state` VALUES ('1500', '253', 'Bedfordshire ', '');
INSERT INTO `state` VALUES ('1501', '253', 'Berkshire ', '');
INSERT INTO `state` VALUES ('1502', '253', 'Berwickshire ', '');
INSERT INTO `state` VALUES ('1503', '253', 'Brecknockshire ', '');
INSERT INTO `state` VALUES ('1504', '253', 'Buckinghamshire ', '');
INSERT INTO `state` VALUES ('1505', '253', 'Buteshire ', '');
INSERT INTO `state` VALUES ('1506', '253', 'Caernarfonshire ', '');
INSERT INTO `state` VALUES ('1507', '253', 'Caithness ', '');
INSERT INTO `state` VALUES ('1508', '253', 'Cambridgeshire ', '');
INSERT INTO `state` VALUES ('1509', '253', 'Carmarthenshire ', '');
INSERT INTO `state` VALUES ('1510', '253', 'Ceredigion ', '');
INSERT INTO `state` VALUES ('1511', '253', 'Cheshire ', '');
INSERT INTO `state` VALUES ('1512', '253', 'City of London', '');
INSERT INTO `state` VALUES ('1513', '253', 'Clackmannanshire ', '');
INSERT INTO `state` VALUES ('1514', '253', 'Clwyd ', '');
INSERT INTO `state` VALUES ('1515', '253', 'Cornwall ', '');
INSERT INTO `state` VALUES ('1516', '253', 'County Antrim', '');
INSERT INTO `state` VALUES ('1517', '253', 'County Armagh', '');
INSERT INTO `state` VALUES ('1518', '253', 'County Down', '');
INSERT INTO `state` VALUES ('1519', '253', 'County Durham', '');
INSERT INTO `state` VALUES ('1520', '253', 'County Fermanagh', '');
INSERT INTO `state` VALUES ('1521', '253', 'County Londonderry', '');
INSERT INTO `state` VALUES ('1522', '253', 'County of Herefordshire', '');
INSERT INTO `state` VALUES ('1523', '253', 'County Tyrone', '');
INSERT INTO `state` VALUES ('1524', '253', 'Cumberland ', '');
INSERT INTO `state` VALUES ('1525', '253', 'Cumbria ', '');
INSERT INTO `state` VALUES ('1526', '253', 'Denbighshire ', '');
INSERT INTO `state` VALUES ('1527', '253', 'Derbyshire ', '');
INSERT INTO `state` VALUES ('1528', '253', 'Devon ', '');
INSERT INTO `state` VALUES ('1529', '253', 'Dorset ', '');
INSERT INTO `state` VALUES ('1530', '253', 'Dumfries and Galloway', '');
INSERT INTO `state` VALUES ('1531', '253', 'Dumfriesshire ', '');
INSERT INTO `state` VALUES ('1532', '253', 'Dunbartonshire ', '');
INSERT INTO `state` VALUES ('1533', '253', 'East Lothian', '');
INSERT INTO `state` VALUES ('1534', '253', 'East Sussex', '');
INSERT INTO `state` VALUES ('1535', '253', 'East Yorkshire', '');
INSERT INTO `state` VALUES ('1536', '253', 'Edinburgh ', '');
INSERT INTO `state` VALUES ('1537', '253', 'Essex ', '');
INSERT INTO `state` VALUES ('1538', '253', 'Fife ', '');
INSERT INTO `state` VALUES ('1539', '253', 'Flintshire ', '');
INSERT INTO `state` VALUES ('1540', '253', 'Glamorgan ', '');
INSERT INTO `state` VALUES ('1541', '253', 'Gloucestershire ', '');
INSERT INTO `state` VALUES ('1542', '253', 'Gwynedd ', '');
INSERT INTO `state` VALUES ('1543', '253', 'Hampshire ', '');
INSERT INTO `state` VALUES ('1544', '253', 'Herefordshire ', '');
INSERT INTO `state` VALUES ('1545', '253', 'Hertfordshire ', '');
INSERT INTO `state` VALUES ('1546', '253', 'Highland ', '');
INSERT INTO `state` VALUES ('1547', '253', 'Inverness-shire', '');
INSERT INTO `state` VALUES ('1548', '253', 'Isle of Wight', '');
INSERT INTO `state` VALUES ('1549', '253', 'Isles of Scilly', '');
INSERT INTO `state` VALUES ('1550', '253', 'Kent ', '');
INSERT INTO `state` VALUES ('1551', '253', 'Kincardineshire ', '');
INSERT INTO `state` VALUES ('1552', '253', 'Kinross-Shire', '');
INSERT INTO `state` VALUES ('1553', '253', 'Kirkcudbrightshire ', '');
INSERT INTO `state` VALUES ('1554', '253', 'Lanarkshire ', '');
INSERT INTO `state` VALUES ('1555', '253', 'Lancashire ', '');
INSERT INTO `state` VALUES ('1556', '253', 'Leicestershire ', '');
INSERT INTO `state` VALUES ('1557', '253', 'Lincolnshire ', '');
INSERT INTO `state` VALUES ('1558', '253', 'London ', '');
INSERT INTO `state` VALUES ('1559', '253', 'Merioneth ', '');
INSERT INTO `state` VALUES ('1560', '253', 'Merseyside ', '');
INSERT INTO `state` VALUES ('1561', '253', 'Middlesex ', '');
INSERT INTO `state` VALUES ('1562', '253', 'Midlothian ', '');
INSERT INTO `state` VALUES ('1563', '253', 'Monmouthshire ', '');
INSERT INTO `state` VALUES ('1564', '253', 'Montgomeryshire ', '');
INSERT INTO `state` VALUES ('1565', '253', 'Morayshire ', '');
INSERT INTO `state` VALUES ('1566', '253', 'Norfolk ', '');
INSERT INTO `state` VALUES ('1567', '253', 'North Yorkshire', '');
INSERT INTO `state` VALUES ('1568', '253', 'Northamptonshire ', '');
INSERT INTO `state` VALUES ('1569', '253', 'Northumberland ', '');
INSERT INTO `state` VALUES ('1570', '253', 'Nottinghamshire ', '');
INSERT INTO `state` VALUES ('1571', '253', 'Orkney ', '');
INSERT INTO `state` VALUES ('1572', '253', 'Outer Hebrides', '');
INSERT INTO `state` VALUES ('1573', '253', 'Oxfordshire ', '');
INSERT INTO `state` VALUES ('1574', '253', 'Peeblesshire ', '');
INSERT INTO `state` VALUES ('1575', '253', 'Pembrokeshire ', '');
INSERT INTO `state` VALUES ('1576', '253', 'Perth and Kinross ', '');
INSERT INTO `state` VALUES ('1577', '253', 'Perthshire ', '');
INSERT INTO `state` VALUES ('1578', '253', 'Powys ', '');
INSERT INTO `state` VALUES ('1579', '253', 'Radnorshire ', '');
INSERT INTO `state` VALUES ('1580', '253', 'Renfrewshire ', '');
INSERT INTO `state` VALUES ('1581', '253', 'Ross-shire', '');
INSERT INTO `state` VALUES ('1582', '253', 'Roxburghshire ', '');
INSERT INTO `state` VALUES ('1583', '253', 'Rutland ', '');
INSERT INTO `state` VALUES ('1584', '253', 'Scottish Borders', '');
INSERT INTO `state` VALUES ('1585', '253', 'Selkirkshire ', '');
INSERT INTO `state` VALUES ('1586', '253', 'Shetland ', '');
INSERT INTO `state` VALUES ('1587', '253', 'Shropshire ', '');
INSERT INTO `state` VALUES ('1588', '253', 'Somerset ', '');
INSERT INTO `state` VALUES ('1589', '253', 'South Ayrshire', '');
INSERT INTO `state` VALUES ('1590', '253', 'South Lanarkshire', '');
INSERT INTO `state` VALUES ('1591', '253', 'South Yorkshire', '');
INSERT INTO `state` VALUES ('1592', '253', 'Staffordshire ', '');
INSERT INTO `state` VALUES ('1593', '253', 'Stirling ', '');
INSERT INTO `state` VALUES ('1594', '253', 'Stirlingshire ', '');
INSERT INTO `state` VALUES ('1595', '253', 'Suffolk ', '');
INSERT INTO `state` VALUES ('1596', '253', 'Surrey ', '');
INSERT INTO `state` VALUES ('1597', '253', 'Sussex ', '');
INSERT INTO `state` VALUES ('1598', '253', 'Sutherland ', '');
INSERT INTO `state` VALUES ('1599', '253', 'Swansea ', '');
INSERT INTO `state` VALUES ('1600', '253', 'Tweeddale ', '');
INSERT INTO `state` VALUES ('1601', '253', 'Warwickshire ', '');
INSERT INTO `state` VALUES ('1602', '253', 'West Lothian', '');
INSERT INTO `state` VALUES ('1603', '253', 'West Midlands', '');
INSERT INTO `state` VALUES ('1604', '253', 'West Yorkshire', '');
INSERT INTO `state` VALUES ('1605', '253', 'Westmorland ', '');
INSERT INTO `state` VALUES ('1606', '253', 'Wigtownshire ', '');
INSERT INTO `state` VALUES ('1607', '253', 'Wiltshire ', '');
INSERT INTO `state` VALUES ('1608', '253', 'Worcestershire ', '');
INSERT INTO `state` VALUES ('1609', '254', 'Alabama', 'AL');
INSERT INTO `state` VALUES ('1611', '256', 'Artigas ', '');
INSERT INTO `state` VALUES ('1612', '256', 'Canelones ', '');
INSERT INTO `state` VALUES ('1613', '256', 'Cerro Largo', '');
INSERT INTO `state` VALUES ('1614', '256', 'Colonia ', '');
INSERT INTO `state` VALUES ('1615', '256', 'Durazno ', '');
INSERT INTO `state` VALUES ('1616', '256', 'Flores ', '');
INSERT INTO `state` VALUES ('1617', '256', 'Florida ', '');
INSERT INTO `state` VALUES ('1618', '256', 'Lavalleja ', '');
INSERT INTO `state` VALUES ('1619', '256', 'Maldonado ', '');
INSERT INTO `state` VALUES ('1620', '256', 'Montevideo ', '');
INSERT INTO `state` VALUES ('1621', '256', 'Paysandu ', '');
INSERT INTO `state` VALUES ('1622', '256', 'Rio Negro ', '');
INSERT INTO `state` VALUES ('1623', '256', 'Rivera ', '');
INSERT INTO `state` VALUES ('1624', '256', 'Rocha ', '');
INSERT INTO `state` VALUES ('1625', '256', 'Salto ', '');
INSERT INTO `state` VALUES ('1626', '256', 'San Jose ', '');
INSERT INTO `state` VALUES ('1627', '256', 'Soriano ', '');
INSERT INTO `state` VALUES ('1628', '256', 'Tacuarembo ', '');
INSERT INTO `state` VALUES ('1629', '256', 'Treinta y Tres', '');
INSERT INTO `state` VALUES ('1630', '257', 'Bukhara ', '');
INSERT INTO `state` VALUES ('1631', '257', 'Khorezm ', '');
INSERT INTO `state` VALUES ('1632', '257', 'Samarkand ', '');
INSERT INTO `state` VALUES ('1633', '257', 'Tashkent ', '');
INSERT INTO `state` VALUES ('1634', '258', 'Vanuatu ', '');
INSERT INTO `state` VALUES ('1635', '259', 'Amazonas ', '');
INSERT INTO `state` VALUES ('1636', '259', 'Anzoategui ', '');
INSERT INTO `state` VALUES ('1637', '259', 'Apure ', '');
INSERT INTO `state` VALUES ('1638', '259', 'Aragua ', '');
INSERT INTO `state` VALUES ('1639', '259', 'Barinas ', '');
INSERT INTO `state` VALUES ('1640', '259', 'Bolivar ', '');
INSERT INTO `state` VALUES ('1641', '259', 'Carabobo ', '');
INSERT INTO `state` VALUES ('1642', '259', 'Cojedes ', '');
INSERT INTO `state` VALUES ('1643', '259', 'Delta Amacuro', '');
INSERT INTO `state` VALUES ('1644', '259', 'Dependencias Federales', '');
INSERT INTO `state` VALUES ('1645', '259', 'Distrito Federal', '');
INSERT INTO `state` VALUES ('1646', '259', 'Falcon ', '');
INSERT INTO `state` VALUES ('1647', '259', 'Guarico ', '');
INSERT INTO `state` VALUES ('1648', '259', 'Lara ', '');
INSERT INTO `state` VALUES ('1649', '259', 'Merida ', '');
INSERT INTO `state` VALUES ('1650', '259', 'Monagas ', '');
INSERT INTO `state` VALUES ('1651', '259', 'Nueva Esparta', '');
INSERT INTO `state` VALUES ('1652', '259', 'Portuguesa ', '');
INSERT INTO `state` VALUES ('1653', '259', 'Sucre ', '');
INSERT INTO `state` VALUES ('1654', '259', 'Tachira ', '');
INSERT INTO `state` VALUES ('1655', '259', 'Trujillo ', '');
INSERT INTO `state` VALUES ('1656', '259', 'Vargas ', '');
INSERT INTO `state` VALUES ('1657', '259', 'Yaracuy ', '');
INSERT INTO `state` VALUES ('1658', '259', 'Zulia ', '');
INSERT INTO `state` VALUES ('1659', '260', 'Dong Bang Song Hong', '');
INSERT INTO `state` VALUES ('1660', '260', 'Dong Nam Bo', '');
INSERT INTO `state` VALUES ('1661', '260', 'Khu Bon Cu', '');
INSERT INTO `state` VALUES ('1664', '263', 'Saint Croix', '');
INSERT INTO `state` VALUES ('1668', '267', 'Western Sahara', '');
INSERT INTO `state` VALUES ('1671', '270', 'Hadramawt ', '');
INSERT INTO `state` VALUES ('1672', '270', 'Ibb ', '');
INSERT INTO `state` VALUES ('1675', '273', 'Copperbelt ', '');
INSERT INTO `state` VALUES ('1676', '273', 'Lusaka ', '');
INSERT INTO `state` VALUES ('1677', '274', 'Harare ', '');
INSERT INTO `state` VALUES ('1678', '274', 'Manicaland ', '');
INSERT INTO `state` VALUES ('1679', '274', 'Mashonaland Central', '');
INSERT INTO `state` VALUES ('1680', '274', 'Matabeleland North', '');
INSERT INTO `state` VALUES ('1681', '274', 'Midlands ', '');
INSERT INTO `state` VALUES ('1682', '254', 'Alaska', 'AK');
INSERT INTO `state` VALUES ('1683', '254', 'Arizona', 'AZ');
INSERT INTO `state` VALUES ('1684', '254', 'Arkansas', 'AR');
INSERT INTO `state` VALUES ('1685', '254', 'California', 'CA');
INSERT INTO `state` VALUES ('1686', '254', 'Colorado', 'CO');
INSERT INTO `state` VALUES ('1687', '254', 'Connecticut', 'CT');
INSERT INTO `state` VALUES ('1688', '254', 'Delaware', 'DE');
INSERT INTO `state` VALUES ('1689', '254', 'Florida', 'FL');
INSERT INTO `state` VALUES ('1690', '254', 'Georgia', 'GA');
INSERT INTO `state` VALUES ('1691', '254', 'Hawali', 'HI');
INSERT INTO `state` VALUES ('1692', '254', 'Idaho', 'ID');
INSERT INTO `state` VALUES ('1693', '254', 'Illinois', 'IL');
INSERT INTO `state` VALUES ('1694', '254', 'Indiana', 'IN');
INSERT INTO `state` VALUES ('1695', '254', 'Iowa', 'IA');
INSERT INTO `state` VALUES ('1696', '254', 'Kansas', 'KS');
INSERT INTO `state` VALUES ('1697', '254', 'Kentucky', 'KY');
INSERT INTO `state` VALUES ('1698', '254', 'louisiana', 'LA');
INSERT INTO `state` VALUES ('1699', '254', 'Maine', 'ME');
INSERT INTO `state` VALUES ('1700', '254', 'Maryland', 'MD');
INSERT INTO `state` VALUES ('1701', '254', 'Michigan', 'MI');
INSERT INTO `state` VALUES ('1702', '254', 'Miinnesota', 'MN');
INSERT INTO `state` VALUES ('1703', '254', 'Mississippi', 'MS');
INSERT INTO `state` VALUES ('1704', '254', 'Montana', 'MT');
INSERT INTO `state` VALUES ('1705', '254', 'Nebraska', 'NE');
INSERT INTO `state` VALUES ('1706', '254', 'Nevada', 'NV');
INSERT INTO `state` VALUES ('1707', '254', 'New Hamsphire', 'NH');
INSERT INTO `state` VALUES ('1708', '254', 'New Jersey', 'NJ');
INSERT INTO `state` VALUES ('1709', '254', 'New Mexico', 'NM');
INSERT INTO `state` VALUES ('1710', '254', 'New  York', 'NY');
INSERT INTO `state` VALUES ('1711', '254', 'North Carolina', 'NC');
INSERT INTO `state` VALUES ('1712', '254', 'North Dakota', 'ND');
INSERT INTO `state` VALUES ('1713', '254', 'Ohio', 'OH');
INSERT INTO `state` VALUES ('1714', '254', 'Oklahoma', 'OK');
INSERT INTO `state` VALUES ('1715', '254', 'Oregon', 'OR');
INSERT INTO `state` VALUES ('1716', '254', 'Pennsylvania', 'PA');
INSERT INTO `state` VALUES ('1717', '254', 'Rhode Island', 'RI');
INSERT INTO `state` VALUES ('1718', '254', 'South Carolina', 'SC');
INSERT INTO `state` VALUES ('1719', '254', 'South Dakota', 'SD');
INSERT INTO `state` VALUES ('1720', '254', 'Tennesse', 'TN');
INSERT INTO `state` VALUES ('1721', '254', 'Texas', 'TX');
INSERT INTO `state` VALUES ('1722', '254', 'Utah', 'UT');
INSERT INTO `state` VALUES ('1723', '254', 'Vermont', 'VT');
INSERT INTO `state` VALUES ('1724', '254', 'Virginia', 'VA');
INSERT INTO `state` VALUES ('1725', '254', 'Washington', 'WA');
INSERT INTO `state` VALUES ('1726', '254', 'West Virginia', 'WV');
INSERT INTO `state` VALUES ('1727', '254', 'Wisconsin', 'WI');
INSERT INTO `state` VALUES ('1728', '254', 'Massachusetts', 'MA');
INSERT INTO `state` VALUES ('1729', '254', 'Wyoming', 'WY');
INSERT INTO `state` VALUES ('1730', '39', 'Mon', '');
INSERT INTO `state` VALUES ('1731', '39', 'Yangon', '');
INSERT INTO `state` VALUES ('1732', '39', 'Ayeyarwaddy', '');
INSERT INTO `state` VALUES ('1733', '39', 'Kayin', '');
INSERT INTO `state` VALUES ('1734', '39', 'Bago', '');
INSERT INTO `state` VALUES ('1735', '39', 'Rakhine', '');
INSERT INTO `state` VALUES ('1736', '39', 'Magwe', '');
INSERT INTO `state` VALUES ('1737', '39', 'Mandalay', '');
INSERT INTO `state` VALUES ('1738', '39', 'Kayah', '');
INSERT INTO `state` VALUES ('1739', '39', 'Shan', '');
INSERT INTO `state` VALUES ('1740', '39', 'Sagaing', '');
INSERT INTO `state` VALUES ('1741', '39', 'Chin', '');
INSERT INTO `state` VALUES ('1742', '39', 'Kachin', '');
INSERT INTO `state` VALUES ('1743', '263', 'Saint John', '');
INSERT INTO `state` VALUES ('1744', '263', 'Saint Thomas', '');
INSERT INTO `state` VALUES ('1745', '254', 'Missouri', 'MO');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `share_with` int(11) DEFAULT NULL COMMENT '1=>public, 2=>friends, 3=>only me',
  `is_status` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('85', '', 'image', '1411024032.jpg', '1411024036', '60', '1', '1', '1', '10');
INSERT INTO `status` VALUES ('101', 'good evening', null, null, '1414670748', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('3', 'snowboarding', 'image', '1400589424.jpg', '1400589438', '60', '0', '1', '1', null);
INSERT INTO `status` VALUES ('4', 'Best snowboarding', 'video', '9pXKObXS0lo', '1400589499', '82', '1', '2', '1', null);
INSERT INTO `status` VALUES ('6', '', 'image', '1400589581.jpg', '1400589600', '60', '1', '1', '1', null);
INSERT INTO `status` VALUES ('7', 'hello friends', null, null, '1400746611', '82', '0', '1', '1', null);
INSERT INTO `status` VALUES ('12', 'this is a test post. this is a test post. this is a test post. this is a test post this is a test postthis is a test postthis is a test postthis is a test post', null, null, '1400842332', '60', '1', '1', '1', null);
INSERT INTO `status` VALUES ('15', '', 'video', 'hAjak0ygtkE', '1400849786', '82', '0', '1', '1', null);
INSERT INTO `status` VALUES ('20', '', 'image', '1401102622.jpg', '1401102643', '82', '1', '2', '1', null);
INSERT INTO `status` VALUES ('34', null, 'video', 'hAjak0ygtkE', '1403260785', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('26', null, 'image', '1402326094.jpg', '1402326094', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('27', null, 'image', '1402328488.jpg', '1402328488', '60', '0', '2', '0', null);
INSERT INTO `status` VALUES ('28', null, 'image', '1402328493.jpg', '1402328493', '67', '1', '2', '0', null);
INSERT INTO `status` VALUES ('29', null, 'image', '1402328499.jpg', '1402328499', '67', '0', '2', '0', null);
INSERT INTO `status` VALUES ('30', null, 'image', '1402328541.jpg', '1402328541', '67', '1', '2', '0', null);
INSERT INTO `status` VALUES ('52', 'asda', null, null, '1404977748', '72', '1', '1', '1', null);
INSERT INTO `status` VALUES ('36', 'Koala\n', 'image', '1403216532.jpg', '1403216554', '72', '1', '1', '1', null);
INSERT INTO `status` VALUES ('51', 'dsfsd', null, null, '1404977675', '72', '1', '1', '1', null);
INSERT INTO `status` VALUES ('80', '', 'image', '1410353089.jpg', '1410353096', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('81', '', 'image', '1411022342.jpg', '1411022349', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('82', '', 'image', '1411022415.jpg', '1411022422', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('83', '', 'image', '1411023991.jpg', '1411023995', '60', '1', '1', '1', '10');
INSERT INTO `status` VALUES ('84', '', 'image', '1411024016.jpg', '1411024021', '60', '1', '1', '1', '10');
INSERT INTO `status` VALUES ('63', 'good morning...', null, null, '1407389217', '102', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('64', '', 'image', '1407389248.jpg', '1407389257', '102', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('65', 'hi\n', 'image', '1407834363.jpg', '1407834372', '60', '0', '1', '1', '0');
INSERT INTO `status` VALUES ('70', '', 'image', '1408348560.jpg', '1408348569', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('75', null, 'image', '1408510210.jpg', '1408510210', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('76', null, 'image', '1408510433.jpg', '1408510433', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('77', null, 'image', '1408510498.jpg', '1408510498', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('78', null, 'image', '1408510511.jpg', '1408510512', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('100', 'hi', null, null, '1411451476', '60', '1', '1', '1', '9');
INSERT INTO `status` VALUES ('119', ' ', 'image', '1418295056.jpg', '1418295056', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('108', 'Hi', null, null, '1418277950', '85', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('109', '', 'image', '1418277984.jpg', '1418277994', '85', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('122', ' ', 'image', '1418968426.jpg', '1418968426', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('118', '', 'video', 'cU6tq_aWn1U', '1418292099', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('121', '', 'image', '1418728530.jpg', '1418728547', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('123', '', 'image', '1418970700.JPG', '1418970712', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('124', 'dsfsdds sdf sdf sdf ', 'image', '1418971185.JPG', '1418971196', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('125', null, 'image', '1418982310.jpg', '1418982310', '60', '1', '1', '0', null);
INSERT INTO `status` VALUES ('126', null, 'video', 'ahz3kTiGo3s', '1418984322', '60', '1', '1', '0', null);
INSERT INTO `status` VALUES ('127', null, 'video', 'LvMpWn2CNzs', '1418984532', '60', '1', '1', '0', null);
INSERT INTO `status` VALUES ('128', '', 'image', '1419414976.jpg', '1419415000', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('134', '', 'image', '1420787025.jpg', '1420787072', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('130', null, 'image', '1420531440.jpg', '1420531440', '60', '1', '1', '0', null);
INSERT INTO `status` VALUES ('131', null, 'image', '1420627760.jpg', '1420627760', '60', '1', '1', '0', null);
INSERT INTO `status` VALUES ('132', '', 'image', '1420712860.jpg', '1420712887', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('133', '', 'image', '1420724194.jpg', '1420724209', '60', '1', '2', '1', '0');
INSERT INTO `status` VALUES ('141', '', 'image', '1420797659.jpg', '1420797678', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('142', '', 'image', '1420799553.jpg', '1420799570', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('143', '', 'image', '1420800796.JPG', '1420800808', '85', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('144', '', 'image', '1420803569.jpg', '1420803578', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('145', '', 'image', '1420805452.jpg', '1420805463', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('146', '', 'image', '1420805494.jpg', '1420805504', '57', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('147', '', 'video', 'RRQI-Bm2728', '1420809367', '85', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('148', '', 'image', '1421038334.jpg', '1421038347', '82', '1', '1', '1', '9');
INSERT INTO `status` VALUES ('149', '', 'video', 'uVRs6TFb0OU', '1421049133', '85', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('169', null, 'video', 'cBZvBWzAb7k', '1421063580', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('170', null, 'image', '1421147455.jpg', '1421147455', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('174', null, 'video', '-FCDlOduLYk', '1421226588', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('175', null, 'video', 'zZpf4kQ4-6g', '1421226735', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('176', 'Hello', null, null, '1421387644', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('177', 'Good Morning', null, null, '1421387754', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('182', null, 'video', '1421891692.mp4', '1421838347', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('180', 'sdfss dsf sdf', null, null, '1421838221', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('181', 'vx zxhc  zxv dsfvdsf dsf dsfs', null, null, '1421838347', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('183', null, 'video', '1421845118.mp4', '1421838347', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('184', null, 'video', '1421836558.mp4', '1421838347', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('185', null, 'video', '1421835042.mp4', '1421838347', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('186', '', 'video', 'vn8cPV6jBmA', '1421903655', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('187', '', 'video', 'SCsdXuGHw6g', '1421905380', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('188', null, 'image', '1421930037.jpg', '1421930037', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('189', '', 'video', '5Uls9v1nnss', '1422872767', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('192', '', 'video', 'tZlgNj-rIxw', '1422873337', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('193', '', 'image', '1422878657.jpg', '1422878665', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('194', '', 'image', '1422938429.jpg', '1422938438', '60', '1', '1', '1', '6');
INSERT INTO `status` VALUES ('195', '', 'image', '1423032981.jpg', '1423032988', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('202', '', 'image', '1423033229.jpg', '1423033234', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('203', '', 'image', '1423033246.jpg', '1423033251', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('199', '', 'video', 'zE7Pwgl6sLA', '1423033138', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('200', '', 'video', 'r7zqLiZ1GOo', '1423033167', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('204', '', 'video', 'UvlNJl9T2pI', '1423033306', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('205', '', 'image', '1423033356.jpg', '1423033362', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('206', '', 'video', 'SCsdXuGHw6g', '1423033426', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('207', '', 'image', '1423033463.jpg', '1423033476', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('208', '', 'video', '_JZoNFH60lo', '1423036380', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('209', '', 'video', 'KjGFSF2F0Hc', '1423036442', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('210', '', 'video', 'sYeBnmwiWzA', '1423041579', '60', '1', '1', '1', '0');
INSERT INTO `status` VALUES ('211', null, 'image', '1423488698.jpg', '1423488698', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('212', null, 'image', '1423488802.jpg', '1423488802', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('213', null, 'image', '1423488813.jpg', '1423488813', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('214', null, 'image', '1423488827.jpg', '1423488827', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('215', null, 'image', '1423488844.jpg', '1423488844', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('216', null, 'image', '1423488850.jpg', '1423488850', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('217', null, 'image', '1423488879.jpg', '1423488879', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('218', null, 'image', '1423488962.jpg', '1423488962', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('219', null, 'image', '1423489139.jpg', '1423489139', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('220', '', 'image', '1423551011.jpg', '1423551018', '60', '1', '1', '1', '16');
INSERT INTO `status` VALUES ('221', null, 'image', '1423735221.jpg', '1423735221', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('223', null, 'image', '1423735488.jpg', '1423735488', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('224', null, 'image', '1423736740.jpg', '1423736740', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('225', null, 'image', '1423736830.jpg', '1423736830', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('226', null, 'image', '1423736844.jpg', '1423736844', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('227', null, 'image', '1423736889.jpg', '1423736889', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('228', null, 'video', 'Q6omsDyFNlk', '1424156528', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('229', null, 'video', 'zfXBNQMj2SE', '1424156596', '60', '1', '2', '0', null);
INSERT INTO `status` VALUES ('232', '', 'video', '_e698M9lYe0', '1424159268', '60', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `status_comment`
-- ----------------------------
DROP TABLE IF EXISTS `status_comment`;
CREATE TABLE `status_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `body` text,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_comment
-- ----------------------------
INSERT INTO `status_comment` VALUES ('11', '60', '36', 'hi , this is test \n', '1403722535');
INSERT INTO `status_comment` VALUES ('40', '60', '101', 'morning', '1414730530');
INSERT INTO `status_comment` VALUES ('13', '60', '34', 'dxchdfh', '1403857800');
INSERT INTO `status_comment` VALUES ('18', '60', '26', 'xzz zxc', '1405317262');
INSERT INTO `status_comment` VALUES ('19', '60', '26', 'sda', '1405317278');
INSERT INTO `status_comment` VALUES ('20', '60', '26', 'sadas asda', '1405317282');
INSERT INTO `status_comment` VALUES ('23', '60', '26', 'sda asd asd\n', '1405327933');
INSERT INTO `status_comment` VALUES ('52', '60', '118', 'Hi', '1418380539');
INSERT INTO `status_comment` VALUES ('56', '60', '124', 'dfsd sdf sdf\n', '1418972120');
INSERT INTO `status_comment` VALUES ('90', '60', '128', '\n\nsdfs', '1419915726');
INSERT INTO `status_comment` VALUES ('58', '60', '121', 'fdlb;fg,n \n', '1418973343');
INSERT INTO `status_comment` VALUES ('59', '60', '121', 'tblkrnbgkof\n', '1418973347');
INSERT INTO `status_comment` VALUES ('77', '60', '100', '\n\newrw', '1419399344');
INSERT INTO `status_comment` VALUES ('74', '60', '65', 'Ffgf\n', '1419398650');
INSERT INTO `status_comment` VALUES ('75', '60', '100', 'dfs', '1419399329');
INSERT INTO `status_comment` VALUES ('76', '60', '100', '\n\newrw', '1419399339');
INSERT INTO `status_comment` VALUES ('73', '60', '65', 'Gffh\n', '1419398623');
INSERT INTO `status_comment` VALUES ('65', '60', '78', '878978\n', '1418973967');
INSERT INTO `status_comment` VALUES ('66', '60', '76', 'kjkjjkodfb\n', '1418974038');
INSERT INTO `status_comment` VALUES ('67', '60', '76', 'brtb;g\';b \n', '1418974042');
INSERT INTO `status_comment` VALUES ('69', '60', '125', 'vkdlvkldlv\n', '1419231084');
INSERT INTO `status_comment` VALUES ('70', '60', '82', 'l;\'l\n', '1419234063');
INSERT INTO `status_comment` VALUES ('72', '60', '124', '[;\';\'\n', '1419338513');
INSERT INTO `status_comment` VALUES ('89', '60', '128', '\n\ndfs', '1419915722');
INSERT INTO `status_comment` VALUES ('87', '60', '128', '\n\ndfssd', '1419915715');
INSERT INTO `status_comment` VALUES ('88', '60', '128', '\n\nsdfsd', '1419915719');
INSERT INTO `status_comment` VALUES ('86', '60', '128', '\n\nsdf', '1419915712');
INSERT INTO `status_comment` VALUES ('85', '60', '128', '\n\nsdfs', '1419915708');
INSERT INTO `status_comment` VALUES ('84', '60', '128', 'dsfs', '1419915705');
INSERT INTO `status_comment` VALUES ('91', '60', '128', '\n\nwer', '1419915729');
INSERT INTO `status_comment` VALUES ('92', '60', '128', '\n\newrwe', '1419915733');
INSERT INTO `status_comment` VALUES ('93', '60', '128', '\n\nwerv', '1419915737');
INSERT INTO `status_comment` VALUES ('94', '60', '128', '\n\newrwe', '1419915740');
INSERT INTO `status_comment` VALUES ('95', '60', '128', '\n\nrtyr', '1419915743');
INSERT INTO `status_comment` VALUES ('96', '60', '128', '\n\nerte', '1419915748');
INSERT INTO `status_comment` VALUES ('97', '60', '128', '\n\nert', '1419915750');
INSERT INTO `status_comment` VALUES ('98', '60', '128', '\n\nfsdf', '1419915781');
INSERT INTO `status_comment` VALUES ('99', '60', '128', '\n\nsdfs', '1419915784');
INSERT INTO `status_comment` VALUES ('100', '60', '128', '\n\nsdf', '1419915792');
INSERT INTO `status_comment` VALUES ('101', '60', '85', 'zxvcz dsz', '1419921185');
INSERT INTO `status_comment` VALUES ('102', '60', '85', 'sdf sdf', '1419921194');
INSERT INTO `status_comment` VALUES ('103', '60', '124', 'dfgd', '1419923212');
INSERT INTO `status_comment` VALUES ('104', '60', '124', 'dfgd', '1419923225');
INSERT INTO `status_comment` VALUES ('105', '60', '124', 'dfgdf', '1419923239');
INSERT INTO `status_comment` VALUES ('106', '60', '85', 'Test examples', '1419936593');
INSERT INTO `status_comment` VALUES ('107', '60', '128', 'dfg dfg', '1420116610');
INSERT INTO `status_comment` VALUES ('108', '60', '124', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '1420522918');
INSERT INTO `status_comment` VALUES ('109', '60', '130', 'kaj nei naki??\n', '1420537043');
INSERT INTO `status_comment` VALUES ('125', '60', '148', 'vhj', '1421038424');
INSERT INTO `status_comment` VALUES ('111', '60', '131', 'B\n', '1420627788');
INSERT INTO `status_comment` VALUES ('112', '60', '130', 'Try guy \n', '1420628501');
INSERT INTO `status_comment` VALUES ('113', '60', '130', 'Duty by huh Duty by huh Duty by huh so that is not be in\n', '1420628529');
INSERT INTO `status_comment` VALUES ('114', '60', '85', 'Tech mmHg CBGB gffggvc\n', '1420628575');
INSERT INTO `status_comment` VALUES ('115', '60', '82', 'Err\n', '1420628599');
INSERT INTO `status_comment` VALUES ('116', '60', '128', 'dfs dszf sd \n', '1420697736');
INSERT INTO `status_comment` VALUES ('117', '60', '127', 'fxg dsf\n', '1420709618');
INSERT INTO `status_comment` VALUES ('118', '60', '127', 'xcv\n', '1420709662');
INSERT INTO `status_comment` VALUES ('119', '60', '127', 'cxvcx\n', '1420709665');
INSERT INTO `status_comment` VALUES ('120', '60', '127', 'cxv\n', '1420709667');
INSERT INTO `status_comment` VALUES ('121', '60', '127', 'cxv\n', '1420709669');
INSERT INTO `status_comment` VALUES ('122', '60', '127', 'cxv\n', '1420709672');
INSERT INTO `status_comment` VALUES ('123', '60', '127', 'cxv\n', '1420709674');
INSERT INTO `status_comment` VALUES ('124', '60', '132', 'Test\n', '1420724315');
INSERT INTO `status_comment` VALUES ('126', '60', '148', '\n\nvgh', '1421038428');
INSERT INTO `status_comment` VALUES ('127', '60', '148', '\n\nvyu', '1421038432');
INSERT INTO `status_comment` VALUES ('128', '60', '147', 'dfg', '1421040355');
INSERT INTO `status_comment` VALUES ('129', '60', '147', '\n\ndfg', '1421040358');
INSERT INTO `status_comment` VALUES ('130', '60', '147', '\n\nert', '1421040361');
INSERT INTO `status_comment` VALUES ('131', '60', '146', 'Gtyf\n', '1421046179');
INSERT INTO `status_comment` VALUES ('132', '60', '146', 'Rfdd\n', '1421046198');
INSERT INTO `status_comment` VALUES ('133', '85', '145', 'Foggy\n', '1421046258');
INSERT INTO `status_comment` VALUES ('134', '60', '167', 'sdfs dsf\n', '1421058964');
INSERT INTO `status_comment` VALUES ('135', '60', '148', ' HjjjDghjxfh jkkvb', '1421066403');
INSERT INTO `status_comment` VALUES ('174', '85', '149', '\n\nvbnv vcbgv', '1421135786');
INSERT INTO `status_comment` VALUES ('173', '72', '149', 'dfgd', '1421135776');
INSERT INTO `status_comment` VALUES ('172', '85', '149', '\nfghfg\n', '1421135748');
INSERT INTO `status_comment` VALUES ('141', '60', '148', 'dfgcbd dfsgds dfgdf\n', '1421132068');
INSERT INTO `status_comment` VALUES ('142', '60', '148', 'dfgdf\n', '1421132504');
INSERT INTO `status_comment` VALUES ('143', '60', '148', 'dfgd dfg', '1421132707');
INSERT INTO `status_comment` VALUES ('144', '60', '148', 'fvdf dfg\n', '1421132734');
INSERT INTO `status_comment` VALUES ('145', '60', '148', 'dfg dfg\n', '1421132752');
INSERT INTO `status_comment` VALUES ('146', '60', '148', '', '1421132977');
INSERT INTO `status_comment` VALUES ('147', '60', '148', 'fgf dfghdf', '1421133072');
INSERT INTO `status_comment` VALUES ('148', '60', '148', 'ggg', '1421133078');
INSERT INTO `status_comment` VALUES ('149', '60', '146', 'fghf fgh', '1421133087');
INSERT INTO `status_comment` VALUES ('171', '60', '149', 'fghf ftgh', '1421135733');
INSERT INTO `status_comment` VALUES ('170', '60', '149', 'dfrtge', '1421135494');
INSERT INTO `status_comment` VALUES ('152', '60', '148', 'dfgvdf\n', '1421133420');
INSERT INTO `status_comment` VALUES ('153', '60', '148', 'fgbhfg\n', '1421133541');
INSERT INTO `status_comment` VALUES ('154', '60', '148', 'fgh fgh', '1421133547');
INSERT INTO `status_comment` VALUES ('155', '60', '148', 'fgh fgh fgh fg', '1421133555');
INSERT INTO `status_comment` VALUES ('156', '60', '144', 'fgh fgh', '1421133586');
INSERT INTO `status_comment` VALUES ('157', '60', '144', 'fgh fgh\n', '1421133590');
INSERT INTO `status_comment` VALUES ('158', '60', '169', 'fgfg fg fg fgh\n', '1421133604');
INSERT INTO `status_comment` VALUES ('159', '60', '148', 'fd dfg\n', '1421133634');
INSERT INTO `status_comment` VALUES ('160', '72', '148', '\n\n\n\n\n\n', '1421133703');
INSERT INTO `status_comment` VALUES ('161', '60', '142', 'redte re\n', '1421133713');
INSERT INTO `status_comment` VALUES ('162', '60', '142', 'ertn ert re', '1421133719');
INSERT INTO `status_comment` VALUES ('169', '85', '149', 'dfgd', '1421135404');
INSERT INTO `status_comment` VALUES ('164', '72', '149', 'ghf fgh fg', '1421133968');
INSERT INTO `status_comment` VALUES ('165', '72', '147', 'trrghtrcvgbdf', '1421134008');
INSERT INTO `status_comment` VALUES ('166', '72', '148', 'rtyrt\n', '1421135139');
INSERT INTO `status_comment` VALUES ('167', '85', '148', 'tryrt rtyr', '1421135144');
INSERT INTO `status_comment` VALUES ('168', '72', '149', 'dfgdf dfg', '1421135194');
INSERT INTO `status_comment` VALUES ('175', '60', '170', 'f;d\'bn;\'gfn\'fg\n', '1421297964');
INSERT INTO `status_comment` VALUES ('176', '60', '170', 'ghjmjhm\n', '1421300036');
INSERT INTO `status_comment` VALUES ('177', '60', '149', 'dsf dsfdsf dsf', '1421322153');
INSERT INTO `status_comment` VALUES ('178', '60', '149', 'dfgd dfg', '1421322712');
INSERT INTO `status_comment` VALUES ('179', '60', '149', 'wer bwer', '1421322717');
INSERT INTO `status_comment` VALUES ('180', '60', '148', 'dsfsd', '1421322728');
INSERT INTO `status_comment` VALUES ('181', '60', '187', '66', '1421905518');
INSERT INTO `status_comment` VALUES ('182', '60', '194', 'zxcvx zc', '1422938496');

-- ----------------------------
-- Table structure for `status_like`
-- ----------------------------
DROP TABLE IF EXISTS `status_like`;
CREATE TABLE `status_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_like
-- ----------------------------
INSERT INTO `status_like` VALUES ('4', '6', '60');
INSERT INTO `status_like` VALUES ('3', '7', '72');
INSERT INTO `status_like` VALUES ('5', '8', '60');
INSERT INTO `status_like` VALUES ('7', '13', '60');
INSERT INTO `status_like` VALUES ('8', '12', '60');
INSERT INTO `status_like` VALUES ('9', '17', '60');
INSERT INTO `status_like` VALUES ('11', '55', '60');
INSERT INTO `status_like` VALUES ('12', '101', '60');
INSERT INTO `status_like` VALUES ('22', '118', '85');
INSERT INTO `status_like` VALUES ('23', '118', '74');
INSERT INTO `status_like` VALUES ('27', '123', '60');
INSERT INTO `status_like` VALUES ('29', '121', '60');
INSERT INTO `status_like` VALUES ('30', '85', '60');
INSERT INTO `status_like` VALUES ('31', '128', '60');
INSERT INTO `status_like` VALUES ('33', '84', '60');
INSERT INTO `status_like` VALUES ('34', '132', '60');
INSERT INTO `status_like` VALUES ('35', '167', '60');
INSERT INTO `status_like` VALUES ('39', '148', '60');
INSERT INTO `status_like` VALUES ('42', '149', '60');
INSERT INTO `status_like` VALUES ('41', '147', '60');
INSERT INTO `status_like` VALUES ('48', '180', '60');
INSERT INTO `status_like` VALUES ('45', '176', '60');
INSERT INTO `status_like` VALUES ('53', '182', '60');
INSERT INTO `status_like` VALUES ('51', '184', '60');
INSERT INTO `status_like` VALUES ('54', '181', '60');
INSERT INTO `status_like` VALUES ('55', '186', '60');
INSERT INTO `status_like` VALUES ('58', '187', '60');
INSERT INTO `status_like` VALUES ('57', '183', '60');
INSERT INTO `status_like` VALUES ('59', '207', '60');

-- ----------------------------
-- Table structure for `status_share`
-- ----------------------------
DROP TABLE IF EXISTS `status_share`;
CREATE TABLE `status_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stutus_id` int(11) DEFAULT NULL,
  `no_of_share` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_share
-- ----------------------------
INSERT INTO `status_share` VALUES ('1', '1', '1');
INSERT INTO `status_share` VALUES ('2', '187', '11');
INSERT INTO `status_share` VALUES ('3', '182', '2');
INSERT INTO `status_share` VALUES ('4', '193', '1');
INSERT INTO `status_share` VALUES ('5', '194', '1');

-- ----------------------------
-- Table structure for `usersignicon`
-- ----------------------------
DROP TABLE IF EXISTS `usersignicon`;
CREATE TABLE `usersignicon` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) DEFAULT NULL,
  `sport_icon_id` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5699 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usersignicon
-- ----------------------------
INSERT INTO `usersignicon` VALUES ('1', '5', '19');
INSERT INTO `usersignicon` VALUES ('2', '5', '20');
INSERT INTO `usersignicon` VALUES ('3', '5', '2');
INSERT INTO `usersignicon` VALUES ('4', '5', '16');
INSERT INTO `usersignicon` VALUES ('5', '5', '17');
INSERT INTO `usersignicon` VALUES ('6', '5', '16');
INSERT INTO `usersignicon` VALUES ('7', '5', '17');
INSERT INTO `usersignicon` VALUES ('8', '5', '20');
INSERT INTO `usersignicon` VALUES ('9', '5', '19');
INSERT INTO `usersignicon` VALUES ('10', '5', '2');
INSERT INTO `usersignicon` VALUES ('11', '5', '3');
INSERT INTO `usersignicon` VALUES ('12', '58', '8');
INSERT INTO `usersignicon` VALUES ('13', '58', '9');
INSERT INTO `usersignicon` VALUES ('14', '59', '8');
INSERT INTO `usersignicon` VALUES ('15', '59', '9');
INSERT INTO `usersignicon` VALUES ('20', '61', '19');
INSERT INTO `usersignicon` VALUES ('21', '62', '22');
INSERT INTO `usersignicon` VALUES ('22', '62', '19');
INSERT INTO `usersignicon` VALUES ('23', '62', '20');
INSERT INTO `usersignicon` VALUES ('24', '63', '22');
INSERT INTO `usersignicon` VALUES ('25', '63', '23');
INSERT INTO `usersignicon` VALUES ('26', '64', '22');
INSERT INTO `usersignicon` VALUES ('27', '64', '17');
INSERT INTO `usersignicon` VALUES ('28', '64', '22');
INSERT INTO `usersignicon` VALUES ('29', '64', '17');
INSERT INTO `usersignicon` VALUES ('30', '64', '22');
INSERT INTO `usersignicon` VALUES ('31', '64', '8');
INSERT INTO `usersignicon` VALUES ('32', '64', '22');
INSERT INTO `usersignicon` VALUES ('33', '64', '8');
INSERT INTO `usersignicon` VALUES ('34', '64', '22');
INSERT INTO `usersignicon` VALUES ('35', '64', '8');
INSERT INTO `usersignicon` VALUES ('36', '64', '22');
INSERT INTO `usersignicon` VALUES ('37', '64', '8');
INSERT INTO `usersignicon` VALUES ('38', '64', '23');
INSERT INTO `usersignicon` VALUES ('39', '64', '17');
INSERT INTO `usersignicon` VALUES ('40', '64', '23');
INSERT INTO `usersignicon` VALUES ('41', '64', '17');
INSERT INTO `usersignicon` VALUES ('42', '64', '23');
INSERT INTO `usersignicon` VALUES ('43', '64', '17');
INSERT INTO `usersignicon` VALUES ('44', '65', '22');
INSERT INTO `usersignicon` VALUES ('45', '65', '17');
INSERT INTO `usersignicon` VALUES ('46', '66', '22');
INSERT INTO `usersignicon` VALUES ('47', '66', '17');
INSERT INTO `usersignicon` VALUES ('48', '66', '8');
INSERT INTO `usersignicon` VALUES ('49', '66', '5');
INSERT INTO `usersignicon` VALUES ('50', '66', '13');
INSERT INTO `usersignicon` VALUES ('51', '67', '22');
INSERT INTO `usersignicon` VALUES ('52', '67', '23');
INSERT INTO `usersignicon` VALUES ('53', '68', '22');
INSERT INTO `usersignicon` VALUES ('54', '68', '23');
INSERT INTO `usersignicon` VALUES ('55', '68', '16');
INSERT INTO `usersignicon` VALUES ('56', '68', '17');
INSERT INTO `usersignicon` VALUES ('57', '68', '8');
INSERT INTO `usersignicon` VALUES ('58', '69', '22');
INSERT INTO `usersignicon` VALUES ('59', '69', '17');
INSERT INTO `usersignicon` VALUES ('60', '69', '8');
INSERT INTO `usersignicon` VALUES ('61', '70', '22');
INSERT INTO `usersignicon` VALUES ('62', '70', '17');
INSERT INTO `usersignicon` VALUES ('63', '70', '8');
INSERT INTO `usersignicon` VALUES ('64', '72', '22');
INSERT INTO `usersignicon` VALUES ('65', '72', '17');
INSERT INTO `usersignicon` VALUES ('67', '73', '17');
INSERT INTO `usersignicon` VALUES ('68', '73', '11');
INSERT INTO `usersignicon` VALUES ('69', '73', '5');
INSERT INTO `usersignicon` VALUES ('70', '74', '22');
INSERT INTO `usersignicon` VALUES ('71', '74', '23');
INSERT INTO `usersignicon` VALUES ('72', '74', '16');
INSERT INTO `usersignicon` VALUES ('73', '74', '17');
INSERT INTO `usersignicon` VALUES ('74', '72', '22');
INSERT INTO `usersignicon` VALUES ('76', '72', '17');
INSERT INTO `usersignicon` VALUES ('77', '72', '22');
INSERT INTO `usersignicon` VALUES ('79', '72', '17');
INSERT INTO `usersignicon` VALUES ('80', '72', '22');
INSERT INTO `usersignicon` VALUES ('82', '72', '17');
INSERT INTO `usersignicon` VALUES ('89', '75', '22');
INSERT INTO `usersignicon` VALUES ('90', '75', '17');
INSERT INTO `usersignicon` VALUES ('91', '75', '9');
INSERT INTO `usersignicon` VALUES ('92', '75', '20');
INSERT INTO `usersignicon` VALUES ('93', '76', '22');
INSERT INTO `usersignicon` VALUES ('94', '76', '16');
INSERT INTO `usersignicon` VALUES ('95', '76', '9');
INSERT INTO `usersignicon` VALUES ('114', '77', '8');
INSERT INTO `usersignicon` VALUES ('115', '77', '9');
INSERT INTO `usersignicon` VALUES ('116', '77', '11');
INSERT INTO `usersignicon` VALUES ('117', '79', '62');
INSERT INTO `usersignicon` VALUES ('118', '79', '22');
INSERT INTO `usersignicon` VALUES ('119', '79', '23');
INSERT INTO `usersignicon` VALUES ('120', '79', '61');
INSERT INTO `usersignicon` VALUES ('121', '80', '20');
INSERT INTO `usersignicon` VALUES ('122', '80', '15');
INSERT INTO `usersignicon` VALUES ('123', '80', '61');
INSERT INTO `usersignicon` VALUES ('124', '80', '60');
INSERT INTO `usersignicon` VALUES ('131', '81', '15');
INSERT INTO `usersignicon` VALUES ('135', '82', '11');
INSERT INTO `usersignicon` VALUES ('136', '83', '22');
INSERT INTO `usersignicon` VALUES ('137', '83', '55');
INSERT INTO `usersignicon` VALUES ('138', '84', '5');
INSERT INTO `usersignicon` VALUES ('139', '84', '12');
INSERT INTO `usersignicon` VALUES ('140', '85', '22');
INSERT INTO `usersignicon` VALUES ('141', '85', '8');
INSERT INTO `usersignicon` VALUES ('142', '60', '23');
INSERT INTO `usersignicon` VALUES ('401', '89', '22');
INSERT INTO `usersignicon` VALUES ('402', '89', '15');
INSERT INTO `usersignicon` VALUES ('403', '89', '42');
INSERT INTO `usersignicon` VALUES ('404', '89', '52');
INSERT INTO `usersignicon` VALUES ('405', '89', '53');
INSERT INTO `usersignicon` VALUES ('408', '89', '57');
INSERT INTO `usersignicon` VALUES ('409', '89', '42');
INSERT INTO `usersignicon` VALUES ('410', '89', '59');
INSERT INTO `usersignicon` VALUES ('411', '89', '9');
INSERT INTO `usersignicon` VALUES ('412', '89', '15');
INSERT INTO `usersignicon` VALUES ('413', '89', '48');
INSERT INTO `usersignicon` VALUES ('414', '89', '20');
INSERT INTO `usersignicon` VALUES ('415', '89', '18');
INSERT INTO `usersignicon` VALUES ('416', '89', '60');
INSERT INTO `usersignicon` VALUES ('418', '89', '59');
INSERT INTO `usersignicon` VALUES ('419', '89', '57');
INSERT INTO `usersignicon` VALUES ('420', '89', '15');
INSERT INTO `usersignicon` VALUES ('421', '89', '9');
INSERT INTO `usersignicon` VALUES ('422', '89', '48');
INSERT INTO `usersignicon` VALUES ('423', '89', '42');
INSERT INTO `usersignicon` VALUES ('424', '89', '20');
INSERT INTO `usersignicon` VALUES ('425', '89', '18');
INSERT INTO `usersignicon` VALUES ('426', '89', '63');
INSERT INTO `usersignicon` VALUES ('427', '89', '5');
INSERT INTO `usersignicon` VALUES ('428', '89', '57');
INSERT INTO `usersignicon` VALUES ('429', '89', '59');
INSERT INTO `usersignicon` VALUES ('430', '89', '9');
INSERT INTO `usersignicon` VALUES ('431', '89', '42');
INSERT INTO `usersignicon` VALUES ('432', '89', '48');
INSERT INTO `usersignicon` VALUES ('433', '89', '15');
INSERT INTO `usersignicon` VALUES ('434', '89', '20');
INSERT INTO `usersignicon` VALUES ('435', '89', '18');
INSERT INTO `usersignicon` VALUES ('436', '89', '59');
INSERT INTO `usersignicon` VALUES ('437', '89', '57');
INSERT INTO `usersignicon` VALUES ('438', '89', '5');
INSERT INTO `usersignicon` VALUES ('439', '89', '42');
INSERT INTO `usersignicon` VALUES ('440', '89', '9');
INSERT INTO `usersignicon` VALUES ('441', '89', '48');
INSERT INTO `usersignicon` VALUES ('442', '89', '15');
INSERT INTO `usersignicon` VALUES ('443', '89', '20');
INSERT INTO `usersignicon` VALUES ('444', '89', '18');
INSERT INTO `usersignicon` VALUES ('445', '89', '59');
INSERT INTO `usersignicon` VALUES ('446', '89', '42');
INSERT INTO `usersignicon` VALUES ('447', '89', '5');
INSERT INTO `usersignicon` VALUES ('448', '89', '57');
INSERT INTO `usersignicon` VALUES ('449', '89', '9');
INSERT INTO `usersignicon` VALUES ('450', '89', '15');
INSERT INTO `usersignicon` VALUES ('451', '89', '48');
INSERT INTO `usersignicon` VALUES ('452', '89', '18');
INSERT INTO `usersignicon` VALUES ('453', '89', '20');
INSERT INTO `usersignicon` VALUES ('454', '90', '22');
INSERT INTO `usersignicon` VALUES ('455', '90', '23');
INSERT INTO `usersignicon` VALUES ('456', '90', '62');
INSERT INTO `usersignicon` VALUES ('457', '90', '49');
INSERT INTO `usersignicon` VALUES ('458', '90', '61');
INSERT INTO `usersignicon` VALUES ('478', '90', '5');
INSERT INTO `usersignicon` VALUES ('516', '90', '9');
INSERT INTO `usersignicon` VALUES ('517', '90', '15');
INSERT INTO `usersignicon` VALUES ('518', '90', '42');
INSERT INTO `usersignicon` VALUES ('520', '90', '48');
INSERT INTO `usersignicon` VALUES ('521', '90', '20');
INSERT INTO `usersignicon` VALUES ('522', '90', '18');
INSERT INTO `usersignicon` VALUES ('524', '90', '42');
INSERT INTO `usersignicon` VALUES ('526', '90', '15');
INSERT INTO `usersignicon` VALUES ('527', '90', '9');
INSERT INTO `usersignicon` VALUES ('528', '90', '48');
INSERT INTO `usersignicon` VALUES ('529', '90', '18');
INSERT INTO `usersignicon` VALUES ('530', '90', '20');
INSERT INTO `usersignicon` VALUES ('531', '90', '18');
INSERT INTO `usersignicon` VALUES ('532', '90', '20');
INSERT INTO `usersignicon` VALUES ('533', '90', '48');
INSERT INTO `usersignicon` VALUES ('534', '90', '15');
INSERT INTO `usersignicon` VALUES ('535', '90', '9');
INSERT INTO `usersignicon` VALUES ('536', '90', '59');
INSERT INTO `usersignicon` VALUES ('537', '90', '42');
INSERT INTO `usersignicon` VALUES ('538', '90', '57');
INSERT INTO `usersignicon` VALUES ('546', '91', '20');
INSERT INTO `usersignicon` VALUES ('547', '91', '48');
INSERT INTO `usersignicon` VALUES ('549', '93', '59');
INSERT INTO `usersignicon` VALUES ('550', '93', '58');
INSERT INTO `usersignicon` VALUES ('551', '93', '12');
INSERT INTO `usersignicon` VALUES ('552', '93', '59');
INSERT INTO `usersignicon` VALUES ('553', '93', '58');
INSERT INTO `usersignicon` VALUES ('554', '93', '12');
INSERT INTO `usersignicon` VALUES ('555', '94', '58');
INSERT INTO `usersignicon` VALUES ('556', '94', '59');
INSERT INTO `usersignicon` VALUES ('557', '94', '61');
INSERT INTO `usersignicon` VALUES ('559', '94', '12');
INSERT INTO `usersignicon` VALUES ('560', '94', '59');
INSERT INTO `usersignicon` VALUES ('561', '94', '12');
INSERT INTO `usersignicon` VALUES ('562', '94', '61');
INSERT INTO `usersignicon` VALUES ('563', '94', '58');
INSERT INTO `usersignicon` VALUES ('564', '94', '53');
INSERT INTO `usersignicon` VALUES ('565', '94', '12');
INSERT INTO `usersignicon` VALUES ('566', '94', '53');
INSERT INTO `usersignicon` VALUES ('567', '94', '61');
INSERT INTO `usersignicon` VALUES ('568', '94', '58');
INSERT INTO `usersignicon` VALUES ('569', '94', '59');
INSERT INTO `usersignicon` VALUES ('570', '94', '64');
INSERT INTO `usersignicon` VALUES ('571', '94', '20');
INSERT INTO `usersignicon` VALUES ('572', '94', '64');
INSERT INTO `usersignicon` VALUES ('573', '94', '58');
INSERT INTO `usersignicon` VALUES ('574', '94', '53');
INSERT INTO `usersignicon` VALUES ('575', '94', '59');
INSERT INTO `usersignicon` VALUES ('576', '94', '12');
INSERT INTO `usersignicon` VALUES ('577', '94', '20');
INSERT INTO `usersignicon` VALUES ('578', '94', '61');
INSERT INTO `usersignicon` VALUES ('579', '94', '58');
INSERT INTO `usersignicon` VALUES ('580', '94', '53');
INSERT INTO `usersignicon` VALUES ('581', '94', '64');
INSERT INTO `usersignicon` VALUES ('582', '94', '12');
INSERT INTO `usersignicon` VALUES ('583', '94', '59');
INSERT INTO `usersignicon` VALUES ('584', '94', '20');
INSERT INTO `usersignicon` VALUES ('585', '94', '61');
INSERT INTO `usersignicon` VALUES ('586', '94', '53');
INSERT INTO `usersignicon` VALUES ('587', '94', '58');
INSERT INTO `usersignicon` VALUES ('588', '94', '12');
INSERT INTO `usersignicon` VALUES ('589', '94', '59');
INSERT INTO `usersignicon` VALUES ('590', '94', '64');
INSERT INTO `usersignicon` VALUES ('591', '94', '20');
INSERT INTO `usersignicon` VALUES ('592', '94', '61');
INSERT INTO `usersignicon` VALUES ('593', '94', '53');
INSERT INTO `usersignicon` VALUES ('594', '94', '58');
INSERT INTO `usersignicon` VALUES ('595', '94', '59');
INSERT INTO `usersignicon` VALUES ('596', '94', '12');
INSERT INTO `usersignicon` VALUES ('597', '94', '64');
INSERT INTO `usersignicon` VALUES ('598', '94', '20');
INSERT INTO `usersignicon` VALUES ('599', '94', '61');
INSERT INTO `usersignicon` VALUES ('600', '94', '12');
INSERT INTO `usersignicon` VALUES ('601', '94', '64');
INSERT INTO `usersignicon` VALUES ('602', '94', '53');
INSERT INTO `usersignicon` VALUES ('603', '94', '58');
INSERT INTO `usersignicon` VALUES ('604', '94', '64');
INSERT INTO `usersignicon` VALUES ('605', '94', '53');
INSERT INTO `usersignicon` VALUES ('606', '94', '12');
INSERT INTO `usersignicon` VALUES ('607', '94', '59');
INSERT INTO `usersignicon` VALUES ('608', '94', '58');
INSERT INTO `usersignicon` VALUES ('609', '94', '61');
INSERT INTO `usersignicon` VALUES ('610', '94', '20');
INSERT INTO `usersignicon` VALUES ('611', '94', '53');
INSERT INTO `usersignicon` VALUES ('612', '94', '64');
INSERT INTO `usersignicon` VALUES ('613', '94', '12');
INSERT INTO `usersignicon` VALUES ('614', '94', '58');
INSERT INTO `usersignicon` VALUES ('615', '94', '59');
INSERT INTO `usersignicon` VALUES ('616', '94', '20');
INSERT INTO `usersignicon` VALUES ('617', '94', '61');
INSERT INTO `usersignicon` VALUES ('618', '94', '53');
INSERT INTO `usersignicon` VALUES ('619', '94', '64');
INSERT INTO `usersignicon` VALUES ('620', '94', '12');
INSERT INTO `usersignicon` VALUES ('621', '94', '58');
INSERT INTO `usersignicon` VALUES ('622', '94', '59');
INSERT INTO `usersignicon` VALUES ('623', '94', '20');
INSERT INTO `usersignicon` VALUES ('624', '94', '61');
INSERT INTO `usersignicon` VALUES ('625', '94', '58');
INSERT INTO `usersignicon` VALUES ('626', '94', '59');
INSERT INTO `usersignicon` VALUES ('627', '94', '53');
INSERT INTO `usersignicon` VALUES ('628', '94', '12');
INSERT INTO `usersignicon` VALUES ('629', '94', '64');
INSERT INTO `usersignicon` VALUES ('630', '94', '20');
INSERT INTO `usersignicon` VALUES ('631', '94', '61');
INSERT INTO `usersignicon` VALUES ('635', '75', '20');
INSERT INTO `usersignicon` VALUES ('636', '75', '9');
INSERT INTO `usersignicon` VALUES ('637', '75', '22');
INSERT INTO `usersignicon` VALUES ('638', '95', '20');
INSERT INTO `usersignicon` VALUES ('639', '95', '9');
INSERT INTO `usersignicon` VALUES ('640', '95', '5');
INSERT INTO `usersignicon` VALUES ('641', '95', '23');
INSERT INTO `usersignicon` VALUES ('642', '95', '63');
INSERT INTO `usersignicon` VALUES ('643', '95', '61');
INSERT INTO `usersignicon` VALUES ('644', '95', '22');
INSERT INTO `usersignicon` VALUES ('645', '95', '20');
INSERT INTO `usersignicon` VALUES ('646', '95', '9');
INSERT INTO `usersignicon` VALUES ('647', '95', '5');
INSERT INTO `usersignicon` VALUES ('648', '95', '56');
INSERT INTO `usersignicon` VALUES ('649', '95', '63');
INSERT INTO `usersignicon` VALUES ('650', '75', '9');
INSERT INTO `usersignicon` VALUES ('651', '75', '22');
INSERT INTO `usersignicon` VALUES ('652', '75', '20');
INSERT INTO `usersignicon` VALUES ('653', '75', '63');
INSERT INTO `usersignicon` VALUES ('654', '75', '57');
INSERT INTO `usersignicon` VALUES ('655', '95', '59');
INSERT INTO `usersignicon` VALUES ('656', '95', '23');
INSERT INTO `usersignicon` VALUES ('657', '95', '22');
INSERT INTO `usersignicon` VALUES ('658', '95', '20');
INSERT INTO `usersignicon` VALUES ('659', '95', '63');
INSERT INTO `usersignicon` VALUES ('660', '95', '9');
INSERT INTO `usersignicon` VALUES ('661', '95', '57');
INSERT INTO `usersignicon` VALUES ('662', '95', '22');
INSERT INTO `usersignicon` VALUES ('663', '95', '63');
INSERT INTO `usersignicon` VALUES ('664', '95', '20');
INSERT INTO `usersignicon` VALUES ('665', '95', '9');
INSERT INTO `usersignicon` VALUES ('666', '95', '57');
INSERT INTO `usersignicon` VALUES ('667', '95', '20');
INSERT INTO `usersignicon` VALUES ('668', '95', '22');
INSERT INTO `usersignicon` VALUES ('669', '95', '63');
INSERT INTO `usersignicon` VALUES ('670', '95', '57');
INSERT INTO `usersignicon` VALUES ('671', '95', '9');
INSERT INTO `usersignicon` VALUES ('672', '95', '57');
INSERT INTO `usersignicon` VALUES ('673', '95', '9');
INSERT INTO `usersignicon` VALUES ('674', '95', '63');
INSERT INTO `usersignicon` VALUES ('675', '95', '22');
INSERT INTO `usersignicon` VALUES ('676', '95', '20');
INSERT INTO `usersignicon` VALUES ('677', '60', '67');
INSERT INTO `usersignicon` VALUES ('678', '0', '49');
INSERT INTO `usersignicon` VALUES ('699', '96', '5');
INSERT INTO `usersignicon` VALUES ('700', '96', '63');
INSERT INTO `usersignicon` VALUES ('701', '96', '53');
INSERT INTO `usersignicon` VALUES ('702', '96', '60');
INSERT INTO `usersignicon` VALUES ('703', '96', '62');
INSERT INTO `usersignicon` VALUES ('704', '96', '15');
INSERT INTO `usersignicon` VALUES ('705', '75', '57');
INSERT INTO `usersignicon` VALUES ('706', '75', '9');
INSERT INTO `usersignicon` VALUES ('707', '75', '63');
INSERT INTO `usersignicon` VALUES ('708', '75', '20');
INSERT INTO `usersignicon` VALUES ('709', '75', '22');
INSERT INTO `usersignicon` VALUES ('710', '75', '57');
INSERT INTO `usersignicon` VALUES ('711', '75', '20');
INSERT INTO `usersignicon` VALUES ('712', '75', '63');
INSERT INTO `usersignicon` VALUES ('713', '75', '22');
INSERT INTO `usersignicon` VALUES ('714', '75', '9');
INSERT INTO `usersignicon` VALUES ('715', '97', '63');
INSERT INTO `usersignicon` VALUES ('716', '97', '53');
INSERT INTO `usersignicon` VALUES ('717', '97', '52');
INSERT INTO `usersignicon` VALUES ('718', '97', '64');
INSERT INTO `usersignicon` VALUES ('719', '97', '56');
INSERT INTO `usersignicon` VALUES ('720', '97', '63');
INSERT INTO `usersignicon` VALUES ('721', '97', '64');
INSERT INTO `usersignicon` VALUES ('722', '97', '53');
INSERT INTO `usersignicon` VALUES ('723', '97', '52');
INSERT INTO `usersignicon` VALUES ('724', '97', '56');
INSERT INTO `usersignicon` VALUES ('725', '97', '53');
INSERT INTO `usersignicon` VALUES ('726', '97', '52');
INSERT INTO `usersignicon` VALUES ('727', '97', '64');
INSERT INTO `usersignicon` VALUES ('728', '97', '56');
INSERT INTO `usersignicon` VALUES ('729', '97', '63');
INSERT INTO `usersignicon` VALUES ('736', '72', '22');
INSERT INTO `usersignicon` VALUES ('738', '72', '22');
INSERT INTO `usersignicon` VALUES ('739', '98', '53');
INSERT INTO `usersignicon` VALUES ('740', '98', '9');
INSERT INTO `usersignicon` VALUES ('742', '72', '22');
INSERT INTO `usersignicon` VALUES ('743', '98', '53');
INSERT INTO `usersignicon` VALUES ('744', '98', '9');
INSERT INTO `usersignicon` VALUES ('746', '72', '22');
INSERT INTO `usersignicon` VALUES ('747', '98', '53');
INSERT INTO `usersignicon` VALUES ('748', '98', '9');
INSERT INTO `usersignicon` VALUES ('754', '97', '52');
INSERT INTO `usersignicon` VALUES ('755', '97', '64');
INSERT INTO `usersignicon` VALUES ('756', '97', '56');
INSERT INTO `usersignicon` VALUES ('757', '97', '63');
INSERT INTO `usersignicon` VALUES ('758', '97', '53');
INSERT INTO `usersignicon` VALUES ('764', '98', '9');
INSERT INTO `usersignicon` VALUES ('765', '98', '53');
INSERT INTO `usersignicon` VALUES ('767', '72', '22');
INSERT INTO `usersignicon` VALUES ('769', '72', '22');
INSERT INTO `usersignicon` VALUES ('770', '72', '22');
INSERT INTO `usersignicon` VALUES ('773', '72', '22');
INSERT INTO `usersignicon` VALUES ('775', '72', '22');
INSERT INTO `usersignicon` VALUES ('777', '72', '22');
INSERT INTO `usersignicon` VALUES ('779', '72', '22');
INSERT INTO `usersignicon` VALUES ('781', '72', '22');
INSERT INTO `usersignicon` VALUES ('783', '72', '22');
INSERT INTO `usersignicon` VALUES ('785', '72', '22');
INSERT INTO `usersignicon` VALUES ('787', '72', '22');
INSERT INTO `usersignicon` VALUES ('789', '72', '22');
INSERT INTO `usersignicon` VALUES ('791', '72', '22');
INSERT INTO `usersignicon` VALUES ('792', '72', '22');
INSERT INTO `usersignicon` VALUES ('795', '72', '22');
INSERT INTO `usersignicon` VALUES ('797', '72', '22');
INSERT INTO `usersignicon` VALUES ('799', '72', '22');
INSERT INTO `usersignicon` VALUES ('801', '72', '22');
INSERT INTO `usersignicon` VALUES ('858', '72', '22');
INSERT INTO `usersignicon` VALUES ('860', '72', '22');
INSERT INTO `usersignicon` VALUES ('862', '72', '22');
INSERT INTO `usersignicon` VALUES ('864', '72', '22');
INSERT INTO `usersignicon` VALUES ('865', '72', '22');
INSERT INTO `usersignicon` VALUES ('868', '72', '22');
INSERT INTO `usersignicon` VALUES ('870', '72', '22');
INSERT INTO `usersignicon` VALUES ('871', '72', '22');
INSERT INTO `usersignicon` VALUES ('874', '72', '22');
INSERT INTO `usersignicon` VALUES ('883', '99', '23');
INSERT INTO `usersignicon` VALUES ('885', '99', '65');
INSERT INTO `usersignicon` VALUES ('886', '99', '23');
INSERT INTO `usersignicon` VALUES ('887', '99', '65');
INSERT INTO `usersignicon` VALUES ('888', '99', '62');
INSERT INTO `usersignicon` VALUES ('1249', '100', '58');
INSERT INTO `usersignicon` VALUES ('1250', '100', '8');
INSERT INTO `usersignicon` VALUES ('1251', '100', '63');
INSERT INTO `usersignicon` VALUES ('1252', '100', '5');
INSERT INTO `usersignicon` VALUES ('1253', '100', '13');
INSERT INTO `usersignicon` VALUES ('1254', '100', '68');
INSERT INTO `usersignicon` VALUES ('1255', '100', '71');
INSERT INTO `usersignicon` VALUES ('1256', '100', '77');
INSERT INTO `usersignicon` VALUES ('1257', '100', '22');
INSERT INTO `usersignicon` VALUES ('1258', '100', '11');
INSERT INTO `usersignicon` VALUES ('1259', '100', '12');
INSERT INTO `usersignicon` VALUES ('1260', '100', '5');
INSERT INTO `usersignicon` VALUES ('1261', '100', '59');
INSERT INTO `usersignicon` VALUES ('1262', '100', '42');
INSERT INTO `usersignicon` VALUES ('1263', '100', '2');
INSERT INTO `usersignicon` VALUES ('1264', '100', '14');
INSERT INTO `usersignicon` VALUES ('1265', '100', '17');
INSERT INTO `usersignicon` VALUES ('1266', '100', '70');
INSERT INTO `usersignicon` VALUES ('1368', '101', '5');
INSERT INTO `usersignicon` VALUES ('1369', '101', '53');
INSERT INTO `usersignicon` VALUES ('1370', '101', '42');
INSERT INTO `usersignicon` VALUES ('1371', '101', '67');
INSERT INTO `usersignicon` VALUES ('1372', '101', '65');
INSERT INTO `usersignicon` VALUES ('1373', '101', '76');
INSERT INTO `usersignicon` VALUES ('1374', '101', '14');
INSERT INTO `usersignicon` VALUES ('1375', '101', '17');
INSERT INTO `usersignicon` VALUES ('1376', '101', '62');
INSERT INTO `usersignicon` VALUES ('1377', '101', '78');
INSERT INTO `usersignicon` VALUES ('1379', '72', '17');
INSERT INTO `usersignicon` VALUES ('1380', '72', '22');
INSERT INTO `usersignicon` VALUES ('1381', '72', '63');
INSERT INTO `usersignicon` VALUES ('1382', '72', '53');
INSERT INTO `usersignicon` VALUES ('1383', '72', '52');
INSERT INTO `usersignicon` VALUES ('1384', '72', '64');
INSERT INTO `usersignicon` VALUES ('1385', '72', '56');
INSERT INTO `usersignicon` VALUES ('1386', '72', '59');
INSERT INTO `usersignicon` VALUES ('1387', '72', '58');
INSERT INTO `usersignicon` VALUES ('1388', '72', '12');
INSERT INTO `usersignicon` VALUES ('1389', '72', '57');
INSERT INTO `usersignicon` VALUES ('1390', '72', '5');
INSERT INTO `usersignicon` VALUES ('1391', '72', '60');
INSERT INTO `usersignicon` VALUES ('1392', '72', '42');
INSERT INTO `usersignicon` VALUES ('1393', '72', '9');
INSERT INTO `usersignicon` VALUES ('1394', '72', '41');
INSERT INTO `usersignicon` VALUES ('1676', '102', '63');
INSERT INTO `usersignicon` VALUES ('1677', '102', '53');
INSERT INTO `usersignicon` VALUES ('1678', '102', '52');
INSERT INTO `usersignicon` VALUES ('1679', '102', '64');
INSERT INTO `usersignicon` VALUES ('1680', '102', '56');
INSERT INTO `usersignicon` VALUES ('1681', '102', '59');
INSERT INTO `usersignicon` VALUES ('1682', '102', '58');
INSERT INTO `usersignicon` VALUES ('1683', '102', '12');
INSERT INTO `usersignicon` VALUES ('1684', '102', '57');
INSERT INTO `usersignicon` VALUES ('1685', '102', '5');
INSERT INTO `usersignicon` VALUES ('1686', '102', '60');
INSERT INTO `usersignicon` VALUES ('1687', '102', '42');
INSERT INTO `usersignicon` VALUES ('1688', '102', '9');
INSERT INTO `usersignicon` VALUES ('1689', '102', '8');
INSERT INTO `usersignicon` VALUES ('1690', '102', '41');
INSERT INTO `usersignicon` VALUES ('1691', '102', '2');
INSERT INTO `usersignicon` VALUES ('1692', '102', '11');
INSERT INTO `usersignicon` VALUES ('1693', '102', '65');
INSERT INTO `usersignicon` VALUES ('1694', '102', '67');
INSERT INTO `usersignicon` VALUES ('1695', '102', '68');
INSERT INTO `usersignicon` VALUES ('1696', '102', '69');
INSERT INTO `usersignicon` VALUES ('1697', '102', '14');
INSERT INTO `usersignicon` VALUES ('1698', '102', '13');
INSERT INTO `usersignicon` VALUES ('1699', '102', '16');
INSERT INTO `usersignicon` VALUES ('1700', '102', '17');
INSERT INTO `usersignicon` VALUES ('1701', '102', '73');
INSERT INTO `usersignicon` VALUES ('1702', '102', '75');
INSERT INTO `usersignicon` VALUES ('1703', '102', '74');
INSERT INTO `usersignicon` VALUES ('1704', '102', '70');
INSERT INTO `usersignicon` VALUES ('1705', '102', '76');
INSERT INTO `usersignicon` VALUES ('1706', '102', '71');
INSERT INTO `usersignicon` VALUES ('1707', '102', '72');
INSERT INTO `usersignicon` VALUES ('1708', '102', '19');
INSERT INTO `usersignicon` VALUES ('1709', '102', '77');
INSERT INTO `usersignicon` VALUES ('1710', '102', '78');
INSERT INTO `usersignicon` VALUES ('1711', '102', '80');
INSERT INTO `usersignicon` VALUES ('1712', '102', '81');
INSERT INTO `usersignicon` VALUES ('1713', '102', '82');
INSERT INTO `usersignicon` VALUES ('1714', '102', '22');
INSERT INTO `usersignicon` VALUES ('1715', '102', '23');
INSERT INTO `usersignicon` VALUES ('1716', '102', '62');
INSERT INTO `usersignicon` VALUES ('1717', '102', '49');
INSERT INTO `usersignicon` VALUES ('1718', '102', '61');
INSERT INTO `usersignicon` VALUES ('1955', '103', '63');
INSERT INTO `usersignicon` VALUES ('1956', '103', '52');
INSERT INTO `usersignicon` VALUES ('1957', '103', '53');
INSERT INTO `usersignicon` VALUES ('1958', '103', '64');
INSERT INTO `usersignicon` VALUES ('1959', '103', '56');
INSERT INTO `usersignicon` VALUES ('3118', '107', '77');
INSERT INTO `usersignicon` VALUES ('3119', '107', '60');
INSERT INTO `usersignicon` VALUES ('3120', '107', '42');
INSERT INTO `usersignicon` VALUES ('3121', '107', '5');
INSERT INTO `usersignicon` VALUES ('3122', '107', '9');
INSERT INTO `usersignicon` VALUES ('3123', '108', '23');
INSERT INTO `usersignicon` VALUES ('3124', '108', '76');
INSERT INTO `usersignicon` VALUES ('3125', '108', '14');
INSERT INTO `usersignicon` VALUES ('3126', '108', '67');
INSERT INTO `usersignicon` VALUES ('3127', '108', '41');
INSERT INTO `usersignicon` VALUES ('3128', '85', '22');
INSERT INTO `usersignicon` VALUES ('3129', '85', '8');
INSERT INTO `usersignicon` VALUES ('3130', '85', '63');
INSERT INTO `usersignicon` VALUES ('3131', '85', '52');
INSERT INTO `usersignicon` VALUES ('3132', '85', '64');
INSERT INTO `usersignicon` VALUES ('3133', '85', '53');
INSERT INTO `usersignicon` VALUES ('3134', '85', '56');
INSERT INTO `usersignicon` VALUES ('3135', '84', '12');
INSERT INTO `usersignicon` VALUES ('3136', '84', '5');
INSERT INTO `usersignicon` VALUES ('3142', '109', '53');
INSERT INTO `usersignicon` VALUES ('3143', '84', '5');
INSERT INTO `usersignicon` VALUES ('3144', '84', '12');
INSERT INTO `usersignicon` VALUES ('3145', '84', '63');
INSERT INTO `usersignicon` VALUES ('3146', '84', '52');
INSERT INTO `usersignicon` VALUES ('3147', '84', '53');
INSERT INTO `usersignicon` VALUES ('3148', '110', '63');
INSERT INTO `usersignicon` VALUES ('3149', '110', '53');
INSERT INTO `usersignicon` VALUES ('3150', '110', '52');
INSERT INTO `usersignicon` VALUES ('3151', '110', '59');
INSERT INTO `usersignicon` VALUES ('3152', '111', '63');
INSERT INTO `usersignicon` VALUES ('3153', '111', '57');
INSERT INTO `usersignicon` VALUES ('3159', '112', '63');
INSERT INTO `usersignicon` VALUES ('3160', '112', '12');
INSERT INTO `usersignicon` VALUES ('3161', '112', '2');
INSERT INTO `usersignicon` VALUES ('3162', '112', '14');
INSERT INTO `usersignicon` VALUES ('3163', '112', '78');
INSERT INTO `usersignicon` VALUES ('3164', '112', '62');
INSERT INTO `usersignicon` VALUES ('3165', '113', '5');
INSERT INTO `usersignicon` VALUES ('3166', '113', '42');
INSERT INTO `usersignicon` VALUES ('3167', '113', '23');
INSERT INTO `usersignicon` VALUES ('3213', '114', '23');
INSERT INTO `usersignicon` VALUES ('3214', '114', '82');
INSERT INTO `usersignicon` VALUES ('3215', '114', '72');
INSERT INTO `usersignicon` VALUES ('3216', '114', '69');
INSERT INTO `usersignicon` VALUES ('3217', '114', '11');
INSERT INTO `usersignicon` VALUES ('3218', '114', '65');
INSERT INTO `usersignicon` VALUES ('3219', '114', '42');
INSERT INTO `usersignicon` VALUES ('3220', '114', '57');
INSERT INTO `usersignicon` VALUES ('3221', '114', '52');
INSERT INTO `usersignicon` VALUES ('3222', '114', '49');
INSERT INTO `usersignicon` VALUES ('3223', '114', '82');
INSERT INTO `usersignicon` VALUES ('3224', '114', '76');
INSERT INTO `usersignicon` VALUES ('3225', '114', '13');
INSERT INTO `usersignicon` VALUES ('3226', '114', '67');
INSERT INTO `usersignicon` VALUES ('3227', '114', '2');
INSERT INTO `usersignicon` VALUES ('3228', '114', '9');
INSERT INTO `usersignicon` VALUES ('3229', '114', '12');
INSERT INTO `usersignicon` VALUES ('3230', '114', '52');
INSERT INTO `usersignicon` VALUES ('3231', '114', '42');
INSERT INTO `usersignicon` VALUES ('3232', '114', '60');
INSERT INTO `usersignicon` VALUES ('3233', '114', '63');
INSERT INTO `usersignicon` VALUES ('3234', '114', '5');
INSERT INTO `usersignicon` VALUES ('3235', '114', '9');
INSERT INTO `usersignicon` VALUES ('3236', '114', '42');
INSERT INTO `usersignicon` VALUES ('3237', '114', '9');
INSERT INTO `usersignicon` VALUES ('3238', '114', '60');
INSERT INTO `usersignicon` VALUES ('3239', '114', '63');
INSERT INTO `usersignicon` VALUES ('3240', '114', '5');
INSERT INTO `usersignicon` VALUES ('3241', '114', '60');
INSERT INTO `usersignicon` VALUES ('3242', '114', '5');
INSERT INTO `usersignicon` VALUES ('3243', '114', '9');
INSERT INTO `usersignicon` VALUES ('3244', '114', '42');
INSERT INTO `usersignicon` VALUES ('3245', '114', '63');
INSERT INTO `usersignicon` VALUES ('3246', '114', '42');
INSERT INTO `usersignicon` VALUES ('3247', '114', '5');
INSERT INTO `usersignicon` VALUES ('3248', '114', '60');
INSERT INTO `usersignicon` VALUES ('3249', '114', '63');
INSERT INTO `usersignicon` VALUES ('3250', '114', '9');
INSERT INTO `usersignicon` VALUES ('3251', '114', '63');
INSERT INTO `usersignicon` VALUES ('3252', '114', '5');
INSERT INTO `usersignicon` VALUES ('3253', '114', '9');
INSERT INTO `usersignicon` VALUES ('3254', '114', '60');
INSERT INTO `usersignicon` VALUES ('3255', '114', '42');
INSERT INTO `usersignicon` VALUES ('3256', '114', '9');
INSERT INTO `usersignicon` VALUES ('3257', '114', '42');
INSERT INTO `usersignicon` VALUES ('3258', '114', '60');
INSERT INTO `usersignicon` VALUES ('3259', '114', '5');
INSERT INTO `usersignicon` VALUES ('3260', '114', '63');
INSERT INTO `usersignicon` VALUES ('3261', '114', '63');
INSERT INTO `usersignicon` VALUES ('3262', '114', '42');
INSERT INTO `usersignicon` VALUES ('3263', '114', '9');
INSERT INTO `usersignicon` VALUES ('3264', '114', '60');
INSERT INTO `usersignicon` VALUES ('3265', '114', '5');
INSERT INTO `usersignicon` VALUES ('3266', '114', '60');
INSERT INTO `usersignicon` VALUES ('3267', '114', '9');
INSERT INTO `usersignicon` VALUES ('3268', '114', '42');
INSERT INTO `usersignicon` VALUES ('3269', '114', '5');
INSERT INTO `usersignicon` VALUES ('3270', '114', '63');
INSERT INTO `usersignicon` VALUES ('3271', '114', '9');
INSERT INTO `usersignicon` VALUES ('3272', '114', '5');
INSERT INTO `usersignicon` VALUES ('3273', '114', '60');
INSERT INTO `usersignicon` VALUES ('3274', '114', '42');
INSERT INTO `usersignicon` VALUES ('3275', '114', '63');
INSERT INTO `usersignicon` VALUES ('3276', '114', '60');
INSERT INTO `usersignicon` VALUES ('3277', '114', '5');
INSERT INTO `usersignicon` VALUES ('3278', '114', '42');
INSERT INTO `usersignicon` VALUES ('3279', '114', '63');
INSERT INTO `usersignicon` VALUES ('3280', '114', '9');
INSERT INTO `usersignicon` VALUES ('3281', '114', '63');
INSERT INTO `usersignicon` VALUES ('3282', '114', '5');
INSERT INTO `usersignicon` VALUES ('3283', '114', '9');
INSERT INTO `usersignicon` VALUES ('3284', '114', '60');
INSERT INTO `usersignicon` VALUES ('3285', '114', '42');
INSERT INTO `usersignicon` VALUES ('3286', '114', '5');
INSERT INTO `usersignicon` VALUES ('3287', '114', '63');
INSERT INTO `usersignicon` VALUES ('3288', '114', '42');
INSERT INTO `usersignicon` VALUES ('3289', '114', '60');
INSERT INTO `usersignicon` VALUES ('3290', '114', '9');
INSERT INTO `usersignicon` VALUES ('3291', '114', '42');
INSERT INTO `usersignicon` VALUES ('3292', '114', '60');
INSERT INTO `usersignicon` VALUES ('3293', '114', '9');
INSERT INTO `usersignicon` VALUES ('3294', '114', '63');
INSERT INTO `usersignicon` VALUES ('3295', '114', '5');
INSERT INTO `usersignicon` VALUES ('3296', '114', '42');
INSERT INTO `usersignicon` VALUES ('3297', '114', '5');
INSERT INTO `usersignicon` VALUES ('3298', '114', '60');
INSERT INTO `usersignicon` VALUES ('3299', '114', '9');
INSERT INTO `usersignicon` VALUES ('3300', '114', '63');
INSERT INTO `usersignicon` VALUES ('3301', '114', '9');
INSERT INTO `usersignicon` VALUES ('3302', '114', '5');
INSERT INTO `usersignicon` VALUES ('3303', '114', '60');
INSERT INTO `usersignicon` VALUES ('3304', '114', '63');
INSERT INTO `usersignicon` VALUES ('3305', '114', '42');
INSERT INTO `usersignicon` VALUES ('3306', '114', '42');
INSERT INTO `usersignicon` VALUES ('3307', '114', '9');
INSERT INTO `usersignicon` VALUES ('3308', '114', '63');
INSERT INTO `usersignicon` VALUES ('3309', '114', '5');
INSERT INTO `usersignicon` VALUES ('3310', '114', '60');
INSERT INTO `usersignicon` VALUES ('3311', '114', '60');
INSERT INTO `usersignicon` VALUES ('3312', '114', '5');
INSERT INTO `usersignicon` VALUES ('3313', '114', '9');
INSERT INTO `usersignicon` VALUES ('3314', '114', '42');
INSERT INTO `usersignicon` VALUES ('3315', '114', '63');
INSERT INTO `usersignicon` VALUES ('3316', '114', '5');
INSERT INTO `usersignicon` VALUES ('3317', '114', '9');
INSERT INTO `usersignicon` VALUES ('3318', '114', '63');
INSERT INTO `usersignicon` VALUES ('3319', '114', '60');
INSERT INTO `usersignicon` VALUES ('3320', '114', '42');
INSERT INTO `usersignicon` VALUES ('3321', '114', '9');
INSERT INTO `usersignicon` VALUES ('3322', '114', '42');
INSERT INTO `usersignicon` VALUES ('3323', '114', '60');
INSERT INTO `usersignicon` VALUES ('3324', '114', '5');
INSERT INTO `usersignicon` VALUES ('3325', '114', '63');
INSERT INTO `usersignicon` VALUES ('3326', '114', '60');
INSERT INTO `usersignicon` VALUES ('3327', '114', '63');
INSERT INTO `usersignicon` VALUES ('3328', '114', '9');
INSERT INTO `usersignicon` VALUES ('3329', '114', '5');
INSERT INTO `usersignicon` VALUES ('3330', '114', '42');
INSERT INTO `usersignicon` VALUES ('3331', '114', '42');
INSERT INTO `usersignicon` VALUES ('3332', '114', '60');
INSERT INTO `usersignicon` VALUES ('3333', '114', '9');
INSERT INTO `usersignicon` VALUES ('3334', '114', '5');
INSERT INTO `usersignicon` VALUES ('3335', '114', '63');
INSERT INTO `usersignicon` VALUES ('3336', '114', '9');
INSERT INTO `usersignicon` VALUES ('3337', '114', '63');
INSERT INTO `usersignicon` VALUES ('3338', '114', '5');
INSERT INTO `usersignicon` VALUES ('3339', '114', '60');
INSERT INTO `usersignicon` VALUES ('3340', '114', '42');
INSERT INTO `usersignicon` VALUES ('3341', '114', '42');
INSERT INTO `usersignicon` VALUES ('3342', '114', '9');
INSERT INTO `usersignicon` VALUES ('3343', '114', '5');
INSERT INTO `usersignicon` VALUES ('3344', '114', '60');
INSERT INTO `usersignicon` VALUES ('3345', '114', '63');
INSERT INTO `usersignicon` VALUES ('3346', '114', '60');
INSERT INTO `usersignicon` VALUES ('3347', '114', '5');
INSERT INTO `usersignicon` VALUES ('3348', '114', '63');
INSERT INTO `usersignicon` VALUES ('3349', '114', '9');
INSERT INTO `usersignicon` VALUES ('3350', '114', '42');
INSERT INTO `usersignicon` VALUES ('3351', '114', '42');
INSERT INTO `usersignicon` VALUES ('3352', '114', '9');
INSERT INTO `usersignicon` VALUES ('3353', '114', '60');
INSERT INTO `usersignicon` VALUES ('3354', '114', '5');
INSERT INTO `usersignicon` VALUES ('3355', '114', '63');
INSERT INTO `usersignicon` VALUES ('3356', '114', '60');
INSERT INTO `usersignicon` VALUES ('3357', '114', '9');
INSERT INTO `usersignicon` VALUES ('3358', '114', '5');
INSERT INTO `usersignicon` VALUES ('3359', '114', '63');
INSERT INTO `usersignicon` VALUES ('3360', '114', '42');
INSERT INTO `usersignicon` VALUES ('3361', '114', '5');
INSERT INTO `usersignicon` VALUES ('3362', '114', '60');
INSERT INTO `usersignicon` VALUES ('3363', '114', '42');
INSERT INTO `usersignicon` VALUES ('3364', '114', '63');
INSERT INTO `usersignicon` VALUES ('3365', '114', '9');
INSERT INTO `usersignicon` VALUES ('3366', '114', '42');
INSERT INTO `usersignicon` VALUES ('3367', '114', '63');
INSERT INTO `usersignicon` VALUES ('3368', '114', '9');
INSERT INTO `usersignicon` VALUES ('3369', '114', '5');
INSERT INTO `usersignicon` VALUES ('3370', '114', '60');
INSERT INTO `usersignicon` VALUES ('3371', '114', '60');
INSERT INTO `usersignicon` VALUES ('3372', '114', '5');
INSERT INTO `usersignicon` VALUES ('3373', '114', '9');
INSERT INTO `usersignicon` VALUES ('3374', '114', '63');
INSERT INTO `usersignicon` VALUES ('3375', '114', '42');
INSERT INTO `usersignicon` VALUES ('3376', '114', '60');
INSERT INTO `usersignicon` VALUES ('3377', '114', '63');
INSERT INTO `usersignicon` VALUES ('3378', '114', '5');
INSERT INTO `usersignicon` VALUES ('3379', '114', '9');
INSERT INTO `usersignicon` VALUES ('3380', '114', '42');
INSERT INTO `usersignicon` VALUES ('4563', '115', '53');
INSERT INTO `usersignicon` VALUES ('4564', '115', '59');
INSERT INTO `usersignicon` VALUES ('4565', '115', '41');
INSERT INTO `usersignicon` VALUES ('4566', '60', '42');
INSERT INTO `usersignicon` VALUES ('4567', '60', '23');
INSERT INTO `usersignicon` VALUES ('4569', '60', '42');
INSERT INTO `usersignicon` VALUES ('4570', '116', '5');
INSERT INTO `usersignicon` VALUES ('4571', '116', '23');
INSERT INTO `usersignicon` VALUES ('5025', '121', '2');
INSERT INTO `usersignicon` VALUES ('5026', '121', '60');
INSERT INTO `usersignicon` VALUES ('5115', '122', '68');
INSERT INTO `usersignicon` VALUES ('5116', '122', '77');
INSERT INTO `usersignicon` VALUES ('5337', '123', '53');
INSERT INTO `usersignicon` VALUES ('5338', '123', '63');
INSERT INTO `usersignicon` VALUES ('5339', '123', '52');
INSERT INTO `usersignicon` VALUES ('5340', '123', '64');
INSERT INTO `usersignicon` VALUES ('5341', '123', '52');
INSERT INTO `usersignicon` VALUES ('5342', '123', '63');
INSERT INTO `usersignicon` VALUES ('5343', '123', '64');
INSERT INTO `usersignicon` VALUES ('5344', '123', '53');
INSERT INTO `usersignicon` VALUES ('5345', '123', '12');
INSERT INTO `usersignicon` VALUES ('5346', '123', '56');
INSERT INTO `usersignicon` VALUES ('5394', '125', '11');
INSERT INTO `usersignicon` VALUES ('5395', '125', '17');
INSERT INTO `usersignicon` VALUES ('5426', '126', '63');
INSERT INTO `usersignicon` VALUES ('5427', '126', '53');
INSERT INTO `usersignicon` VALUES ('5428', '126', '5');
INSERT INTO `usersignicon` VALUES ('5626', '60', '76');
INSERT INTO `usersignicon` VALUES ('5628', '127', '22');
INSERT INTO `usersignicon` VALUES ('5629', '127', '23');
INSERT INTO `usersignicon` VALUES ('5648', '60', '62');
INSERT INTO `usersignicon` VALUES ('5649', '60', '80');
INSERT INTO `usersignicon` VALUES ('5650', '60', '81');
INSERT INTO `usersignicon` VALUES ('5651', '128', '53');
INSERT INTO `usersignicon` VALUES ('5652', '128', '63');
INSERT INTO `usersignicon` VALUES ('5653', '128', '64');
INSERT INTO `usersignicon` VALUES ('5654', '128', '56');
INSERT INTO `usersignicon` VALUES ('5655', '128', '52');
INSERT INTO `usersignicon` VALUES ('5656', '128', '62');
INSERT INTO `usersignicon` VALUES ('5657', '128', '61');
INSERT INTO `usersignicon` VALUES ('5658', '128', '49');
INSERT INTO `usersignicon` VALUES ('5659', '128', '23');
INSERT INTO `usersignicon` VALUES ('5660', '128', '22');
INSERT INTO `usersignicon` VALUES ('5661', '129', '63');
INSERT INTO `usersignicon` VALUES ('5662', '129', '53');
INSERT INTO `usersignicon` VALUES ('5663', '129', '52');
INSERT INTO `usersignicon` VALUES ('5664', '129', '64');
INSERT INTO `usersignicon` VALUES ('5665', '129', '56');
INSERT INTO `usersignicon` VALUES ('5666', '129', '41');
INSERT INTO `usersignicon` VALUES ('5667', '129', '8');
INSERT INTO `usersignicon` VALUES ('5668', '129', '9');
INSERT INTO `usersignicon` VALUES ('5669', '129', '42');
INSERT INTO `usersignicon` VALUES ('5670', '129', '60');
INSERT INTO `usersignicon` VALUES ('5671', '60', '5');
INSERT INTO `usersignicon` VALUES ('5672', '60', '60');
INSERT INTO `usersignicon` VALUES ('5673', '60', '12');
INSERT INTO `usersignicon` VALUES ('5674', '60', '53');
INSERT INTO `usersignicon` VALUES ('5675', '60', '63');
INSERT INTO `usersignicon` VALUES ('5676', '60', '52');
INSERT INTO `usersignicon` VALUES ('5677', '60', '64');
INSERT INTO `usersignicon` VALUES ('5678', '60', '56');
INSERT INTO `usersignicon` VALUES ('5679', '60', '58');
INSERT INTO `usersignicon` VALUES ('5680', '60', '59');
INSERT INTO `usersignicon` VALUES ('5681', '60', '57');
INSERT INTO `usersignicon` VALUES ('5682', '60', '9');
INSERT INTO `usersignicon` VALUES ('5683', '60', '8');
INSERT INTO `usersignicon` VALUES ('5684', '60', '41');
INSERT INTO `usersignicon` VALUES ('5685', '60', '2');
INSERT INTO `usersignicon` VALUES ('5686', '60', '11');
INSERT INTO `usersignicon` VALUES ('5687', '60', '65');
INSERT INTO `usersignicon` VALUES ('5688', '60', '68');
INSERT INTO `usersignicon` VALUES ('5689', '60', '69');
INSERT INTO `usersignicon` VALUES ('5690', '60', '14');
INSERT INTO `usersignicon` VALUES ('5691', '60', '13');
INSERT INTO `usersignicon` VALUES ('5692', '60', '16');
INSERT INTO `usersignicon` VALUES ('5693', '130', '63');
INSERT INTO `usersignicon` VALUES ('5694', '130', '53');
INSERT INTO `usersignicon` VALUES ('5695', '130', '52');
INSERT INTO `usersignicon` VALUES ('5696', '130', '64');
INSERT INTO `usersignicon` VALUES ('5697', '130', '56');
INSERT INTO `usersignicon` VALUES ('5698', '131', '63');

-- ----------------------------
-- Table structure for `user_event_rel`
-- ----------------------------
DROP TABLE IF EXISTS `user_event_rel`;
CREATE TABLE `user_event_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_event_rel
-- ----------------------------
INSERT INTO `user_event_rel` VALUES ('1', '85', '2');
INSERT INTO `user_event_rel` VALUES ('2', '60', '5');
INSERT INTO `user_event_rel` VALUES ('8', '60', '7');
INSERT INTO `user_event_rel` VALUES ('14', '60', '8');
INSERT INTO `user_event_rel` VALUES ('15', '60', '2');
INSERT INTO `user_event_rel` VALUES ('16', '60', '2');

-- ----------------------------
-- Table structure for `user_friend_relation`
-- ----------------------------
DROP TABLE IF EXISTS `user_friend_relation`;
CREATE TABLE `user_friend_relation` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `friend_id` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_friend_relation
-- ----------------------------
INSERT INTO `user_friend_relation` VALUES ('3', '60', '49', '2');
INSERT INTO `user_friend_relation` VALUES ('4', '60', '38', '2');
INSERT INTO `user_friend_relation` VALUES ('5', '60', '51', '2');
INSERT INTO `user_friend_relation` VALUES ('6', '60', '50', '2');
INSERT INTO `user_friend_relation` VALUES ('7', '60', '49', '2');
INSERT INTO `user_friend_relation` VALUES ('8', '60', '42', '2');
INSERT INTO `user_friend_relation` VALUES ('24', '74', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('25', '74', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('26', '74', '73', '1');
INSERT INTO `user_friend_relation` VALUES ('27', '75', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('28', '75', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('29', '75', '73', '1');
INSERT INTO `user_friend_relation` VALUES ('30', '76', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('31', '76', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('32', '76', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('33', '60', '67', '2');
INSERT INTO `user_friend_relation` VALUES ('34', '60', '72', '2');
INSERT INTO `user_friend_relation` VALUES ('36', '60', '73', '2');
INSERT INTO `user_friend_relation` VALUES ('37', '60', '69', '2');
INSERT INTO `user_friend_relation` VALUES ('38', '60', '74', '2');
INSERT INTO `user_friend_relation` VALUES ('39', '85', '60', '2');
INSERT INTO `user_friend_relation` VALUES ('43', '81', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('44', '81', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('45', '82', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('46', '82', '73', '1');
INSERT INTO `user_friend_relation` VALUES ('47', '82', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('48', '85', '76', '1');
INSERT INTO `user_friend_relation` VALUES ('49', '85', '75', '1');
INSERT INTO `user_friend_relation` VALUES ('50', '85', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('53', '89', '65', '1');
INSERT INTO `user_friend_relation` VALUES ('55', '89', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('58', '89', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('59', '89', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('60', '90', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('61', '90', '65', '1');
INSERT INTO `user_friend_relation` VALUES ('62', '94', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('63', '94', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('64', '94', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('65', '94', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('66', '94', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('67', '95', '64', '1');
INSERT INTO `user_friend_relation` VALUES ('68', '95', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('69', '95', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('70', '95', '94', '1');
INSERT INTO `user_friend_relation` VALUES ('71', '95', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('73', '75', '94', '1');
INSERT INTO `user_friend_relation` VALUES ('86', '96', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('87', '96', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('88', '96', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('89', '97', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('90', '97', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('91', '97', '78', '1');
INSERT INTO `user_friend_relation` VALUES ('92', '97', '77', '1');
INSERT INTO `user_friend_relation` VALUES ('93', '72', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('94', '98', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('95', '98', '77', '1');
INSERT INTO `user_friend_relation` VALUES ('97', '100', '75', '1');
INSERT INTO `user_friend_relation` VALUES ('98', '100', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('99', '100', '98', '1');
INSERT INTO `user_friend_relation` VALUES ('100', '100', '65', '1');
INSERT INTO `user_friend_relation` VALUES ('101', '100', '64', '2');
INSERT INTO `user_friend_relation` VALUES ('102', '100', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('103', '102', '80', '2');
INSERT INTO `user_friend_relation` VALUES ('104', '102', '79', '2');
INSERT INTO `user_friend_relation` VALUES ('105', '102', '78', '2');
INSERT INTO `user_friend_relation` VALUES ('106', '102', '77', '2');
INSERT INTO `user_friend_relation` VALUES ('107', '102', '60', '2');
INSERT INTO `user_friend_relation` VALUES ('108', '102', '74', '2');
INSERT INTO `user_friend_relation` VALUES ('109', '102', '75', '2');
INSERT INTO `user_friend_relation` VALUES ('110', '102', '76', '2');
INSERT INTO `user_friend_relation` VALUES ('116', '102', '64', '2');
INSERT INTO `user_friend_relation` VALUES ('117', '102', '69', '2');
INSERT INTO `user_friend_relation` VALUES ('118', '102', '73', '2');
INSERT INTO `user_friend_relation` VALUES ('119', '102', '72', '2');
INSERT INTO `user_friend_relation` VALUES ('120', '102', '65', '2');
INSERT INTO `user_friend_relation` VALUES ('121', '102', '67', '2');
INSERT INTO `user_friend_relation` VALUES ('122', '102', '68', '2');
INSERT INTO `user_friend_relation` VALUES ('123', '102', '94', '2');
INSERT INTO `user_friend_relation` VALUES ('124', '102', '97', '2');
INSERT INTO `user_friend_relation` VALUES ('125', '102', '98', '2');
INSERT INTO `user_friend_relation` VALUES ('126', '102', '99', '2');
INSERT INTO `user_friend_relation` VALUES ('127', '102', '100', '2');
INSERT INTO `user_friend_relation` VALUES ('128', '102', '101', '2');
INSERT INTO `user_friend_relation` VALUES ('129', '103', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('130', '103', '78', '1');
INSERT INTO `user_friend_relation` VALUES ('131', '103', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('132', '60', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('133', '60', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('134', '60', '100', '1');
INSERT INTO `user_friend_relation` VALUES ('135', '60', '76', '1');
INSERT INTO `user_friend_relation` VALUES ('142', '60', '78', '1');
INSERT INTO `user_friend_relation` VALUES ('145', '60', '144', '1');
INSERT INTO `user_friend_relation` VALUES ('150', '60', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('152', '60', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('153', '60', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('154', '108', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('155', '108', '74', '1');
INSERT INTO `user_friend_relation` VALUES ('156', '108', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('157', '108', '99', '1');
INSERT INTO `user_friend_relation` VALUES ('158', '108', '100', '1');
INSERT INTO `user_friend_relation` VALUES ('159', '108', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('160', '108', '90', '1');
INSERT INTO `user_friend_relation` VALUES ('161', '108', '94', '1');
INSERT INTO `user_friend_relation` VALUES ('162', '85', '84', '2');
INSERT INTO `user_friend_relation` VALUES ('163', '109', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('164', '110', '85', '1');
INSERT INTO `user_friend_relation` VALUES ('165', '110', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('166', '110', '80', '1');
INSERT INTO `user_friend_relation` VALUES ('167', '110', '77', '1');
INSERT INTO `user_friend_relation` VALUES ('168', '110', '78', '1');
INSERT INTO `user_friend_relation` VALUES ('169', '110', '79', '1');
INSERT INTO `user_friend_relation` VALUES ('170', '110', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('171', '110', '90', '1');
INSERT INTO `user_friend_relation` VALUES ('172', '111', '85', '1');
INSERT INTO `user_friend_relation` VALUES ('173', '111', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('174', '111', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('175', '111', '75', '1');
INSERT INTO `user_friend_relation` VALUES ('176', '112', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('177', '112', '108', '1');
INSERT INTO `user_friend_relation` VALUES ('178', '113', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('179', '113', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('180', '114', '108', '1');
INSERT INTO `user_friend_relation` VALUES ('181', '114', '103', '1');
INSERT INTO `user_friend_relation` VALUES ('182', '114', '98', '1');
INSERT INTO `user_friend_relation` VALUES ('183', '114', '99', '1');
INSERT INTO `user_friend_relation` VALUES ('184', '114', '94', '1');
INSERT INTO `user_friend_relation` VALUES ('185', '114', '90', '1');
INSERT INTO `user_friend_relation` VALUES ('186', '114', '97', '1');
INSERT INTO `user_friend_relation` VALUES ('187', '114', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('188', '114', '65', '1');
INSERT INTO `user_friend_relation` VALUES ('189', '114', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('190', '116', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('191', '121', '73', '1');
INSERT INTO `user_friend_relation` VALUES ('192', '60', '77', '1');
INSERT INTO `user_friend_relation` VALUES ('193', '122', '112', '1');
INSERT INTO `user_friend_relation` VALUES ('194', '122', '108', '1');
INSERT INTO `user_friend_relation` VALUES ('195', '122', '109', '1');
INSERT INTO `user_friend_relation` VALUES ('196', '122', '103', '1');
INSERT INTO `user_friend_relation` VALUES ('197', '125', '64', '1');
INSERT INTO `user_friend_relation` VALUES ('198', '125', '68', '1');
INSERT INTO `user_friend_relation` VALUES ('220', '127', '85', '1');
INSERT INTO `user_friend_relation` VALUES ('224', '127', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('225', '128', '85', '1');
INSERT INTO `user_friend_relation` VALUES ('226', '128', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('227', '128', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('228', '128', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('229', '128', '75', '1');
INSERT INTO `user_friend_relation` VALUES ('230', '128', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('231', '129', '85', '1');
INSERT INTO `user_friend_relation` VALUES ('232', '129', '84', '1');
INSERT INTO `user_friend_relation` VALUES ('233', '129', '75', '1');
INSERT INTO `user_friend_relation` VALUES ('234', '129', '72', '1');
INSERT INTO `user_friend_relation` VALUES ('235', '129', '60', '1');
INSERT INTO `user_friend_relation` VALUES ('236', '129', '69', '1');
INSERT INTO `user_friend_relation` VALUES ('237', '129', '64', '1');
INSERT INTO `user_friend_relation` VALUES ('238', '129', '65', '1');
INSERT INTO `user_friend_relation` VALUES ('239', '129', '67', '1');
INSERT INTO `user_friend_relation` VALUES ('240', '129', '89', '1');
INSERT INTO `user_friend_relation` VALUES ('241', '129', '90', '1');
INSERT INTO `user_friend_relation` VALUES ('242', '129', '128', '1');
INSERT INTO `user_friend_relation` VALUES ('243', '130', '129', '1');
INSERT INTO `user_friend_relation` VALUES ('244', '131', '60', '2');
INSERT INTO `user_friend_relation` VALUES ('245', '131', '74', '1');

-- ----------------------------
-- Table structure for `user_manager`
-- ----------------------------
DROP TABLE IF EXISTS `user_manager`;
CREATE TABLE `user_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '1=>Male; 0=>Female',
  `email` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password2` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_email_active` int(11) DEFAULT '2',
  `cpl` float(11,2) DEFAULT '0.00',
  `cpa` float(11,2) DEFAULT '0.00',
  `cpc` float(11,2) DEFAULT '0.00',
  `email2` varchar(50) NOT NULL,
  `is_login` int(11) DEFAULT NULL,
  `is_login1` int(11) DEFAULT '0',
  `last_activity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_manager
-- ----------------------------
INSERT INTO `user_manager` VALUES ('85', 'test', 'user', null, 'samsujj@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'ngfnf', '1697', '', '254', '1', '2', '0.00', '0.00', '0.00', '', '0', '0', '1418278390');
INSERT INTO `user_manager` VALUES ('84', 'test', '1', null, 'sdgdf@sdgdfg.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'sxdfgdgdf', '1696', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('83', 'lkjlkj', 'lkjlkj', null, 'de@hjhjh.khkh', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'hiio', '1609', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('82', 'Super', 'Admin', null, 'bhaskeear.involutiontech@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'fdsfsf', '1685', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('81', 'Calli', 'Surfer', null, 'britt@xomktg.com', null, null, 'cc03e747a6afbbcbf8be7668acfebee5', '', '0', null, 'Ojai', '1685', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('80', 'subhra2', 'Ghatak', null, 'subhra.influxiq2@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kalyani', '1694', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('79', 'subhra1', 'Ghatak', null, 'subhra.influxiq1@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kalyani', '1697', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('78', 'yjtyhm', 'mjgmjh', null, 'abc@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'ngfnf', '1692', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('77', 'Samsuj', 'Jaman', null, 'samsuj009@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kolkata', '1690', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('76', 'Milt', 'Druce', null, 'miltdruce@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Salt Lake City', '1722', 'Utah', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('75', 'Toni', 'Druce', null, 'toni@xomktg.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Salt Lake City', '1722', 'Anywhere', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('74', 'khdkjfdh', 'ihdio', null, 'zadd@add.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'sdgsg', '1695', 'safsadgs', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('60', 'Super', 'Admin', null, 'bhaskar.involutiontech@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'sdfsdf', '1690', 'afaasf', '254', '1', '2', '0.00', '0.00', '0.00', '', '1', '1', '1424175864');
INSERT INTO `user_manager` VALUES ('72', 'John', 'Doe', null, 'subhra.influxiq@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kshdfkj dhk', '1690', 'jsdkhfjdhk ', '254', '1', '2', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('73', 'Max', 'Mathews', null, 'subhra212@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kalyani', '1692', 'hskjdfhdkh k', '254', '1', '2', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('69', 'Test', 'Demo', null, 'test4@demo.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'ksjdhfk d', '1692', 'jdgsfjdh ', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', '1420804525');
INSERT INTO `user_manager` VALUES ('64', 'test', 'Demo', null, 'test@demo.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'asfdsf', '1696', 'dfsdf', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('65', 'Demo', 'Test', null, 'demo@test.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'ksdfkldsjf', '1682', 'skldjfld jlsdf', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('67', 'subhra', 'ghatak', null, 'subhra1.influxiq@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kolkata', '1691', 'kolkata', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('68', 'Demo', 'test', null, 'test66@test.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'sdfddgfdf', '1697', 'dgdfgdf', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('86', 'fdx', 'sdfsdfsd', null, 'sdgd@sdgdfg.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'dsfsfds', '1697', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('87', 'Test', 'Demo', null, 'demo@demo.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'cdvdfvdf', '1697', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('88', 'Ride ', 'Em', null, 'ride125874@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Portland', '1699', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('89', 'Fortune', 'One hundred', null, 'fortune100147@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Salt Lake City', '1722', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('90', 'test', '2', null, 'bhaskar.invoerterlutiontech@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'cfsdfs', '1692', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('91', 'Subhra', 'Ghatak', null, 'subhra242@hotmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kjzgdjmas', '1609', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('92', 'dgfdndngd', 'hgfhgfhjgj', null, 'gfdgfdgddg@gfgf.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'asdasds', '1696', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('93', 'fosjjbeer', 'sdkjfjshukstgew', null, 'susbsned@hghsd.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kjdhskjfksd', '1609', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('94', 'Subhra', 'Ghatak', null, 'subhra212@hotmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'jkaskahjk', '1609', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('95', 'Shelton', 'smith', null, 'sheltonlkj147@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Salt Lake City', '1722', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('96', 'Landslide', 'Down', null, 'landslidedown@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Butte', '1704', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('97', 'Soumik', 'Tarafdar', null, 'soumiktarafdar@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kolkata', '1687', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('98', 'juglar', 'jaggu', null, 'itplcc4o@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kolkata', '1691', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('99', 'Keith', 'Burton', null, 'keithloydburton@gmail.com', null, null, 'ee321313e1123f909c70a6919ccd7604', '', '0', null, 'Provo', '1722', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('100', 'Crackers', 'Salty', null, 'saltycrackers1234@gmail.com', null, null, 'a9a708eebbfd48267afb1f146caf5229', '', '0', null, 'maui', '1691', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('101', 'shubhajit', 'roychowdhury', null, 'shubhajit13@gmail.com', null, null, '5cbb9212295637198d02d9aefab3684d', '', '0', null, 'kolkata', '1723', '', '254', '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('102', 'Sam', 'Suj', null, 'samsujdev@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kolkata', '1701', '', '254', '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('103', 'Samsuj', 'Jaman', null, 'samsujj-tesffft@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kalyani', '1687', '', null, '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('104', 'dsfds', 'dsfsd', null, 'samsujdftgdfgdev@gmail.com', null, null, '96e79218965eb72c92a549dd5a330112', '', '0', null, 'dfds', '1694', '', null, '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('105', 'sdas', 'ds', null, 'samsufdsfsdjdftgdfgdev@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kalyani', '1693', '', null, '0', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('106', 'fgdf', 'dfgdf', null, 'safgdfmsujdftgdfgdev@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'dsfsd', '1692', '', null, '1', '1', '0.00', '0.00', '0.00', '', '0', '0', null);
INSERT INTO `user_manager` VALUES ('107', 'serfsw', 'sdfsdf', null, 'fghfgh@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kolkata', '1691', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('108', 'efsdgvdf', 'fdbdfbdf', null, 'abc2@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'vfbfd', '1696', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('109', 'efsdgvdf', 'bhfgbgf', null, '123@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'bdfggf', '1695', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('110', 'Amitava', 'Das', null, 'amitava.involutiontech@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Habra', '1690', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('111', 'Soumik', 'asdasd', null, 'abc12345@gmail.com', null, null, '25f9e794323b453885f5181f1b624d0b', '', '0', null, 'Kolkata', '1686', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('112', 'bdffgb', 'bgfb', null, 'asd@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'nh', '1696', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('113', 'bdffgb', 'hgtgbthg', null, 'cxz@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'dsfgbvdf', '1696', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('114', 'bhobapagla', 'jmtt', null, 'jmtt@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'casdvsd', '1698', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('115', 'efsdgvdf', 'bhfgbgf', null, 'cvb@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'vdv ', '1696', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('116', 'bdffgb', 'jmttvdsvb', null, 'vvv@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'dsfgbvdf', '1698', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('117', 'Abc', 'Xyz', null, 'Mnb@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Diff', '1689', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('118', 'asd', 'yxt', null, 'qwe@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'yddt', '1684', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('119', 'cvg', 'ccc', null, 'fff@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'vvvn', '1686', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('120', 'g;rlbp;fb', 'rgrtfbgrf', null, 'fgh@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'fdnfgn', '1695', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('125', 'bdffgb', 'bhfgbgf', null, '1235@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'bfdbgf', '1682', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('121', 'bgdbfgb', 'fdbfgb', null, '444@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'vdsfvbdf', '1696', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('122', 'efsdgvdf', 'bvdfbgfb', null, 'sss@mail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'vfgbgf ', '1694', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('123', 'dgf', 'dfsa', null, 'dsa@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'dfg', '1692', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('124', 'sss', 'ddd', null, 'fff@gmail.com', null, null, 'd8578edf8458ce06fbc5bb76a58c5ca4', '', '0', null, 'eee', '1685', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('127', 'cvbcv', 'cvbcv', null, 'vcbcvb@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'xfvx', '1686', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('126', 'ddd', 'ggg', null, 'fffffff@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'llll', '1691', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('128', 'eee', 'eee', null, 'eee@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'zxcvzx', '1689', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('129', 'new', 'test', null, 'newtest@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'Kolkata', '1692', '', null, '1', '1', '0.00', '0.00', '0.00', '', '1', '1', '1423130595');
INSERT INTO `user_manager` VALUES ('130', 'dj', 'gobi', null, 'djgobi@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'fcdfg', '1688', '', null, '1', '1', '0.00', '0.00', '0.00', '', null, '0', null);
INSERT INTO `user_manager` VALUES ('131', 'test@gmail.com', 'test@gmail.com', null, 'test@gmail.com', null, null, 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, 'kalyani', '1685', '', null, '1', '1', '0.00', '0.00', '0.00', '', '0', '0', '1423735120');

-- ----------------------------
-- Table structure for `user_notes`
-- ----------------------------
DROP TABLE IF EXISTS `user_notes`;
CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `notes` text,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_notes
-- ----------------------------
INSERT INTO `user_notes` VALUES ('2', '60', 'jhds jsjskjdhfkjdgj ', '1395830862');

-- ----------------------------
-- Table structure for `user_role_manager`
-- ----------------------------
DROP TABLE IF EXISTS `user_role_manager`;
CREATE TABLE `user_role_manager` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `is_active` int(11) DEFAULT NULL COMMENT '1=>Active;2=>Inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role_manager
-- ----------------------------
INSERT INTO `user_role_manager` VALUES ('1', 'Admin', '<p><strong>Admin</strong></p>\r\n', '1');
INSERT INTO `user_role_manager` VALUES ('2', 'Manager', '<p><u><em><strong><span style=\"color:#FF0000;\">Manager</span></strong></em></u> vhjsd <strong>vgsd </strong>fsd</p>\r\n', '1');
INSERT INTO `user_role_manager` VALUES ('3', 'Customer Care', '<p><span style=\"color:#FF0000;\">Customer</span> <span style=\"color:#0000FF;\">Care</span></p>\r\n', '1');
INSERT INTO `user_role_manager` VALUES ('10', 'User', '&lt;p&gt;User&lt;/p&gt;\r\n', '1');
INSERT INTO `user_role_manager` VALUES ('9', 'Affiliate', '<p>sdf sdfs</p>\r\n', '1');

-- ----------------------------
-- Table structure for `user_role_relation`
-- ----------------------------
DROP TABLE IF EXISTS `user_role_relation`;
CREATE TABLE `user_role_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role_relation
-- ----------------------------
INSERT INTO `user_role_relation` VALUES ('50', '35', '10');
INSERT INTO `user_role_relation` VALUES ('51', '36', '10');
INSERT INTO `user_role_relation` VALUES ('52', '37', '10');
INSERT INTO `user_role_relation` VALUES ('53', '38', '10');
INSERT INTO `user_role_relation` VALUES ('54', '39', '10');
INSERT INTO `user_role_relation` VALUES ('55', '40', '10');
INSERT INTO `user_role_relation` VALUES ('56', '41', '10');
INSERT INTO `user_role_relation` VALUES ('57', '42', '10');
INSERT INTO `user_role_relation` VALUES ('58', '43', '10');
INSERT INTO `user_role_relation` VALUES ('59', '44', '10');
INSERT INTO `user_role_relation` VALUES ('60', '45', '10');
INSERT INTO `user_role_relation` VALUES ('61', '46', '10');
INSERT INTO `user_role_relation` VALUES ('62', '47', '10');
INSERT INTO `user_role_relation` VALUES ('63', '48', '10');
INSERT INTO `user_role_relation` VALUES ('64', '49', '10');
INSERT INTO `user_role_relation` VALUES ('65', '50', '10');
INSERT INTO `user_role_relation` VALUES ('66', '51', '10');
INSERT INTO `user_role_relation` VALUES ('67', '52', '10');
INSERT INTO `user_role_relation` VALUES ('68', '53', '10');
INSERT INTO `user_role_relation` VALUES ('69', '54', '10');
INSERT INTO `user_role_relation` VALUES ('70', '55', '10');
INSERT INTO `user_role_relation` VALUES ('71', '56', '10');
INSERT INTO `user_role_relation` VALUES ('72', '72', '1');
INSERT INTO `user_role_relation` VALUES ('73', '58', '10');
INSERT INTO `user_role_relation` VALUES ('74', '59', '10');
INSERT INTO `user_role_relation` VALUES ('75', '60', '10');
INSERT INTO `user_role_relation` VALUES ('76', '61', '10');
INSERT INTO `user_role_relation` VALUES ('77', '62', '10');
INSERT INTO `user_role_relation` VALUES ('78', '63', '10');
INSERT INTO `user_role_relation` VALUES ('79', '64', '10');
INSERT INTO `user_role_relation` VALUES ('80', '65', '10');
INSERT INTO `user_role_relation` VALUES ('81', '66', '10');
INSERT INTO `user_role_relation` VALUES ('82', '67', '10');
INSERT INTO `user_role_relation` VALUES ('83', '68', '10');
INSERT INTO `user_role_relation` VALUES ('84', '69', '10');
INSERT INTO `user_role_relation` VALUES ('85', '70', '10');
INSERT INTO `user_role_relation` VALUES ('86', '71', '10');
INSERT INTO `user_role_relation` VALUES ('87', '72', '10');
INSERT INTO `user_role_relation` VALUES ('88', '73', '10');
INSERT INTO `user_role_relation` VALUES ('89', '74', '10');
INSERT INTO `user_role_relation` VALUES ('90', '57', '1');
INSERT INTO `user_role_relation` VALUES ('91', '60', '1');
INSERT INTO `user_role_relation` VALUES ('92', '60', '1');
INSERT INTO `user_role_relation` VALUES ('93', '75', '10');
INSERT INTO `user_role_relation` VALUES ('94', '76', '10');
INSERT INTO `user_role_relation` VALUES ('95', '77', '10');
INSERT INTO `user_role_relation` VALUES ('96', '78', '10');
INSERT INTO `user_role_relation` VALUES ('97', '79', '10');
INSERT INTO `user_role_relation` VALUES ('98', '80', '10');
INSERT INTO `user_role_relation` VALUES ('99', '81', '10');
INSERT INTO `user_role_relation` VALUES ('100', '82', '10');
INSERT INTO `user_role_relation` VALUES ('101', '83', '10');
INSERT INTO `user_role_relation` VALUES ('102', '84', '10');
INSERT INTO `user_role_relation` VALUES ('103', '85', '10');
INSERT INTO `user_role_relation` VALUES ('104', '86', '10');
INSERT INTO `user_role_relation` VALUES ('105', '87', '10');
INSERT INTO `user_role_relation` VALUES ('106', '88', '10');
INSERT INTO `user_role_relation` VALUES ('107', '89', '10');
INSERT INTO `user_role_relation` VALUES ('108', '90', '10');
INSERT INTO `user_role_relation` VALUES ('109', '91', '10');
INSERT INTO `user_role_relation` VALUES ('110', '92', '10');
INSERT INTO `user_role_relation` VALUES ('111', '93', '10');
INSERT INTO `user_role_relation` VALUES ('112', '94', '10');
INSERT INTO `user_role_relation` VALUES ('113', '95', '10');
INSERT INTO `user_role_relation` VALUES ('114', '96', '10');
INSERT INTO `user_role_relation` VALUES ('115', '97', '10');
INSERT INTO `user_role_relation` VALUES ('116', '98', '10');
INSERT INTO `user_role_relation` VALUES ('117', '99', '10');
INSERT INTO `user_role_relation` VALUES ('118', '100', '10');
INSERT INTO `user_role_relation` VALUES ('119', '101', '10');
INSERT INTO `user_role_relation` VALUES ('120', '102', '10');
INSERT INTO `user_role_relation` VALUES ('121', '103', '10');
INSERT INTO `user_role_relation` VALUES ('122', '104', '10');
INSERT INTO `user_role_relation` VALUES ('123', '105', '10');
INSERT INTO `user_role_relation` VALUES ('124', '106', '10');
INSERT INTO `user_role_relation` VALUES ('125', '107', '10');
INSERT INTO `user_role_relation` VALUES ('126', '108', '10');
INSERT INTO `user_role_relation` VALUES ('127', '109', '10');
INSERT INTO `user_role_relation` VALUES ('128', '110', '10');
INSERT INTO `user_role_relation` VALUES ('129', '111', '10');
INSERT INTO `user_role_relation` VALUES ('130', '112', '10');
INSERT INTO `user_role_relation` VALUES ('131', '113', '10');
INSERT INTO `user_role_relation` VALUES ('132', '114', '10');
INSERT INTO `user_role_relation` VALUES ('133', '115', '10');
INSERT INTO `user_role_relation` VALUES ('134', '116', '10');
INSERT INTO `user_role_relation` VALUES ('135', '117', '10');
INSERT INTO `user_role_relation` VALUES ('136', '118', '10');
INSERT INTO `user_role_relation` VALUES ('137', '119', '10');
INSERT INTO `user_role_relation` VALUES ('138', '120', '10');
INSERT INTO `user_role_relation` VALUES ('139', '121', '10');
INSERT INTO `user_role_relation` VALUES ('140', '122', '10');
INSERT INTO `user_role_relation` VALUES ('141', '123', '10');
INSERT INTO `user_role_relation` VALUES ('142', '124', '10');
INSERT INTO `user_role_relation` VALUES ('143', '125', '10');
INSERT INTO `user_role_relation` VALUES ('144', '126', '10');
INSERT INTO `user_role_relation` VALUES ('145', '127', '10');
INSERT INTO `user_role_relation` VALUES ('146', '128', '10');
INSERT INTO `user_role_relation` VALUES ('147', '129', '10');
INSERT INTO `user_role_relation` VALUES ('148', '130', '10');
INSERT INTO `user_role_relation` VALUES ('149', '131', '10');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0=>from desktop; 1=>youtube',
  `isactive` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `showmaintv` int(2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', 'wfsfllk', 'aUW6w1OZLxQ', '1', '1', '1402926079', '0', '60');
INSERT INTO `video` VALUES ('4', 'dgf', 'j3BslT97fR4', '1', '1', '1402988918', '0', '60');
INSERT INTO `video` VALUES ('8', 'dssd', '9pXKObXS0lo', '1', '0', '1403079783', '0', '60');
INSERT INTO `video` VALUES ('9', 'szfdsf', 'i1To0p1Ncxo', '1', '0', '1403091618', '0', '60');
INSERT INTO `video` VALUES ('13', 'Video', 'hAjak0ygtkE', '1', '1', '1403260784', '0', '60');
INSERT INTO `video` VALUES ('15', 'Video', 'afUUBvWBp3I', '1', '1', '1403649794', '0', '60');
INSERT INTO `video` VALUES ('16', 'Video', '9pXKObXS0lo', '1', '1', '1403649801', '0', '60');
INSERT INTO `video` VALUES ('17', 'test123', 'toYmYo7YUjU', '1', '1', '1403866747', '0', '60');
INSERT INTO `video` VALUES ('18', 'ami', 'A_1t2Dkd2Io', '1', '1', '1403867478', '0', '60');
INSERT INTO `video` VALUES ('19', 'hhh', 'SUnobHHAKxo', '1', '1', '1403868385', '0', '60');
INSERT INTO `video` VALUES ('24', 'sdss', '1404918365.flv', '0', '1', '1404918373', '0', '60');
INSERT INTO `video` VALUES ('25', 'ddd', '1421836558.mp4', '0', '1', '1404971343', '1', '60');
INSERT INTO `video` VALUES ('26', 'Eminem', 'eJO5HU_7_1w', '1', '1', '1405991164', null, '60');
INSERT INTO `video` VALUES ('27', 'ss', 'step.mov', '0', '1', '1405991164', null, '60');
INSERT INTO `video` VALUES ('28', 'dsf', 'HeYlB9qTZtM', '1', '1', '1419244529', null, '60');

-- ----------------------------
-- Table structure for `video_comment`
-- ----------------------------
DROP TABLE IF EXISTS `video_comment`;
CREATE TABLE `video_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `body` text,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video_comment
-- ----------------------------
INSERT INTO `video_comment` VALUES ('182', '60', '24', ':):)\n', '1406210519');
INSERT INTO `video_comment` VALUES ('183', '60', '27', 'nhnkghkn\n', '1419243248');
INSERT INTO `video_comment` VALUES ('184', '60', '25', 'czxvzx\n', '1420700661');
INSERT INTO `video_comment` VALUES ('185', '60', '27', 'xcv\n', '1420709687');
INSERT INTO `video_comment` VALUES ('186', '60', '27', 'dfgvd \n', '1420709753');
INSERT INTO `video_comment` VALUES ('187', '60', '27', 'dsfs\n', '1420709755');
INSERT INTO `video_comment` VALUES ('188', '60', '27', 'dfg\n', '1420709758');
INSERT INTO `video_comment` VALUES ('189', '60', '27', 'xcv\n', '1420709761');
INSERT INTO `video_comment` VALUES ('190', '60', '28', '[POo{\n', '1420710731');
INSERT INTO `video_comment` VALUES ('191', '60', '28', ';\'\":\"\n', '1420710737');
INSERT INTO `video_comment` VALUES ('192', '60', '28', '\"\n\n\'', '1420710741');
INSERT INTO `video_comment` VALUES ('193', '60', '28', '\"\n', '1420710742');
INSERT INTO `video_comment` VALUES ('194', '60', '28', '\n', '1420710746');
INSERT INTO `video_comment` VALUES ('195', '60', '28', '\n\n\'', '1420710747');
INSERT INTO `video_comment` VALUES ('196', '60', '28', '\"\n\n\'\n', '1420710747');
INSERT INTO `video_comment` VALUES ('197', '60', '28', '\n\n\'\n', '1420710749');
INSERT INTO `video_comment` VALUES ('198', '60', '28', '\n', '1420710750');
INSERT INTO `video_comment` VALUES ('199', '60', '28', '\"\n', '1420710752');
INSERT INTO `video_comment` VALUES ('200', '60', '28', '\"', '1420710754');
INSERT INTO `video_comment` VALUES ('201', '60', '28', '\n\"', '1420710754');
INSERT INTO `video_comment` VALUES ('202', '60', '25', 'hjgh ghjg ghj\n', '1421134297');
INSERT INTO `video_comment` VALUES ('203', '60', '25', 'vhfg fgh', '1421134636');

-- ----------------------------
-- Table structure for `video_like`
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video_like
-- ----------------------------
INSERT INTO `video_like` VALUES ('30', '24', '60');

-- ----------------------------
-- Table structure for `vote`
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) DEFAULT NULL,
  `ans_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES ('1', '7', '1', '57', '0');
INSERT INTO `vote` VALUES ('2', '7', '1', '57', '0');
INSERT INTO `vote` VALUES ('3', '21', '26', '57', '0');
INSERT INTO `vote` VALUES ('4', '23', '31', '57', '0');
INSERT INTO `vote` VALUES ('9', '12', '18', '72', '1404902298');
INSERT INTO `vote` VALUES ('10', '7', '1', '72', '1404902288');
INSERT INTO `vote` VALUES ('11', '1', '4', '72', '1404902429');
INSERT INTO `vote` VALUES ('12', '11', '15', '72', '1404902383');
INSERT INTO `vote` VALUES ('13', '10', '5', '72', '1404902331');
INSERT INTO `vote` VALUES ('17', '3', '35', '60', '1419845765');

-- ----------------------------
-- View structure for `vw_video`
-- ----------------------------
DROP VIEW IF EXISTS `vw_video`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_video` AS select `status`.`value` AS `value`,`video`.`name` AS `name` from (`status` join `video`) where ((`status`.`type` = 'video') and (`status`.`is_active` = 1) and (`status`.`share_with` = 1) and (`video`.`isactive` = 1)) ;

-- ----------------------------
-- Procedure structure for `common2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `common2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `common2`(tablename VARCHAR(50),attr_name VARCHAR(50),pk VARCHAR(255),i_block_id BIGINT(20))
BEGIN

set @i_count = 0;

set @sql_text = concat('SELECT COUNT(',pk,') INTO  @i_count FROM ',tablename, ' WHERE ',attr_name,'=1 AND ',pk,'=',i_block_id);

prepare statement from @sql_text;


    execute statement;
#deallocate prepare statement; 

IF (@i_count=1) THEN
set @sql_text1 = concat('UPDATE ',tablename, '  SET ',attr_name,'=0 WHERE ',attr_name,'=1 AND ',pk,'=',i_block_id);
prepare statement1 from @sql_text1;
    execute statement1;
#deallocate prepare statement; 
   ELSE
set @sql_text2 = concat('UPDATE ',tablename, ' SET ',attr_name,'=1 WHERE ',attr_name,'=0 AND ',pk,'=',i_block_id);
prepare statement2 from @sql_text2;
    execute statement2;
#deallocate prepare statement; 

   END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `SEC_TO_BIGTIME`
-- ----------------------------
DROP FUNCTION IF EXISTS `SEC_TO_BIGTIME`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SEC_TO_BIGTIME`(sec INT) RETURNS char(10) CHARSET latin1
    DETERMINISTIC
BEGIN
    SET @h = sec DIV 3600;
    SET @m = sec DIV 60 MOD 60;
    SET @s = sec MOD 60;

    RETURN CONCAT(
          LPAD(@h, 2, '0'),
          ':',
          LPAD(@m, 2, '0'),
          ':',
          LPAD(@s, 2, '0')
      );

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `deleteall`;
DELIMITER ;;
CREATE TRIGGER `deleteall` BEFORE DELETE ON `addvertise` FOR EACH ROW BEGIN

DELETE FROM advertise_page_relation WHERE advertise_page_relation.advertise_id = OLD.id ; 
DELETE FROM advertise_area_relation WHERE advertise_area_relation.advertise_id = OLD.id ; 
DELETE FROM advertise_sport_page_relation WHERE advertise_sport_page_relation.adv_id = OLD.id;
DELETE FROM advertise_sports_relation WHERE advertise_sports_relation.adv_id = OLD.id;


END
;;
DELIMITER ;
