/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-10-23 10:03:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_columns
-- ----------------------------
DROP TABLE IF EXISTS `db_columns`;
CREATE TABLE `db_columns` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `sche` varchar(50) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `colname` varchar(100) DEFAULT NULL,
  `coltype` varchar(100) DEFAULT NULL,
  `clength` varchar(20) DEFAULT NULL,
  `related` varchar(300) DEFAULT NULL,
  `ccomment` varchar(300) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=3402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for db_commons
-- ----------------------------
DROP TABLE IF EXISTS `db_commons`;
CREATE TABLE `db_commons` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dbtype` varchar(30) DEFAULT NULL,
  `dbname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for db_tables
-- ----------------------------
DROP TABLE IF EXISTS `db_tables`;
CREATE TABLE `db_tables` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `sche` varchar(50) DEFAULT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `profunc` varchar(300) DEFAULT NULL,
  `tcomment` varchar(300) DEFAULT NULL,
  `related` varchar(300) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=1789 DEFAULT CHARSET=utf8;
