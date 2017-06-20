/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Management_infoVO.java
 * @�ۼ���       : 2017. 6. 16. 
 * @�ۼ���       : ������
 * @���α׷� ���� : ������������������Ʈ  
 *   
  CREATE TABLE IF NOT EXISTS `osp_management_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ű',
  `site_name` varchar(45) DEFAULT NULL COMMENT '����Ʈ ��',
  `host` varchar(45) DEFAULT NULL COMMENT '����Ʈ Ȩ',
  `terminal_working_flag` char(1) DEFAULT NULL COMMENT '�ܸ��� ���� ���� ����',
  `site_change_flag` char(1) DEFAULT NULL COMMENT '����Ʈ ���� ����',
  `start_time` varchar(45) DEFAULT NULL COMMENT '���� ���� �ð�',
  `end_time` varchar(45) DEFAULT NULL COMMENT '���� ���� �ð�',
  `cumulative_minute` int(11) DEFAULT NULL COMMENT '���� ���� �ð�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='���� ����';
 *   
 */
package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class Osp_Management_InfoVO {

 private int id = 0;
 private String site_name = null;
 private String host = null;
 private String terminal_working_flag = null;
 private String site_change_flag = null;
 private String start_time = null;
 private String end_time = null;
 private int cumulative_minute = 0;
/**
 * @return id
 */
public int getId() {
	return id;
}
/**
 * @param id ������ id
 */
public void setId(int id) {
	this.id = id;
}
/**
 * @return site_name
 */
public String getSite_name() {
	return site_name;
}
/**
 * @param site_name ������ site_name
 */
public void setSite_name(String site_name) {
	this.site_name = site_name;
}
/**
 * @return host
 */
public String getHost() {
	return host;
}
/**
 * @param host ������ host
 */
public void setHost(String host) {
	this.host = host;
}
/**
 * @return terminal_working_flag
 */
public String getTerminal_working_flag() {
	return terminal_working_flag;
}
/**
 * @param terminal_working_flag ������ terminal_working_flag
 */
public void setTerminal_working_flag(String terminal_working_flag) {
	this.terminal_working_flag = terminal_working_flag;
}
/**
 * @return site_change_flag
 */
public String getSite_change_flag() {
	return site_change_flag;
}
/**
 * @param site_change_flag ������ site_change_flag
 */
public void setSite_change_flag(String site_change_flag) {
	this.site_change_flag = site_change_flag;
}
/**
 * @return start_time
 */
public String getStart_time() {
	return start_time;
}
/**
 * @param start_time ������ start_time
 */
public void setStart_time(String start_time) {
	this.start_time = start_time;
}
/**
 * @return end_time
 */
public String getEnd_time() {
	return end_time;
}
/**
 * @param end_time ������ end_time
 */
public void setEnd_time(String end_time) {
	this.end_time = end_time;
}
/**
 * @return cumulative_minute
 */
public int getCumulative_minute() {
	return cumulative_minute;
}
/**
 * @param cumulative_minute ������ cumulative_minute
 */
public void setCumulative_minute(int cumulative_minute) {
	this.cumulative_minute = cumulative_minute;
}
	
	
}
