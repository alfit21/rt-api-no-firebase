/*
Navicat MySQL Data Transfer

Source Server         : 7
Source Server Version : 50505
Source Host           : localhost:3308
Source Database       : pemilihan-rt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-11-19 16:55:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for calonrt
-- ----------------------------
DROP TABLE IF EXISTS `calonrt`;
CREATE TABLE `calonrt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `poin` int(255) NOT NULL DEFAULT 0,
  `urlgambar` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of calonrt
-- ----------------------------
INSERT INTO `calonrt` VALUES ('1', 'xxx', '1', 'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png');
INSERT INTO `calonrt` VALUES ('2', 'yyy', '2', 'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png');
INSERT INTO `calonrt` VALUES ('3', 'zzz', '1', 'https://cdn.pixabay.com/photo/2017/03/01/22/18/avatar-2109804_960_720.png');

-- ----------------------------
-- Table structure for poin
-- ----------------------------
DROP TABLE IF EXISTS `poin`;
CREATE TABLE `poin` (
  `id` int(11) NOT NULL,
  `totalpoin` int(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of poin
-- ----------------------------
INSERT INTO `poin` VALUES ('1', '4');
