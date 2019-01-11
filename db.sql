/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.6.17 : Database - mydb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;

USE `mydb`;

/*Table structure for table `db_columns` */

DROP TABLE IF EXISTS `db_columns`;

CREATE TABLE `db_columns` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `sche` varchar(50) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `colname` varchar(100) DEFAULT NULL,
  `coltype` varchar(100) DEFAULT NULL,
  `isnull` varchar(10) DEFAULT NULL,
  `clength` varchar(20) DEFAULT NULL,
  `related` varchar(300) DEFAULT NULL,
  `ccomment` varchar(300) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `db_commons` */

DROP TABLE IF EXISTS `db_commons`;

CREATE TABLE `db_commons` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dbtype` varchar(30) DEFAULT NULL,
  `dbname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `db_tables` */

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
