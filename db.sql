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
) ENGINE=InnoDB AUTO_INCREMENT=3040 DEFAULT CHARSET=utf8;

/*Data for the table `db_columns` */

insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3000,'myhome','mh_homes','ids','int','NO',NULL,NULL,'主键',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3001,'myhome','mh_homes','hcode','varchar','YES','100',NULL,'编号',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3002,'myhome','mh_homes','hname','varchar','YES','50',NULL,'名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3003,'myhome','mh_homes','status','int','YES',NULL,NULL,'有效标志',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3004,'myhome','mh_homes','createtime','datetime','YES',NULL,NULL,'创建日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3005,'myhome','mh_homes','creator','int','YES',NULL,NULL,'创建人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3006,'myhome','mh_homes','createname','varchar','YES','50',NULL,'创建人名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3007,'myhome','mh_homes','updatetime','datetime','YES',NULL,NULL,'修改日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3008,'myhome','mh_homes','updator','int','YES',NULL,NULL,'修改人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3009,'myhome','mh_homes','updatename','varchar','YES','50',NULL,'修改人名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3010,'myhome','mh_datebook','ids','int','NO',NULL,NULL,'主键',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3011,'myhome','mh_datebook','userid','int','YES',NULL,NULL,'用户id',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3012,'myhome','mh_datebook','title','varchar','YES','100',NULL,'事件主题',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3013,'myhome','mh_datebook','detail','varchar','YES','500',NULL,'事件详情',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3014,'myhome','mh_datebook','happend','datetime','YES',NULL,NULL,'发生日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3015,'myhome','mh_datebook','remarks','int','YES',NULL,NULL,'重要等级',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3016,'myhome','mh_datebook','backup1','varchar','YES','100',NULL,'备用字段1',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3017,'myhome','mh_datebook','backup2','varchar','YES','100',NULL,'备用字段2',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3018,'myhome','mh_datebook','status','int','YES',NULL,NULL,'有效标志',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3019,'myhome','mh_datebook','createtime','datetime','YES',NULL,NULL,'创建日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3020,'myhome','mh_datebook','creator','int','YES',NULL,NULL,'创建人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3021,'myhome','mh_datebook','createname','varchar','YES','50',NULL,'创建人名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3022,'myhome','mh_datebook','updatetime','datetime','YES',NULL,NULL,'修改日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3023,'myhome','mh_datebook','updator','int','YES',NULL,NULL,'修改人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3024,'myhome','mh_datebook','updatename','varchar','YES','50',NULL,'修改人名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3025,'myhome','mh_users','ids','int','NO',NULL,NULL,'主键',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3026,'myhome','mh_users','uname','varchar','YES','50',NULL,'用户名',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3027,'myhome','mh_users','pword','varchar','YES','50',NULL,'密码',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3028,'myhome','mh_users','rname','varchar','YES','50',NULL,'姓名',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3029,'myhome','mh_users','pic','varchar','YES','100',NULL,'头像',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3030,'myhome','mh_users','userType','int','YES',NULL,NULL,'用户类型: 1,超级管理员; 0:普通用户',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3031,'myhome','mh_users','homeid','int','YES',NULL,NULL,'家庭id',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3032,'myhome','mh_users','setups','int','YES',NULL,NULL,'启用,禁用状态',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3033,'myhome','mh_users','status','int','YES',NULL,NULL,'有效标志',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3034,'myhome','mh_users','createtime','datetime','YES',NULL,NULL,'创建日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3035,'myhome','mh_users','creator','int','YES',NULL,NULL,'创建人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3036,'myhome','mh_users','createname','varchar','YES','50',NULL,'创建人名称',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3037,'myhome','mh_users','updatetime','datetime','YES',NULL,NULL,'修改日期',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3038,'myhome','mh_users','updator','int','YES',NULL,NULL,'修改人',NULL);
insert  into `db_columns`(`ids`,`sche`,`tname`,`colname`,`coltype`,`isnull`,`clength`,`related`,`ccomment`,`note`) values (3039,'myhome','mh_users','updatename','varchar','YES','50',NULL,'修改人名称',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `db_commons` */

insert  into `db_commons`(`ids`,`username`,`password`,`address`,`dbtype`,`dbname`) values (3,'root','123456','localhost','mysql','stms');
insert  into `db_commons`(`ids`,`username`,`password`,`address`,`dbtype`,`dbname`) values (4,'root','123456','localhost','mysql','k_sms');
insert  into `db_commons`(`ids`,`username`,`password`,`address`,`dbtype`,`dbname`) values (5,'root','123456','localhost','mysql','myhome');

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
) ENGINE=InnoDB AUTO_INCREMENT=1432 DEFAULT CHARSET=utf8;

/*Data for the table `db_tables` */

insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1413,'myhome','mh_datebook','2018-12-16 10:17:41',NULL,'大事记表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1414,'myhome','mh_dict','2018-11-25 10:09:03',NULL,'数据字典表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1415,'myhome','mh_education','2018-11-25 10:09:03',NULL,'教育经历信息',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1416,'myhome','mh_finance','2018-11-25 10:09:03',NULL,'财务信息记录表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1417,'myhome','mh_folder','2018-11-25 10:09:03',NULL,'文件夹信息',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1418,'myhome','mh_home_member','2018-11-25 10:09:03',NULL,'家庭成员信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1419,'myhome','mh_homes','2018-11-25 10:09:03',NULL,'家庭信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1420,'myhome','mh_medias','2018-11-25 10:09:03',NULL,'用户文件表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1421,'myhome','mh_menu','2018-12-28 22:20:25',NULL,'系统菜单表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1422,'myhome','mh_notebook','2018-11-25 10:09:03',NULL,'留言信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1423,'myhome','mh_pword_his','2018-11-25 10:09:03',NULL,'历史密码信息',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1424,'myhome','mh_travel','2018-12-16 10:49:44',NULL,'家庭旅行计划表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1425,'myhome','mh_user_member','2018-11-25 10:09:03',NULL,'用户成员表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1426,'myhome','mh_user_menu','2018-11-25 10:09:03',NULL,'用户菜单表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1427,'myhome','mh_users','2018-12-16 16:09:41',NULL,'系统用户表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1428,'myhome','mh_users_info','2018-11-25 10:09:03',NULL,'用户信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1429,'myhome','mh_web_account','2018-11-25 10:09:03',NULL,'网站账号信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1430,'myhome','mh_webinfo','2018-11-25 10:09:03',NULL,'网站信息表',NULL,NULL);
insert  into `db_tables`(`ids`,`sche`,`tname`,`ctime`,`profunc`,`tcomment`,`related`,`note`) values (1431,'myhome','mh_works','2018-11-25 10:09:03',NULL,'工作经历记录',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
