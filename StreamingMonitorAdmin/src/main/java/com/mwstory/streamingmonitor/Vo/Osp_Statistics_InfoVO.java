/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Statistics_InfoVO.java
 * @�ۼ���       : 2017. 6. 16. 
 * @�ۼ���       : ������
 * @���α׷� ���� : ���� ��� ���� ���� ������Ʈ
 *
 CREATE TABLE IF NOT EXISTS `osp_statistics_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ű',
  `site_name` varchar(45) DEFAULT NULL COMMENT '����Ʈ ��',
  `host` varchar(45) DEFAULT NULL,
  `cumulative_time` varchar(45) DEFAULT NULL COMMENT '���� ���� �ð�',
  `collect_count` int(11) DEFAULT NULL COMMENT '���� �Խù� ī��Ʈ',
  `collect_time_avg` varchar(45) DEFAULT NULL COMMENT '�Խù� �� ��� ���� �ð�',
  `site_change_count` int(11) DEFAULT NULL COMMENT '����Ʈ ���� ���� ī��Ʈ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='���� ��� ����';
 
 */


package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class Osp_Statistics_InfoVO {

	private int id = 0;
	private String site_name = null;
	private String host = null;
	private String cumulative_time = null;
	private int collect_count = 0;
	private String collect_time_avg = null;
	private int site_change_count = 0;
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
	 * @return cumulative_time
	 */
	public String getCumulative_time() {
		return cumulative_time;
	}
	/**
	 * @param cumulative_time ������ cumulative_time
	 */
	public void setCumulative_time(String cumulative_time) {
		this.cumulative_time = cumulative_time;
	}
	/**
	 * @return collect_count
	 */
	public int getCollect_count() {
		return collect_count;
	}
	/**
	 * @param collect_count ������ collect_count
	 */
	public void setCollect_count(int collect_count) {
		this.collect_count = collect_count;
	}
	/**
	 * @return collect_time_avg
	 */
	public String getCollect_time_avg() {
		return collect_time_avg;
	}
	/**
	 * @param collect_time_avg ������ collect_time_avg
	 */
	public void setCollect_time_avg(String collect_time_avg) {
		this.collect_time_avg = collect_time_avg;
	}
	/**
	 * @return site_change_count
	 */
	public int getSite_change_count() {
		return site_change_count;
	}
	/**
	 * @param site_change_count ������ site_change_count
	 */
	public void setSite_change_count(int site_change_count) {
		this.site_change_count = site_change_count;
	}
	
	
	
	
}
