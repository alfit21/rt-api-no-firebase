/*
Navicat MySQL Data Transfer

Source Server         : 7
Source Server Version : 50505
Source Host           : localhost:3308
Source Database       : pemilihan-rt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-11-24 10:45:28
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
INSERT INTO `calonrt` VALUES ('1', 'xxx', '0', 'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png');
INSERT INTO `calonrt` VALUES ('2', 'yyy', '1', 'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png');
INSERT INTO `calonrt` VALUES ('3', 'zzz', '2', 'https://cdn.pixabay.com/photo/2017/03/01/22/18/avatar-2109804_960_720.png');

-- ----------------------------
-- Table structure for pemilih
-- ----------------------------
DROP TABLE IF EXISTS `pemilih`;
CREATE TABLE `pemilih` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pilih` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of pemilih
-- ----------------------------
INSERT INTO `pemilih` VALUES ('47', 'alfit', '3');
INSERT INTO `pemilih` VALUES ('48', 'anti', '2');
INSERT INTO `pemilih` VALUES ('49', 'ngatno', '3');
INSERT INTO `pemilih` VALUES ('51', '1', '0');
INSERT INTO `pemilih` VALUES ('52', '2', '0');
INSERT INTO `pemilih` VALUES ('53', '3', '0');
INSERT INTO `pemilih` VALUES ('54', '4', '0');
INSERT INTO `pemilih` VALUES ('55', '5', '0');
INSERT INTO `pemilih` VALUES ('56', '6', '0');
INSERT INTO `pemilih` VALUES ('57', '8', '0');
INSERT INTO `pemilih` VALUES ('58', '9', '0');
INSERT INTO `pemilih` VALUES ('59', '10', '0');
INSERT INTO `pemilih` VALUES ('60', '12', '0');
INSERT INTO `pemilih` VALUES ('61', '15', '0');
INSERT INTO `pemilih` VALUES ('62', '18', '0');
INSERT INTO `pemilih` VALUES ('63', '19', '0');
INSERT INTO `pemilih` VALUES ('64', '20', '0');
INSERT INTO `pemilih` VALUES ('65', '21', '0');
INSERT INTO `pemilih` VALUES ('66', '22', '0');
INSERT INTO `pemilih` VALUES ('67', '23', '0');
INSERT INTO `pemilih` VALUES ('68', '24', '0');
INSERT INTO `pemilih` VALUES ('69', '24', '0');
INSERT INTO `pemilih` VALUES ('70', '22', '0');
