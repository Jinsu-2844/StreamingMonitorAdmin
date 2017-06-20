/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Statistics_InfoVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 수집 통계 정보 벨류 오브젝트
 *
 CREATE TABLE IF NOT EXISTS `osp_statistics_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `site_name` varchar(45) DEFAULT NULL COMMENT '사이트 명',
  `host` varchar(45) DEFAULT NULL,
  `cumulative_time` varchar(45) DEFAULT NULL COMMENT '수집 누적 시간',
  `collect_count` int(11) DEFAULT NULL COMMENT '수집 게시물 카운트',
  `collect_time_avg` varchar(45) DEFAULT NULL COMMENT '게시물 당 평균 수집 시간',
  `site_change_count` int(11) DEFAULT NULL COMMENT '사이트 변경 감지 카운트',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='수집 통계 정보';
 
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
	 * @param id 설정할 id
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
	 * @param site_name 설정할 site_name
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
	 * @param host 설정할 host
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
	 * @param cumulative_time 설정할 cumulative_time
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
	 * @param collect_count 설정할 collect_count
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
	 * @param collect_time_avg 설정할 collect_time_avg
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
	 * @param site_change_count 설정할 site_change_count
	 */
	public void setSite_change_count(int site_change_count) {
		this.site_change_count = site_change_count;
	}
	
	
	
	
}
