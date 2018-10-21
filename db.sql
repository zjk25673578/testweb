/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-10-21 22:38:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_columns`
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
) ENGINE=InnoDB AUTO_INCREMENT=2923 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_columns
-- ----------------------------
INSERT INTO `db_columns` VALUES ('2536', 'stms', 'co_menu', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2537', 'stms', 'co_menu', 'parent_id', 'varchar', '64', null, '父ID', null);
INSERT INTO `db_columns` VALUES ('2538', 'stms', 'co_menu', 'menu_name', 'varchar', '32', null, '菜单名称', null);
INSERT INTO `db_columns` VALUES ('2539', 'stms', 'co_menu', 'permission', 'varchar', '64', 'ngcvhgh', '权限代码', '巨化股份韩国和美国吃饭唱歌发现赶赴现场火车');
INSERT INTO `db_columns` VALUES ('2540', 'stms', 'co_menu', 'url', 'varchar', '128', null, '功能url', null);
INSERT INTO `db_columns` VALUES ('2541', 'stms', 'co_menu', 'icon', 'varchar', '32', 'safwdgfwsdfw', '图标类型', '测试测试啊列的备注');
INSERT INTO `db_columns` VALUES ('2542', 'stms', 'co_menu', 'type', 'tinyint', null, null, '菜单类型（0：菜单；1：按钮；2：表头）', null);
INSERT INTO `db_columns` VALUES ('2543', 'stms', 'co_menu', 'next_type', 'tinyint', null, null, '下级菜单类型（0：菜单；1：按钮/表头）', null);
INSERT INTO `db_columns` VALUES ('2544', 'stms', 'co_menu', 'btn_name', 'varchar', '16', null, '按钮名称', null);
INSERT INTO `db_columns` VALUES ('2545', 'stms', 'co_menu', 'col_field', 'varchar', '32', null, '字段名', null);
INSERT INTO `db_columns` VALUES ('2546', 'stms', 'co_menu', 'col_title', 'varchar', '16', null, '标题名称', null);
INSERT INTO `db_columns` VALUES ('2547', 'stms', 'co_menu', 'col_width', 'varchar', '8', null, '列宽', null);
INSERT INTO `db_columns` VALUES ('2548', 'stms', 'co_menu', 'col_templet', 'varchar', '32', null, '列模板', null);
INSERT INTO `db_columns` VALUES ('2549', 'stms', 'co_menu', 'data_type', 'tinyint', null, null, '数据类型（0：个人；1：所属部门；2：所属部门及下属部门；3：全公司）', null);
INSERT INTO `db_columns` VALUES ('2550', 'stms', 'co_menu', 'sort', 'tinyint', null, null, '排序号', null);
INSERT INTO `db_columns` VALUES ('2551', 'stms', 'co_menu', 'remark', 'varchar', '64', null, '备注', null);
INSERT INTO `db_columns` VALUES ('2552', 'stms', 'co_menu', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2553', 'stms', 'co_menu', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2554', 'stms', 'co_menu', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2555', 'stms', 'co_menu', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2556', 'stms', 'co_menu', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2557', 'stms', 'co_role', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2558', 'stms', 'co_role', 'role_name', 'varchar', '32', null, '角色名称', null);
INSERT INTO `db_columns` VALUES ('2559', 'stms', 'co_role', 'permission', 'varchar', '64', null, '权限代码', null);
INSERT INTO `db_columns` VALUES ('2560', 'stms', 'co_role', 'role_status', 'tinyint', null, null, '角色状态/是否启用（0：禁用；1：启用）', null);
INSERT INTO `db_columns` VALUES ('2561', 'stms', 'co_role', 'remark', 'varchar', '64', null, '备注', null);
INSERT INTO `db_columns` VALUES ('2562', 'stms', 'co_role', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2563', 'stms', 'co_role', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2564', 'stms', 'co_role', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2565', 'stms', 'co_role', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2566', 'stms', 'co_role', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2567', 'stms', 'st_company_change', 'id', 'bigint', null, null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2568', 'stms', 'st_company_change', 'company_id', 'varchar', '64', null, '企业信息id', null);
INSERT INTO `db_columns` VALUES ('2569', 'stms', 'st_company_change', 'change_time', 'varchar', '16', null, '变更时间', null);
INSERT INTO `db_columns` VALUES ('2570', 'stms', 'st_company_change', 'change_project', 'varchar', '32', null, '变更项目', null);
INSERT INTO `db_columns` VALUES ('2571', 'stms', 'st_company_change', 'change_before', 'varchar', '32', null, '变更前', null);
INSERT INTO `db_columns` VALUES ('2572', 'stms', 'st_company_change', 'change_after', 'varchar', '32', null, '变更后', null);
INSERT INTO `db_columns` VALUES ('2573', 'stms', 'st_company_change', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2574', 'stms', 'st_company_change', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2575', 'stms', 'st_company_change', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2576', 'stms', 'st_achievement_paper', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2577', 'stms', 'st_achievement_paper', 'company_id', 'varchar', '64', null, '企业id', null);
INSERT INTO `db_columns` VALUES ('2578', 'stms', 'st_achievement_paper', 'user_id', 'varchar', '64', null, '用户id', null);
INSERT INTO `db_columns` VALUES ('2579', 'stms', 'st_achievement_paper', 'paper_name', 'varchar', '32', null, '论文著作名称', null);
INSERT INTO `db_columns` VALUES ('2580', 'stms', 'st_achievement_paper', 'paper_no', 'varchar', '32', null, '系统编号', null);
INSERT INTO `db_columns` VALUES ('2581', 'stms', 'st_achievement_paper', 'paper_level', 'char', '1', null, '论文级别（0：T特种刊物；1：A权威核心刊物；2：B重要核心刊物；3：C一般核心刊物；4：D一般公开刊物；5：E受限公开刊物）', null);
INSERT INTO `db_columns` VALUES ('2582', 'stms', 'st_achievement_paper', 'paper_type', 'char', '1', null, '文献类型（0：J期刊文章；1：M著作；2：C论文集；3：D学位论文；4：S国际、国家标准；5：P专利；6：电子文献；7：未定义类型的文献）', null);
INSERT INTO `db_columns` VALUES ('2583', 'stms', 'st_achievement_paper', 'summary', 'varchar', '2048', null, '论文著作简介', null);
INSERT INTO `db_columns` VALUES ('2584', 'stms', 'st_achievement_paper', 'approve_status', 'tinyint', null, null, '是否获批（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2585', 'stms', 'st_achievement_paper', 'journal_name', 'varchar', '32', null, '期刊报纸名称', null);
INSERT INTO `db_columns` VALUES ('2586', 'stms', 'st_achievement_paper', 'paper_page', 'varchar', '16', null, '卷期页', null);
INSERT INTO `db_columns` VALUES ('2587', 'stms', 'st_achievement_paper', 'factor', 'varchar', '32', null, '影响因子', null);
INSERT INTO `db_columns` VALUES ('2588', 'stms', 'st_achievement_paper', 'publish_date', 'varchar', '32', null, '', null);
INSERT INTO `db_columns` VALUES ('2589', 'stms', 'st_achievement_paper', 'process', 'tinyint', null, null, '项目进程（0：申请中；1：已获批）', null);
INSERT INTO `db_columns` VALUES ('2590', 'stms', 'st_achievement_paper', 'share_status', 'tinyint', null, null, '分享状态（0：未分享；1：已分享）', null);
INSERT INTO `db_columns` VALUES ('2591', 'stms', 'st_achievement_paper', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2592', 'stms', 'st_achievement_paper', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2593', 'stms', 'st_achievement_paper', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2594', 'stms', 'st_achievement_paper', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2595', 'stms', 'st_achievement_paper', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2596', 'k_sms', 'qrtz_blob_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2597', 'k_sms', 'qrtz_blob_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2598', 'k_sms', 'qrtz_blob_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2599', 'k_sms', 'qrtz_blob_triggers', 'BLOB_DATA', 'blob', '65535', null, '', null);
INSERT INTO `db_columns` VALUES ('2600', 'k_sms', 'qrtz_calendars', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2601', 'k_sms', 'qrtz_calendars', 'CALENDAR_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2602', 'k_sms', 'qrtz_calendars', 'CALENDAR', 'blob', '65535', null, '', null);
INSERT INTO `db_columns` VALUES ('2603', 'k_sms', 'qrtz_cron_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2604', 'k_sms', 'qrtz_cron_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2605', 'k_sms', 'qrtz_cron_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2606', 'k_sms', 'qrtz_cron_triggers', 'CRON_EXPRESSION', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2607', 'k_sms', 'qrtz_cron_triggers', 'TIME_ZONE_ID', 'varchar', '80', null, '', null);
INSERT INTO `db_columns` VALUES ('2608', 'k_sms', 'qrtz_fired_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2609', 'k_sms', 'qrtz_fired_triggers', 'ENTRY_ID', 'varchar', '95', null, '', null);
INSERT INTO `db_columns` VALUES ('2610', 'k_sms', 'qrtz_fired_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2611', 'k_sms', 'qrtz_fired_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2612', 'k_sms', 'qrtz_fired_triggers', 'INSTANCE_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2613', 'k_sms', 'qrtz_fired_triggers', 'FIRED_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2614', 'k_sms', 'qrtz_fired_triggers', 'SCHED_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2615', 'k_sms', 'qrtz_fired_triggers', 'PRIORITY', 'int', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2616', 'k_sms', 'qrtz_fired_triggers', 'STATE', 'varchar', '16', null, '', null);
INSERT INTO `db_columns` VALUES ('2617', 'k_sms', 'qrtz_fired_triggers', 'JOB_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2618', 'k_sms', 'qrtz_fired_triggers', 'JOB_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2619', 'k_sms', 'qrtz_fired_triggers', 'IS_NONCONCURRENT', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2620', 'k_sms', 'qrtz_fired_triggers', 'REQUESTS_RECOVERY', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2621', 'k_sms', 'qrtz_job_details', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2622', 'k_sms', 'qrtz_job_details', 'JOB_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2623', 'k_sms', 'qrtz_job_details', 'JOB_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2624', 'k_sms', 'qrtz_job_details', 'DESCRIPTION', 'varchar', '250', null, '', null);
INSERT INTO `db_columns` VALUES ('2625', 'k_sms', 'qrtz_job_details', 'JOB_CLASS_NAME', 'varchar', '250', null, '', null);
INSERT INTO `db_columns` VALUES ('2626', 'k_sms', 'qrtz_job_details', 'IS_DURABLE', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2627', 'k_sms', 'qrtz_job_details', 'IS_NONCONCURRENT', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2628', 'k_sms', 'qrtz_job_details', 'IS_UPDATE_DATA', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2629', 'k_sms', 'qrtz_job_details', 'REQUESTS_RECOVERY', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2630', 'k_sms', 'qrtz_job_details', 'JOB_DATA', 'blob', '65535', null, '', null);
INSERT INTO `db_columns` VALUES ('2631', 'k_sms', 'qrtz_locks', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2632', 'k_sms', 'qrtz_locks', 'LOCK_NAME', 'varchar', '40', null, '', null);
INSERT INTO `db_columns` VALUES ('2633', 'k_sms', 'qrtz_paused_trigger_grps', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2634', 'k_sms', 'qrtz_paused_trigger_grps', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2635', 'k_sms', 'qrtz_simple_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2636', 'k_sms', 'qrtz_simple_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2637', 'k_sms', 'qrtz_simple_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2638', 'k_sms', 'qrtz_simple_triggers', 'REPEAT_COUNT', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2639', 'k_sms', 'qrtz_simple_triggers', 'REPEAT_INTERVAL', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2640', 'k_sms', 'qrtz_simple_triggers', 'TIMES_TRIGGERED', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2641', 'k_sms', 'qrtz_scheduler_state', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2642', 'k_sms', 'qrtz_scheduler_state', 'INSTANCE_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2643', 'k_sms', 'qrtz_scheduler_state', 'LAST_CHECKIN_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2644', 'k_sms', 'qrtz_scheduler_state', 'CHECKIN_INTERVAL', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2645', 'stms', 'st_project_dispatch', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2646', 'stms', 'st_project_dispatch', 'project_id', 'varchar', '64', null, '项目id', null);
INSERT INTO `db_columns` VALUES ('2647', 'stms', 'st_project_dispatch', 'real_dispatch_date', 'varchar', '16', null, '实际调度日期', null);
INSERT INTO `db_columns` VALUES ('2648', 'stms', 'st_project_dispatch', 'invest', 'decimal', null, null, '已投入资金', null);
INSERT INTO `db_columns` VALUES ('2649', 'stms', 'st_project_dispatch', 'complete_word', 'varchar', '1024', null, '已完成工作内容', null);
INSERT INTO `db_columns` VALUES ('2650', 'stms', 'st_project_dispatch', 'next_plan', 'varchar', '2048', null, '下一步工作计划', null);
INSERT INTO `db_columns` VALUES ('2651', 'stms', 'st_project_dispatch', 'solution', 'varchar', '3072', null, '存在问题及解决措施', null);
INSERT INTO `db_columns` VALUES ('2652', 'stms', 'st_project_dispatch', 'new_status', 'tinyint', null, null, '是否最新数据（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2653', 'stms', 'st_project_dispatch', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2654', 'stms', 'st_project_dispatch', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2655', 'stms', 'st_project_dispatch', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2656', 'stms', 'st_project_dispatch', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2657', 'stms', 'st_project_dispatch', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2658', 'stms', 'co_role_menu', 'id', 'bigint', null, null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2659', 'stms', 'co_role_menu', 'role_id', 'varchar', '64', null, '角色id', null);
INSERT INTO `db_columns` VALUES ('2660', 'stms', 'co_role_menu', 'menu_id', 'varchar', '64', null, '菜单id', null);
INSERT INTO `db_columns` VALUES ('2661', 'stms', 'co_role_menu', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2662', 'stms', 'co_role_menu', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2663', 'stms', 'co_role_menu', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2664', 'stms', 'sys_finddict', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2665', 'stms', 'sys_finddict', 'parent_id', 'varchar', '64', null, '父ID', null);
INSERT INTO `db_columns` VALUES ('2666', 'stms', 'sys_finddict', 'dict_no', 'varchar', '16', null, '数据编号', null);
INSERT INTO `db_columns` VALUES ('2667', 'stms', 'sys_finddict', 'dict_name', 'varchar', '32', null, '数据名称', null);
INSERT INTO `db_columns` VALUES ('2668', 'stms', 'sys_finddict', 'dict_type', 'varchar', '32', null, '数据类型', null);
INSERT INTO `db_columns` VALUES ('2669', 'stms', 'sys_finddict', 'sort', 'smallint', null, null, '排序号', null);
INSERT INTO `db_columns` VALUES ('2670', 'stms', 'sys_finddict', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2671', 'stms', 'sys_finddict', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2672', 'stms', 'sys_finddict', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2673', 'stms', 'sys_finddict', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2674', 'stms', 'sys_finddict', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2675', 'stms', 'k_sms_template', 'id', 'varchar', '255', null, '短信模板id', null);
INSERT INTO `db_columns` VALUES ('2676', 'stms', 'k_sms_template', 'tempId', 'varchar', '255', null, '模板ID', null);
INSERT INTO `db_columns` VALUES ('2677', 'stms', 'k_sms_template', 'subject', 'varchar', '255', null, '模板主题', null);
INSERT INTO `db_columns` VALUES ('2678', 'stms', 'k_sms_template', 'content', 'varchar', '1000', null, '模板内容', null);
INSERT INTO `db_columns` VALUES ('2679', 'stms', 'k_sms_template', 'state', 'varchar', '255', null, '表状态', null);
INSERT INTO `db_columns` VALUES ('2680', 'stms', 'k_sms_template', 'create_time', 'varchar', '255', null, '', null);
INSERT INTO `db_columns` VALUES ('2681', 'stms', 'k_sms_template', 'create_name', 'varchar', '255', null, '', null);
INSERT INTO `db_columns` VALUES ('2682', 'stms', 'k_sms_template', 'update_time', 'varchar', '255', null, '', null);
INSERT INTO `db_columns` VALUES ('2683', 'stms', 'k_sms_template', 'update_name', 'varchar', '255', null, '', null);
INSERT INTO `db_columns` VALUES ('2684', 'stms', 'import_company_activity', 'id', 'varchar', '64', null, '标示', null);
INSERT INTO `db_columns` VALUES ('2685', 'stms', 'import_company_activity', 'company_id', 'varchar', '64', null, '客户id', null);
INSERT INTO `db_columns` VALUES ('2686', 'stms', 'import_company_activity', 'company_name', 'varchar', '64', null, '客户名称', null);
INSERT INTO `db_columns` VALUES ('2687', 'stms', 'import_company_activity', 'project_year', 'varchar', '32', null, '发布时间', null);
INSERT INTO `db_columns` VALUES ('2688', 'stms', 'import_company_activity', 'project_level', 'varchar', '32', null, '级别(参照name为projectLevel的字典值)', null);
INSERT INTO `db_columns` VALUES ('2689', 'stms', 'import_company_activity', 'branch_no', 'varchar', '32', null, '部门（参照name为branchNo的字典值）', null);
INSERT INTO `db_columns` VALUES ('2690', 'stms', 'import_company_activity', 'project_type', 'varchar', '32', null, '项目类别（参照name为projectType的字典值）', null);
INSERT INTO `db_columns` VALUES ('2691', 'stms', 'import_company_activity', 'detail_type', 'varchar', '64', null, '具体类别', null);
INSERT INTO `db_columns` VALUES ('2692', 'stms', 'import_company_activity', 'project_name', 'varchar', '128', null, '项目名称', null);
INSERT INTO `db_columns` VALUES ('2693', 'stms', 'import_company_activity', 'is_approval', 'varchar', '32', null, '公示/评价（参照name为isApproval的字典值）', null);
INSERT INTO `db_columns` VALUES ('2694', 'stms', 'import_company_activity', 'investment', 'decimal', null, null, '项目投资', null);
INSERT INTO `db_columns` VALUES ('2695', 'stms', 'import_company_activity', 'field', 'varchar', '32', null, '领域', null);
INSERT INTO `db_columns` VALUES ('2696', 'stms', 'import_company_activity', 'technical_level', 'varchar', '32', null, '技术水平', null);
INSERT INTO `db_columns` VALUES ('2697', 'stms', 'import_company_activity', 'file_name', 'varchar', '128', null, '附件名称', null);
INSERT INTO `db_columns` VALUES ('2698', 'stms', 'import_company_activity', 'file_url', 'varchar', '255', null, '附件路径', null);
INSERT INTO `db_columns` VALUES ('2699', 'stms', 'import_company_activity', 'remark', 'varchar', '256', null, '备注', null);
INSERT INTO `db_columns` VALUES ('2700', 'stms', 'import_company_activity', 'state', 'char', '1', null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2701', 'stms', 'import_company_activity', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2702', 'stms', 'import_company_activity', 'create_time', 'varchar', '32', null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2703', 'stms', 'import_company_activity', 'update_name', 'varchar', '32', null, '更新人', null);
INSERT INTO `db_columns` VALUES ('2704', 'stms', 'import_company_activity', 'update_time', 'varchar', '32', null, '更新时间', null);
INSERT INTO `db_columns` VALUES ('2705', 'stms', 'st_gover_project_suspend', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2706', 'stms', 'st_gover_project_suspend', 'project_id', 'varchar', '64', null, '项目id', null);
INSERT INTO `db_columns` VALUES ('2707', 'stms', 'st_gover_project_suspend', 'reason', 'varchar', '5120', null, '终止原因', null);
INSERT INTO `db_columns` VALUES ('2708', 'stms', 'st_gover_project_suspend', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2709', 'stms', 'st_gover_project_suspend', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2710', 'stms', 'st_gover_project_suspend', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2711', 'stms', 'st_gover_project_suspend', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2712', 'stms', 'st_gover_project_suspend', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2713', 'stms', 'st_gover_project_finish', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2714', 'stms', 'st_gover_project_finish', 'project_id', 'varchar', '64', null, '项目id', null);
INSERT INTO `db_columns` VALUES ('2715', 'stms', 'st_gover_project_finish', 'real_complete_date', 'varchar', '16', null, '实际完成日期', null);
INSERT INTO `db_columns` VALUES ('2716', 'stms', 'st_gover_project_finish', 'situation', 'varchar', '2048', null, '项目完成情况', null);
INSERT INTO `db_columns` VALUES ('2717', 'stms', 'st_gover_project_finish', 'real_amount', 'decimal', null, null, '实际经费', null);
INSERT INTO `db_columns` VALUES ('2718', 'stms', 'st_gover_project_finish', 'indenpend_amount', 'decimal', null, null, '自筹', null);
INSERT INTO `db_columns` VALUES ('2719', 'stms', 'st_gover_project_finish', 'gover_amount', 'decimal', null, null, '申请政府资金', null);
INSERT INTO `db_columns` VALUES ('2720', 'stms', 'st_gover_project_finish', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2721', 'stms', 'st_gover_project_finish', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2722', 'stms', 'st_gover_project_finish', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2723', 'stms', 'st_gover_project_finish', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2724', 'stms', 'st_gover_project_finish', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2725', 'stms', 'st_company_three_finance', 'id', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2726', 'stms', 'st_company_three_finance', 'company_id', 'varchar', '64', null, '企业信息id', null);
INSERT INTO `db_columns` VALUES ('2727', 'stms', 'st_company_three_finance', 'year', 'varchar', '16', null, '', null);
INSERT INTO `db_columns` VALUES ('2728', 'stms', 'st_company_three_finance', 'business_income', 'decimal', null, null, '主要业务收入（万元）', null);
INSERT INTO `db_columns` VALUES ('2729', 'stms', 'st_company_three_finance', 'profit', 'decimal', null, null, '利润总额（万元）', null);
INSERT INTO `db_columns` VALUES ('2730', 'stms', 'st_company_three_finance', 'research_develop', 'decimal', null, null, '研究开发费用投入总额（万元）', null);
INSERT INTO `db_columns` VALUES ('2731', 'stms', 'st_company_three_finance', 'high_tech_income', 'decimal', null, null, '高新技术产品（服务）收入（万元）', null);
INSERT INTO `db_columns` VALUES ('2732', 'stms', 'st_company_three_finance', 'paid_in_capital', 'decimal', null, null, '实收资本（万元）', null);
INSERT INTO `db_columns` VALUES ('2733', 'stms', 'st_company_three_finance', 'operating_profit', 'decimal', null, null, '营业利润（万元）', null);
INSERT INTO `db_columns` VALUES ('2734', 'stms', 'st_company_three_finance', 'retained_profits', 'decimal', null, null, '净利润（万元）', null);
INSERT INTO `db_columns` VALUES ('2735', 'stms', 'st_company_three_finance', 'property', 'decimal', null, null, '资产总数（万元）', null);
INSERT INTO `db_columns` VALUES ('2736', 'stms', 'st_company_three_finance', 'liabilities', 'decimal', null, null, '负债总额（万元）', null);
INSERT INTO `db_columns` VALUES ('2737', 'stms', 'st_company_three_finance', 'taxes', 'decimal', null, null, '上缴税金（万元）', null);
INSERT INTO `db_columns` VALUES ('2738', 'stms', 'st_company_three_finance', 'state', 'tinyint', null, null, '表状态（0：正常 1：作废）', null);
INSERT INTO `db_columns` VALUES ('2739', 'stms', 'st_company_three_finance', 'create_name', 'varchar', '32', null, '', null);
INSERT INTO `db_columns` VALUES ('2740', 'stms', 'st_company_three_finance', 'create_time', 'datetime', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2741', 'stms', 'st_company_account_password', 'id', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2742', 'stms', 'st_company_account_password', 'company_id', 'varchar', '64', null, '企业信息id', null);
INSERT INTO `db_columns` VALUES ('2743', 'stms', 'st_company_account_password', 'web_name', 'varchar', '64', null, '网站名称', null);
INSERT INTO `db_columns` VALUES ('2744', 'stms', 'st_company_account_password', 'web_url', 'varchar', '128', null, '网站网址', null);
INSERT INTO `db_columns` VALUES ('2745', 'stms', 'st_company_account_password', 'account', 'varchar', '64', null, '账号', null);
INSERT INTO `db_columns` VALUES ('2746', 'stms', 'st_company_account_password', 'password', 'varchar', '64', null, '密码', null);
INSERT INTO `db_columns` VALUES ('2747', 'stms', 'st_company_account_password', 'email_or_phone', 'varchar', '32', null, '注册邮箱/手机号', null);
INSERT INTO `db_columns` VALUES ('2748', 'stms', 'st_company_account_password', 'state', 'tinyint', null, null, '表状态（0：正常 1：作废）', null);
INSERT INTO `db_columns` VALUES ('2749', 'stms', 'st_company_account_password', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2750', 'stms', 'st_company_account_password', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2751', 'stms', 'st_message', 'id', 'bigint', null, null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2752', 'stms', 'st_message', 'relate_id', 'varchar', '64', null, '关联id', null);
INSERT INTO `db_columns` VALUES ('2753', 'stms', 'st_message', 'user_id', 'varchar', '64', null, '操作人id', null);
INSERT INTO `db_columns` VALUES ('2754', 'stms', 'st_message', 'content', 'varchar', '64', null, '内容', null);
INSERT INTO `db_columns` VALUES ('2755', 'stms', 'st_message', 'classify', 'tinyint', null, null, '分类（0：知识产权；1：科技项目；2：项目立项；3：项目调度；4：项目结题；5：项目中止；6：政府项目；7：项目申报书；8：项目调度；9：验收文件；10：项目中止；12：成果评价；13：成果评价列表；14：获奖成果；15：获奖成果列表；16：标准；17：标准列表；18：论文著作；19：论文著作列表；20：其他；21：其他列表；22：外协管理；24：科技人员；25：科研设备；26：专家库；27：资质认证）', null);
INSERT INTO `db_columns` VALUES ('2756', 'stms', 'st_message', 'read_status', 'tinyint', null, null, '读取状态（0：未读；1：已读）', null);
INSERT INTO `db_columns` VALUES ('2757', 'stms', 'st_message', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2758', 'stms', 'st_message', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2759', 'stms', 'st_message', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2760', 'stms', 'st_achievement_assess', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2761', 'stms', 'st_achievement_assess', 'company_id', 'varchar', '64', null, '企业id', null);
INSERT INTO `db_columns` VALUES ('2762', 'stms', 'st_achievement_assess', 'user_id', 'varchar', '64', null, '用户id', null);
INSERT INTO `db_columns` VALUES ('2763', 'stms', 'st_achievement_assess', 'achievement_name', 'varchar', '32', null, '成果名称', null);
INSERT INTO `db_columns` VALUES ('2764', 'stms', 'st_achievement_assess', 'assess_no', 'varchar', '32', null, '系统编号', null);
INSERT INTO `db_columns` VALUES ('2765', 'stms', 'st_achievement_assess', 'achievement_source', 'char', '1', null, '成果来源（0：自主研发；1：合作研发；2：委托外部研发；3：转让（受让、受赠、并购）；4：技术成果实施许可）', null);
INSERT INTO `db_columns` VALUES ('2766', 'stms', 'st_achievement_assess', 'achievement_type', 'char', '1', null, '成果类型（0：集成电路布图；1：设计专有权；2：植物新品种；3：国家新药；4：国家一级中药保护品种；5：检测方法；6：技术规范；7：其他）', null);
INSERT INTO `db_columns` VALUES ('2767', 'stms', 'st_achievement_assess', 'complete_date', 'varchar', '16', null, '完成日期', null);
INSERT INTO `db_columns` VALUES ('2768', 'stms', 'st_achievement_assess', 'summary', 'varchar', '1024', null, '成果简要', null);
INSERT INTO `db_columns` VALUES ('2769', 'stms', 'st_achievement_assess', 'benefit', 'varchar', '2048', null, '社会经济效益分析', null);
INSERT INTO `db_columns` VALUES ('2770', 'stms', 'st_achievement_assess', 'apply', 'varchar', '2048', null, '成果应用情况', null);
INSERT INTO `db_columns` VALUES ('2771', 'stms', 'st_achievement_assess', 'result', 'varchar', '2048', null, '取得的知识产权或论文、专著等', null);
INSERT INTO `db_columns` VALUES ('2772', 'stms', 'st_achievement_assess', 'company_status', 'tinyint', null, null, '是否合作单位（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2773', 'stms', 'st_achievement_assess', 'regist_status', 'tinyint', null, null, '是否登记（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2774', 'stms', 'st_achievement_assess', 'regist_no', 'varchar', '32', null, '登记编号', null);
INSERT INTO `db_columns` VALUES ('2775', 'stms', 'st_achievement_assess', 'regist_date', 'varchar', '16', null, '登记日期', null);
INSERT INTO `db_columns` VALUES ('2776', 'stms', 'st_achievement_assess', 'convert_status', 'tinyint', null, null, '是否转化（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2777', 'stms', 'st_achievement_assess', 'assess_company', 'varchar', '32', null, '评价机构', null);
INSERT INTO `db_columns` VALUES ('2778', 'stms', 'st_achievement_assess', 'assess_type', 'varchar', '32', null, '评价形式', null);
INSERT INTO `db_columns` VALUES ('2779', 'stms', 'st_achievement_assess', 'assess_date', 'varchar', '16', null, '', null);
INSERT INTO `db_columns` VALUES ('2780', 'stms', 'st_achievement_assess', 'assess_result', 'varchar', '64', null, '评价结论', null);
INSERT INTO `db_columns` VALUES ('2781', 'stms', 'st_achievement_assess', 'process', 'tinyint', null, null, '项目进程（0：申请中；1：已评价）', null);
INSERT INTO `db_columns` VALUES ('2782', 'stms', 'st_achievement_assess', 'share_status', 'tinyint', null, null, '分享状态（0：未分享；1：已分享）', null);
INSERT INTO `db_columns` VALUES ('2783', 'stms', 'st_achievement_assess', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2784', 'stms', 'st_achievement_assess', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2785', 'stms', 'st_achievement_assess', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2786', 'stms', 'st_achievement_assess', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2787', 'stms', 'st_achievement_assess', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2788', 'stms', 'mymessage', 'id', 'varchar', '40', null, '', null);
INSERT INTO `db_columns` VALUES ('2789', 'stms', 'mymessage', 'create_id', 'varchar', '64', null, '创建人id', null);
INSERT INTO `db_columns` VALUES ('2790', 'stms', 'mymessage', 'create_by', 'varchar', '100', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2791', 'stms', 'mymessage', 'userid', 'varchar', '1000', '', '执行人id', 'i脚后跟范德萨');
INSERT INTO `db_columns` VALUES ('2792', 'stms', 'mymessage', 'Otitle', 'varchar', '100', null, '事项主题', null);
INSERT INTO `db_columns` VALUES ('2793', 'stms', 'mymessage', 'Otype', 'varchar', '100', null, '事项类型 对应字典表中Otype', null);
INSERT INTO `db_columns` VALUES ('2794', 'stms', 'mymessage', 'content', 'varchar', '2000', null, '事项内容', null);
INSERT INTO `db_columns` VALUES ('2795', 'stms', 'mymessage', 'sendto', 'varchar', '2000', null, '执行人', null);
INSERT INTO `db_columns` VALUES ('2796', 'stms', 'mymessage', 'remark', 'varchar', '2000', null, '备注', null);
INSERT INTO `db_columns` VALUES ('2797', 'stms', 'mymessage', 'file_name', 'varchar', '100', null, '文件名称', null);
INSERT INTO `db_columns` VALUES ('2798', 'stms', 'mymessage', 'Enclosure', 'varchar', '2000', null, '文件地址', null);
INSERT INTO `db_columns` VALUES ('2799', 'stms', 'mymessage', 'creat_date', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2800', 'stms', 'mymessage', 'update_by', 'varchar', '100', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2801', 'stms', 'mymessage', 'update_date', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2802', 'stms', 'mymessage', 'YN', 'varchar', '3', null, '是否发送0是未发送1是发送', null);
INSERT INTO `db_columns` VALUES ('2803', 'stms', 'mymessage', 'company_id', 'varchar', '64', null, '', null);
INSERT INTO `db_columns` VALUES ('2804', 'stms', 'mymessage', 'user_id', 'varchar', '64', null, '', null);
INSERT INTO `db_columns` VALUES ('2805', 'stms', 'mymessage', 'del_flag', 'varchar', '100', null, '是否删除0是未删1是删除', null);
INSERT INTO `db_columns` VALUES ('2806', 'stms', 'mymessage', 'remarks', 'varchar', '1000', null, '', null);
INSERT INTO `db_columns` VALUES ('2807', 'stms', 'st_company', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2808', 'stms', 'st_company', 'company_name', 'varchar', '64', null, '企业名称', null);
INSERT INTO `db_columns` VALUES ('2809', 'stms', 'st_company', 'company_image', 'varchar', '128', null, '企业标志', null);
INSERT INTO `db_columns` VALUES ('2810', 'stms', 'st_company', 'register_time', 'varchar', '32', null, '注册时间', null);
INSERT INTO `db_columns` VALUES ('2811', 'stms', 'st_company', 'register_type', 'char', '2', null, '注册类型（参照类型为registerType的字典）', null);
INSERT INTO `db_columns` VALUES ('2812', 'stms', 'st_company', 'regist_capital', 'decimal', null, null, '注册资金', null);
INSERT INTO `db_columns` VALUES ('2813', 'stms', 'st_company', 'foreign_source', 'char', '2', null, '外资来源地（参照类型为foreignSource的字典）', null);
INSERT INTO `db_columns` VALUES ('2814', 'stms', 'st_company', 'social_credit_code', 'varchar', '32', null, '统一社会信用代码', null);
INSERT INTO `db_columns` VALUES ('2815', 'stms', 'st_company', 'province_id', 'varchar', '8', null, '所在省份', null);
INSERT INTO `db_columns` VALUES ('2816', 'stms', 'st_company', 'city_id', 'varchar', '8', null, '所在城市', null);
INSERT INTO `db_columns` VALUES ('2817', 'stms', 'st_company', 'area_id', 'varchar', '8', null, '所在地区', null);
INSERT INTO `db_columns` VALUES ('2818', 'stms', 'st_company', 'address', 'varchar', '64', null, '通讯地址', null);
INSERT INTO `db_columns` VALUES ('2819', 'stms', 'st_company', 'postal_code', 'varchar', '8', null, '邮政编码', null);
INSERT INTO `db_columns` VALUES ('2820', 'stms', 'st_company', 'listed_company', 'tinyint', null, null, '是否上市（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2821', 'stms', 'st_company', 'listed_time', 'varchar', '32', null, '上市时间', null);
INSERT INTO `db_columns` VALUES ('2822', 'stms', 'st_company', 'listed_type', 'char', '2', null, '上市类型（参照类型为listedType的字典）', null);
INSERT INTO `db_columns` VALUES ('2823', 'stms', 'st_company', 'stock_code', 'varchar', '32', null, '股票代码', null);
INSERT INTO `db_columns` VALUES ('2824', 'stms', 'st_company', 'hightech_company', 'tinyint', null, null, '是否属于国家级高新区内企业（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2825', 'stms', 'st_company', 'hightech_name', 'varchar', '64', null, '高新区名称', null);
INSERT INTO `db_columns` VALUES ('2826', 'stms', 'st_company', 'risk_status', 'tinyint', null, null, '是否引入风险投资（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2827', 'stms', 'st_company', 'business_license', 'varchar', '128', null, '营业执照路径', null);
INSERT INTO `db_columns` VALUES ('2828', 'stms', 'st_company', 'business_license_name', 'varchar', '64', null, '营业执照名称', null);
INSERT INTO `db_columns` VALUES ('2829', 'stms', 'st_company', 'business_license_change', 'tinyint', null, null, '营业执照是否变更（0：否；1：是）', null);
INSERT INTO `db_columns` VALUES ('2830', 'stms', 'st_company', 'linkman', 'varchar', '8', null, '联系人', null);
INSERT INTO `db_columns` VALUES ('2831', 'stms', 'st_company', 'phone', 'varchar', '16', null, '联系电话', null);
INSERT INTO `db_columns` VALUES ('2832', 'stms', 'st_company', 'account_number', 'smallint', null, null, '账号数量', null);
INSERT INTO `db_columns` VALUES ('2833', 'stms', 'st_company', 'prefix', 'varchar', '16', null, '账号前缀', null);
INSERT INTO `db_columns` VALUES ('2834', 'stms', 'st_company', 'valid_time', 'varchar', '32', null, '有效截止时间', null);
INSERT INTO `db_columns` VALUES ('2835', 'stms', 'st_company', 'role_id', 'varchar', '64', null, '角色id', null);
INSERT INTO `db_columns` VALUES ('2836', 'stms', 'st_company', 'company_status', 'tinyint', null, null, '企业状态（0：禁用；1：启用）', null);
INSERT INTO `db_columns` VALUES ('2837', 'stms', 'st_company', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2838', 'stms', 'st_company', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2839', 'stms', 'st_company', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2840', 'stms', 'st_company', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2841', 'stms', 'st_company', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2842', 'stms', 'st_company', 'name', 'varchar', '32', null, '法人姓名', null);
INSERT INTO `db_columns` VALUES ('2843', 'stms', 'st_company', 'email', 'varchar', '64', null, '法人邮箱', null);
INSERT INTO `db_columns` VALUES ('2844', 'stms', 'st_company', 'tel', 'varchar', '16', null, '法人电话', null);
INSERT INTO `db_columns` VALUES ('2845', 'stms', 'st_company', 'icard', 'varchar', '32', null, '法人身份证号/护照号', null);
INSERT INTO `db_columns` VALUES ('2846', 'stms', 'st_company', 'change_status', 'tinyint', null, null, '是否变更（0：否 1：是）', null);
INSERT INTO `db_columns` VALUES ('2847', 'k_sms', 'qrtz_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2848', 'k_sms', 'qrtz_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2849', 'k_sms', 'qrtz_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2850', 'k_sms', 'qrtz_triggers', 'JOB_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2851', 'k_sms', 'qrtz_triggers', 'JOB_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2852', 'k_sms', 'qrtz_triggers', 'DESCRIPTION', 'varchar', '250', null, '', null);
INSERT INTO `db_columns` VALUES ('2853', 'k_sms', 'qrtz_triggers', 'NEXT_FIRE_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2854', 'k_sms', 'qrtz_triggers', 'PREV_FIRE_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2855', 'k_sms', 'qrtz_triggers', 'PRIORITY', 'int', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2856', 'k_sms', 'qrtz_triggers', 'TRIGGER_STATE', 'varchar', '16', null, '', null);
INSERT INTO `db_columns` VALUES ('2857', 'k_sms', 'qrtz_triggers', 'TRIGGER_TYPE', 'varchar', '8', null, '', null);
INSERT INTO `db_columns` VALUES ('2858', 'k_sms', 'qrtz_triggers', 'START_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2859', 'k_sms', 'qrtz_triggers', 'END_TIME', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2860', 'k_sms', 'qrtz_triggers', 'CALENDAR_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2861', 'k_sms', 'qrtz_triggers', 'MISFIRE_INSTR', 'smallint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2862', 'k_sms', 'qrtz_triggers', 'JOB_DATA', 'blob', '65535', null, '', null);
INSERT INTO `db_columns` VALUES ('2863', 'k_sms', 'qrtz_simprop_triggers', 'SCHED_NAME', 'varchar', '120', null, '', null);
INSERT INTO `db_columns` VALUES ('2864', 'k_sms', 'qrtz_simprop_triggers', 'TRIGGER_NAME', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2865', 'k_sms', 'qrtz_simprop_triggers', 'TRIGGER_GROUP', 'varchar', '200', null, '', null);
INSERT INTO `db_columns` VALUES ('2866', 'k_sms', 'qrtz_simprop_triggers', 'STR_PROP_1', 'varchar', '512', null, '', null);
INSERT INTO `db_columns` VALUES ('2867', 'k_sms', 'qrtz_simprop_triggers', 'STR_PROP_2', 'varchar', '512', null, '', null);
INSERT INTO `db_columns` VALUES ('2868', 'k_sms', 'qrtz_simprop_triggers', 'STR_PROP_3', 'varchar', '512', null, '', null);
INSERT INTO `db_columns` VALUES ('2869', 'k_sms', 'qrtz_simprop_triggers', 'INT_PROP_1', 'int', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2870', 'k_sms', 'qrtz_simprop_triggers', 'INT_PROP_2', 'int', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2871', 'k_sms', 'qrtz_simprop_triggers', 'LONG_PROP_1', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2872', 'k_sms', 'qrtz_simprop_triggers', 'LONG_PROP_2', 'bigint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2873', 'k_sms', 'qrtz_simprop_triggers', 'DEC_PROP_1', 'decimal', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2874', 'k_sms', 'qrtz_simprop_triggers', 'DEC_PROP_2', 'decimal', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2875', 'k_sms', 'qrtz_simprop_triggers', 'BOOL_PROP_1', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2876', 'k_sms', 'qrtz_simprop_triggers', 'BOOL_PROP_2', 'varchar', '1', null, '', null);
INSERT INTO `db_columns` VALUES ('2877', 'stms', 'st_outsource_gover_project', 'id', 'bigint', null, null, 'id', null);
INSERT INTO `db_columns` VALUES ('2878', 'stms', 'st_outsource_gover_project', 'outsource_id', 'varchar', '64', null, '外协管理id', null);
INSERT INTO `db_columns` VALUES ('2879', 'stms', 'st_outsource_gover_project', 'gover_project_id', 'varchar', '64', null, '政府项目id', null);
INSERT INTO `db_columns` VALUES ('2880', 'stms', 'st_outsource_gover_project', 'outsource_shape', 'char', '1', null, '协作形式', null);
INSERT INTO `db_columns` VALUES ('2881', 'stms', 'st_outsource_gover_project', 'project_name', 'varchar', '64', null, '项目名称', null);
INSERT INTO `db_columns` VALUES ('2882', 'stms', 'st_outsource_gover_project', 'start_date', 'varchar', '16', null, '开始日期', null);
INSERT INTO `db_columns` VALUES ('2883', 'stms', 'st_outsource_gover_project', 'plan_complete_date', 'varchar', '32', null, '实际完成日期', null);
INSERT INTO `db_columns` VALUES ('2884', 'stms', 'st_outsource_gover_project', 'outsource_price', 'decimal', null, null, '费用（万元）', null);
INSERT INTO `db_columns` VALUES ('2885', 'stms', 'st_outsource_gover_project', 'outsource_result', 'char', '1', null, '结果', null);
INSERT INTO `db_columns` VALUES ('2886', 'stms', 'st_outsource_gover_project', 'state', 'tinyint', null, null, '表状态（0：正常 1：作废）', null);
INSERT INTO `db_columns` VALUES ('2887', 'stms', 'st_outsource_gover_project', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2888', 'stms', 'st_outsource_gover_project', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2889', 'stms', 'st_project_suspend', 'id', 'varchar', '64', null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2890', 'stms', 'st_project_suspend', 'project_id', 'varchar', '64', null, '项目id', null);
INSERT INTO `db_columns` VALUES ('2891', 'stms', 'st_project_suspend', 'reason', 'varchar', '5120', null, '终止原因', null);
INSERT INTO `db_columns` VALUES ('2892', 'stms', 'st_project_suspend', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2893', 'stms', 'st_project_suspend', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2894', 'stms', 'st_project_suspend', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2895', 'stms', 'st_project_suspend', 'update_name', 'varchar', '32', null, '修改人', null);
INSERT INTO `db_columns` VALUES ('2896', 'stms', 'st_project_suspend', 'update_time', 'datetime', null, null, '修改时间', null);
INSERT INTO `db_columns` VALUES ('2897', 'stms', 'st_project_plan', 'id', 'bigint', null, null, 'ID', null);
INSERT INTO `db_columns` VALUES ('2898', 'stms', 'st_project_plan', 'project_id', 'varchar', '64', null, '项目id', null);
INSERT INTO `db_columns` VALUES ('2899', 'stms', 'st_project_plan', 'start_time', 'varchar', '16', null, '开始时间', null);
INSERT INTO `db_columns` VALUES ('2900', 'stms', 'st_project_plan', 'end_time', 'varchar', '16', null, '结束时间', null);
INSERT INTO `db_columns` VALUES ('2901', 'stms', 'st_project_plan', 'assessment', 'varchar', '2048', null, '阶段工作任务及考核目标', null);
INSERT INTO `db_columns` VALUES ('2902', 'stms', 'st_project_plan', 'state', 'tinyint', null, null, '表状态（0：正常；1：作废）', null);
INSERT INTO `db_columns` VALUES ('2903', 'stms', 'st_project_plan', 'create_name', 'varchar', '32', null, '创建人', null);
INSERT INTO `db_columns` VALUES ('2904', 'stms', 'st_project_plan', 'create_time', 'datetime', null, null, '创建时间', null);
INSERT INTO `db_columns` VALUES ('2905', 'stms', 'sys_meeting', 'id', 'int', null, null, 'ID，自增长', null);
INSERT INTO `db_columns` VALUES ('2906', 'stms', 'sys_meeting', 'meeting_type', 'tinyint', null, null, '', null);
INSERT INTO `db_columns` VALUES ('2907', 'stms', 'sys_meeting', 'title', 'varchar', '128', null, '', null);
INSERT INTO `db_columns` VALUES ('2908', 'stms', 'sys_meeting', 'create_id', 'varchar', '300', null, '', null);
INSERT INTO `db_columns` VALUES ('2909', 'stms', 'sys_meeting', 'create_name', 'varchar', '1000', null, '', null);
INSERT INTO `db_columns` VALUES ('2910', 'stms', 'sys_meeting', 'sendto_name', 'varchar', '1000', null, '', null);
INSERT INTO `db_columns` VALUES ('2911', 'stms', 'sys_meeting', 'room', 'varchar', '60', null, '', null);
INSERT INTO `db_columns` VALUES ('2912', 'stms', 'sys_meeting', 'content', 'text', '65535', null, '', null);
INSERT INTO `db_columns` VALUES ('2913', 'stms', 'sys_meeting', 'j_y', 'varchar', '3000', null, '', null);
INSERT INTO `db_columns` VALUES ('2914', 'stms', 'sys_meeting', 'file_name', 'varchar', '3000', null, '', null);
INSERT INTO `db_columns` VALUES ('2915', 'stms', 'sys_meeting', 'file', 'varchar', '3000', null, '', null);
INSERT INTO `db_columns` VALUES ('2916', 'stms', 'sys_meeting', 'create_time', 'varchar', '60', null, '', null);
INSERT INTO `db_columns` VALUES ('2917', 'stms', 'sys_meeting', 'meeting_time', 'varchar', '60', null, '', null);
INSERT INTO `db_columns` VALUES ('2918', 'stms', 'sys_meeting', 'update_time', 'varchar', '60', null, '', null);
INSERT INTO `db_columns` VALUES ('2919', 'stms', 'sys_meeting', 'meeting_status', 'tinyint', null, null, '会议状态/是否发布(0 : 未发布；1 : 已发布；2：已撤销)', null);
INSERT INTO `db_columns` VALUES ('2920', 'stms', 'sys_meeting', 'state', 'tinyint', null, null, '表状态(0 : 正常；1 : 报废)', null);
INSERT INTO `db_columns` VALUES ('2921', 'stms', 'sys_meeting', 'sendto_id', 'varchar', '2000', null, '', null);
INSERT INTO `db_columns` VALUES ('2922', 'stms', 'sys_meeting', 'role_id', 'varchar', '2000', null, '', null);

-- ----------------------------
-- Table structure for `db_commons`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_commons
-- ----------------------------
INSERT INTO `db_commons` VALUES ('3', 'root', '123456', 'localhost', 'mysql', 'stms');
INSERT INTO `db_commons` VALUES ('4', 'root', '123456', 'localhost', 'mysql', 'k_sms');

-- ----------------------------
-- Table structure for `db_tables`
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
) ENGINE=InnoDB AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_tables
-- ----------------------------
INSERT INTO `db_tables` VALUES ('1187', 'stms', 'co_role_menu', '2018-10-17 18:43:39', '', '', '', '角色和菜单的对应关系表');
INSERT INTO `db_tables` VALUES ('1188', 'stms', 'import_company_activity', '2018-10-17 18:43:41', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1189', 'stms', 'k_sms_groupsends', '2018-10-17 18:43:43', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1190', 'stms', 'k_sms_template', '2018-10-17 18:43:44', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1191', 'stms', 'mktest', '2018-10-19 00:07:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1192', 'stms', 'mymessage', '2018-10-17 18:43:45', null, '我的事项，就是系统中所有的我能收到的信息', null, null);
INSERT INTO `db_tables` VALUES ('1193', 'stms', 'st_achievement_assess', '2018-10-17 18:43:45', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1194', 'stms', 'st_achievement_assess_convert', '2018-10-17 18:43:46', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1195', 'stms', 'st_achievement_assess_institution', '2018-10-17 18:43:46', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1196', 'stms', 'st_achievement_other', '2018-10-17 18:43:46', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1197', 'stms', 'st_achievement_paper', '2018-10-17 18:43:47', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1198', 'stms', 'st_achievement_paper_author', '2018-10-17 18:43:47', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1199', 'stms', 'st_achievement_reward', '2018-10-17 18:43:48', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1200', 'stms', 'st_achievement_standard', '2018-10-17 18:43:49', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1201', 'stms', 'st_audit', '2018-10-17 18:43:49', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1202', 'stms', 'st_audit_log', '2018-10-17 18:43:50', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1203', 'stms', 'st_branch', '2018-10-17 18:43:52', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1204', 'stms', 'st_company', '2018-10-17 18:43:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1205', 'stms', 'st_company_account_password', '2018-10-17 18:43:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1206', 'stms', 'st_company_change', '2018-10-17 18:43:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1207', 'stms', 'st_company_three_finance', '2018-10-17 18:43:54', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1208', 'stms', 'st_gover_project', '2018-10-17 18:43:54', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1209', 'stms', 'st_gover_project_dispatch', '2018-10-17 18:43:55', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1210', 'stms', 'st_gover_project_finish', '2018-10-17 18:43:55', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1211', 'stms', 'st_gover_project_suspend', '2018-10-17 18:43:55', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1212', 'stms', 'st_info', '2018-10-17 18:43:56', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1213', 'stms', 'st_inner_info', '2018-10-17 18:43:58', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1214', 'stms', 'st_intell_property', '2018-10-17 18:44:00', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1215', 'stms', 'st_intell_property_agency', '2018-10-17 18:44:00', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1216', 'stms', 'st_intell_property_change', '2018-10-17 18:44:01', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1217', 'stms', 'st_intell_property_file', '2018-10-17 18:44:01', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1218', 'stms', 'st_intell_property_inventor', '2018-10-17 18:44:01', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1219', 'stms', 'st_intell_property_project', '2018-10-17 18:44:01', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1220', 'stms', 'st_log', '2018-10-17 18:44:02', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1221', 'stms', 'st_message', '2018-10-17 18:44:04', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1222', 'stms', 'st_outsource', '2018-10-17 18:44:04', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1223', 'stms', 'st_outsource_gover_project', '2018-10-17 18:44:05', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1224', 'stms', 'st_outsource_intell_property', '2018-10-17 18:44:05', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1225', 'stms', 'st_outsource_quality_certification', '2018-10-17 18:44:06', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1226', 'stms', 'st_personnel', '2018-10-17 18:44:06', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1227', 'stms', 'st_project', '2018-10-17 18:44:06', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1228', 'stms', 'st_project_company', '2018-10-17 18:44:07', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1229', 'stms', 'st_project_dispatch', '2018-10-17 18:44:08', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1230', 'stms', 'st_project_file', '2018-10-17 18:44:08', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1231', 'stms', 'st_project_finish', '2018-10-17 18:44:08', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1232', 'stms', 'st_project_member', '2018-10-17 18:44:09', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1233', 'stms', 'st_project_plan', '2018-10-17 18:44:09', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1234', 'stms', 'st_project_suspend', '2018-10-17 18:44:10', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1235', 'stms', 'st_quality_certification', '2018-10-17 18:44:10', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1236', 'stms', 'st_quality_certification_outsource', '2018-10-17 18:44:11', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1237', 'stms', 'st_role', '2018-10-17 18:44:11', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1238', 'stms', 'st_role_menu', '2018-10-17 18:44:11', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1239', 'stms', 'st_role_user', '2018-10-17 18:44:13', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1240', 'stms', 'st_scientific_equipment', '2018-10-17 18:44:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1241', 'stms', 'st_scientific_institution', '2018-10-17 18:44:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1242', 'stms', 'st_scientific_institution_attestation', '2018-10-17 18:44:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1243', 'stms', 'st_share', '2018-10-17 18:44:15', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1244', 'stms', 'st_specialist_achievement_award', '2018-10-17 18:44:15', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1245', 'stms', 'st_specialist_education_experience', '2018-10-17 18:44:15', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1246', 'stms', 'st_specialist_else_honor', '2018-10-17 18:44:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1247', 'stms', 'st_specialist_lib', '2018-10-17 18:44:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1248', 'stms', 'st_specialist_paper', '2018-10-17 18:44:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1249', 'stms', 'st_specialist_part_time_job', '2018-10-17 18:44:17', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1250', 'stms', 'st_specialist_patent_status', '2018-10-17 18:44:17', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1251', 'stms', 'st_specialist_plan_project', '2018-10-17 18:44:17', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1252', 'stms', 'st_specialist_project_fund', '2018-10-17 18:44:18', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1253', 'stms', 'st_specialist_work_experience', '2018-10-17 18:44:18', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1254', 'stms', 'st_todo', '2018-10-17 18:44:18', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1255', 'stms', 'st_transfer', '2018-10-17 18:44:19', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1256', 'stms', 'st_user', '2018-10-17 18:44:19', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1257', 'stms', 'st_user_col', '2018-10-17 18:44:20', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1258', 'stms', 'sys_antistop', '2018-10-17 18:44:22', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1259', 'stms', 'sys_area', '2018-10-17 18:44:22', null, '区域表', null, null);
INSERT INTO `db_tables` VALUES ('1260', 'stms', 'sys_attendance', '2018-10-17 18:44:23', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1261', 'stms', 'sys_checking_count', '2018-10-17 18:44:23', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1262', 'stms', 'sys_checking_in', '2018-10-17 18:44:23', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1263', 'stms', 'sys_city', '2018-10-17 18:44:24', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1264', 'stms', 'sys_customer_enterprise', '2018-10-17 18:44:25', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1265', 'stms', 'sys_customer_information', '2018-10-17 18:44:25', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1266', 'stms', 'sys_customer_intelligence', '2018-10-17 18:44:25', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1267', 'stms', 'sys_customer_link_man', '2018-10-17 18:44:26', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1268', 'stms', 'sys_customer_mark', '2018-10-17 18:44:26', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1269', 'stms', 'sys_customer_technology', '2018-10-17 18:44:26', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1270', 'stms', 'sys_dict', '2018-10-17 18:44:26', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1271', 'stms', 'sys_empinfo', '2018-10-17 18:44:27', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1272', 'stms', 'sys_finddict', '2018-10-17 18:44:28', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1273', 'stms', 'sys_group', '2018-10-17 18:44:28', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1274', 'stms', 'sys_group_antistop', '2018-10-17 18:44:29', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1275', 'stms', 'sys_info', '2018-10-17 18:44:30', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1276', 'stms', 'sys_log', '2018-10-17 18:44:33', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1277', 'stms', 'sys_meeting', '2018-10-17 18:44:36', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1278', 'stms', 'sys_menu', '2018-10-17 18:44:37', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1279', 'stms', 'sys_number', '2018-10-17 18:44:37', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1280', 'stms', 'sys_portrayal', '2018-10-17 18:44:42', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1281', 'stms', 'sys_relation', '2018-10-17 18:44:43', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1282', 'stms', 'sys_role', '2018-10-17 18:44:43', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1283', 'stms', 'sys_role_copy', '2018-10-17 18:44:44', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1284', 'stms', 'sys_role_menu', '2018-10-17 18:44:45', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1285', 'stms', 'sys_role_user', '2018-10-17 18:44:49', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1286', 'stms', 'sys_station', '2018-10-17 18:44:50', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1287', 'stms', 'sys_talent', '2018-10-17 18:44:51', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1288', 'stms', 'sys_user', '2018-10-17 18:44:51', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1289', 'stms', 't_biz_consultation', '2018-10-17 18:44:52', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1290', 'stms', 't_biz_download', '2018-10-17 18:44:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1291', 'stms', 't_biz_enterprise', '2018-10-17 18:44:54', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1292', 'stms', 't_biz_enterprise_attachment', '2018-10-17 18:44:56', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1293', 'stms', 't_biz_enterprise_detailedlist', '2018-10-17 18:45:00', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1294', 'stms', 't_biz_enterprise_intellect_property', '2018-10-17 18:45:02', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1295', 'stms', 't_biz_enterprise_manage', '2018-10-17 18:45:03', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1296', 'stms', 't_biz_enterprise_product_service', '2018-10-17 18:45:03', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1297', 'stms', 't_biz_enterprise_research_development', '2018-10-17 18:45:05', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1298', 'stms', 't_biz_enterprise_research_expenses', '2018-10-17 18:45:08', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1299', 'stms', 't_biz_enterprise_standard', '2018-10-17 18:45:09', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1300', 'stms', 't_biz_hightech', '2018-10-17 18:45:10', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1301', 'stms', 't_biz_hightech_attachment', '2018-10-17 18:45:11', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1302', 'stms', 't_biz_hightech_detailedlist', '2018-10-17 18:45:13', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1303', 'stms', 't_biz_hightech_intellect_property', '2018-10-17 18:45:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1304', 'stms', 't_biz_hightech_manage', '2018-10-17 18:45:15', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1305', 'stms', 't_biz_hightech_process', '2018-10-17 18:45:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1306', 'stms', 't_biz_hightech_product_service', '2018-10-17 18:45:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1307', 'stms', 't_biz_hightech_research_development', '2018-10-17 18:45:18', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1308', 'stms', 't_biz_hightech_research_expenses', '2018-10-17 18:45:20', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1309', 'stms', 't_biz_hightech_standard', '2018-10-17 18:45:21', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1310', 'stms', 't_biz_material', '2018-10-17 18:45:21', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1311', 'stms', 't_biz_project_info', '2018-10-17 18:45:22', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1312', 'stms', 't_biz_project_menu', '2018-10-17 18:45:22', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1313', 'stms', 't_biz_schedule', '2018-10-17 18:45:23', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1314', 'stms', 't_data_dictionary', '2018-10-17 18:45:23', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1315', 'stms', 't_declare_attachment', '2018-10-17 18:45:26', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1316', 'stms', 't_declare_attachment_templet', '2018-10-17 18:45:27', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1317', 'stms', 't_declare_company', '2018-10-17 18:45:28', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1318', 'stms', 't_declare_company_linkman', '2018-10-17 18:45:28', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1319', 'stms', 't_declare_company_risk', '2018-10-17 18:45:29', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1320', 'stms', 't_declare_company_stock', '2018-10-17 18:45:29', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1321', 'stms', 't_declare_feedback', '2018-10-17 18:45:29', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1322', 'stms', 't_declare_intellect', '2018-10-17 18:45:30', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1323', 'stms', 't_declare_material', '2018-10-17 18:45:30', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1324', 'stms', 't_declare_notice', '2018-10-17 18:45:30', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1325', 'stms', 't_declare_operate_log', '2018-10-17 18:45:33', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1326', 'stms', 't_declare_policy', '2018-10-17 18:45:34', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1327', 'stms', 't_declare_product_service', '2018-10-17 18:45:35', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1328', 'stms', 't_declare_project', '2018-10-17 18:45:36', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1329', 'stms', 't_declare_research_development', '2018-10-17 18:45:36', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1330', 'stms', 't_declare_sale', '2018-10-17 18:45:37', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1331', 'stms', 't_declare_scientist', '2018-10-17 18:45:37', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1332', 'stms', 't_declare_todo', '2018-10-17 18:45:37', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1333', 'stms', 't_erp_company', '2018-10-17 18:45:38', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1334', 'stms', 't_erp_company_activity', '2018-10-17 18:46:09', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1335', 'stms', 't_erp_company_aptitude', '2018-10-17 18:46:10', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1336', 'stms', 't_erp_company_config', '2018-10-17 18:46:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1337', 'stms', 't_erp_company_config_detail', '2018-10-17 18:46:16', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1338', 'stms', 't_erp_company_linkman', '2018-10-17 18:46:17', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1339', 'stms', 't_erp_company_negotiate', '2018-10-17 18:46:35', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1340', 'stms', 't_erp_company_share', '2018-10-17 18:47:19', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1341', 'stms', 't_erp_company_transfer', '2018-10-17 18:47:21', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1342', 'stms', 't_erp_contract', '2018-10-17 18:47:25', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1343', 'stms', 't_erp_contract_group', '2018-10-17 18:47:27', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1344', 'stms', 't_erp_contract_implement', '2018-10-17 18:47:27', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1345', 'stms', 't_erp_contract_log', '2018-10-17 18:47:28', null, '合同日志', null, null);
INSERT INTO `db_tables` VALUES ('1346', 'stms', 't_erp_contract_no', '2018-10-17 18:47:28', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1347', 'stms', 't_erp_contract_opinion', '2018-10-17 18:47:29', null, '合同内部审批', null, null);
INSERT INTO `db_tables` VALUES ('1348', 'stms', 't_erp_contract_process_record', '2018-10-17 18:47:29', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1349', 'stms', 't_erp_contract_project', '2018-10-17 18:47:30', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1350', 'stms', 't_erp_contract_project_log', '2018-10-17 18:47:31', null, '合同日志', null, null);
INSERT INTO `db_tables` VALUES ('1351', 'stms', 't_erp_contract_projectpdfurl', '2018-10-17 18:47:31', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1352', 'stms', 't_erp_contract_receivable', '2018-10-17 18:47:31', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1353', 'stms', 't_erp_contract_template', '2018-10-17 18:47:32', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1354', 'stms', 't_erp_file', '2018-10-17 18:47:33', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1355', 'stms', 't_erp_message', '2018-10-17 18:47:34', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1356', 'stms', 't_erp_operate_log', '2018-10-17 18:47:35', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1357', 'stms', 't_erp_project_assessment', '2018-10-17 18:47:38', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1358', 'stms', 't_erp_project_communicate', '2018-10-17 18:47:38', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1359', 'stms', 't_erp_project_template', '2018-10-17 18:47:39', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1360', 'stms', 't_erp_remind', '2018-10-17 18:47:40', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1361', 'stms', 't_erp_todo', '2018-10-17 18:47:41', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1362', 'stms', 't_search', '2018-10-17 18:47:42', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1363', 'stms', 't_sys_branch', '2018-10-17 18:47:43', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1364', 'stms', 't_sys_button', '2018-10-17 18:47:43', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1365', 'stms', 't_sys_city', '2018-10-17 18:47:44', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1366', 'stms', 't_sys_config', '2018-10-17 18:47:46', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1367', 'stms', 't_sys_function', '2018-10-17 18:47:47', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1368', 'stms', 't_sys_function_role', '2018-10-17 18:47:48', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1369', 'stms', 't_sys_role', '2018-10-17 18:47:50', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1370', 'stms', 't_sys_user', '2018-10-17 18:47:51', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1371', 'stms', 't_sys_user_role', '2018-10-17 18:47:52', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1372', 'stms', 't_web_news', '2018-10-17 18:47:56', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1373', 'stms', 't_website_company', '2018-10-17 18:47:52', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1374', 'stms', 't_website_company_linkman', '2018-10-17 18:47:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1375', 'stms', 't_website_company_risk', '2018-10-17 18:47:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1376', 'stms', 't_website_company_stock', '2018-10-17 18:47:53', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1377', 'stms', 't_website_file', '2018-10-17 18:47:54', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1378', 'stms', 't_website_user', '2018-10-17 18:47:55', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1379', 'stms', 'view_company', null, null, 'VIEW', null, null);
INSERT INTO `db_tables` VALUES ('1380', 'stms', 'view_company_copy', null, null, 'VIEW', null, null);
INSERT INTO `db_tables` VALUES ('1381', 'stms', 'co_menu', '2018-10-17 18:43:38', '111111', '', '222222', '我的事项');
INSERT INTO `db_tables` VALUES ('1382', 'stms', 'co_role', '2018-10-17 18:43:39', '', '', '', '角色表');
INSERT INTO `db_tables` VALUES ('1383', 'k_sms', 'qrtz_blob_triggers', '2018-10-17 18:51:11', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1384', 'k_sms', 'qrtz_calendars', '2018-10-17 18:51:12', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1385', 'k_sms', 'qrtz_cron_triggers', '2018-10-17 18:51:12', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1386', 'k_sms', 'qrtz_fired_triggers', '2018-10-17 18:51:12', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1387', 'k_sms', 'qrtz_job_details', '2018-10-17 18:51:13', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1388', 'k_sms', 'qrtz_locks', '2018-10-17 18:51:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1389', 'k_sms', 'qrtz_paused_trigger_grps', '2018-10-17 18:51:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1390', 'k_sms', 'qrtz_scheduler_state', '2018-10-17 18:51:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1391', 'k_sms', 'qrtz_simple_triggers', '2018-10-17 18:51:14', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1392', 'k_sms', 'qrtz_simprop_triggers', '2018-10-17 18:51:15', null, '', null, null);
INSERT INTO `db_tables` VALUES ('1393', 'k_sms', 'qrtz_triggers', '2018-10-17 18:51:15', null, '', null, null);
