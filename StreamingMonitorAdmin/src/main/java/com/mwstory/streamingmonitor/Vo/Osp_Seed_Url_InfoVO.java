/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Seed_Url_InfoVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 사이트 수집 시드 정보 벨류 오브젝트
 * 
 * 
 CREATE TABLE IF NOT EXISTS `osp_seed_url_info` (
  `seed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `terminal_id` int(11) DEFAULT NULL COMMENT '단말기 식별 아이디',
  `site_name` varchar(45) DEFAULT NULL COMMENT '사이트 명',
  `site_url` varchar(255) DEFAULT NULL COMMENT '사이트 url',
  `seed_name` varchar(45) DEFAULT NULL,
  `seed_url` varchar(255) DEFAULT NULL COMMENT '수집 대상 seed url',
  `seed_category` varchar(45) DEFAULT NULL COMMENT '수집 대상 seed의 카테고리',
  PRIMARY KEY (`seed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='osp 사이트 수집 seed 정보';
 */

package com.mwstory.streamingmonitor.Vo;
/**
 * @author Jinsu
 *
 */
public class Osp_Seed_Url_InfoVO {

	private int seed_id = 0;
	private int terminal_id = 0;
	private String site_name = null;
	private String site_url = null;
	private String seed_name = null;
	private String seed_url = null;
	private String seed_category = null;
	/**
	 * @return seed_id
	 */
	public int getSeed_id() {
		return seed_id;
	}
	/**
	 * @param seed_id 설정할 seed_id
	 */
	public void setSeed_id(int seed_id) {
		this.seed_id = seed_id;
	}
	/**
	 * @return terminal_id
	 */
	public int getTerminal_id() {
		return terminal_id;
	}
	/**
	 * @param terminal_id 설정할 terminal_id
	 */
	public void setTerminal_id(int terminal_id) {
		this.terminal_id = terminal_id;
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
	 * @return site_url
	 */
	public String getSite_url() {
		return site_url;
	}
	/**
	 * @param site_url 설정할 site_url
	 */
	public void setSite_url(String site_url) {
		this.site_url = site_url;
	}
	/**
	 * @return seed_name
	 */
	public String getSeed_name() {
		return seed_name;
	}
	/**
	 * @param seed_name 설정할 seed_name
	 */
	public void setSeed_name(String seed_name) {
		this.seed_name = seed_name;
	}
	/**
	 * @return seed_url
	 */
	public String getSeed_url() {
		return seed_url;
	}
	/**
	 * @param seed_url 설정할 seed_url
	 */
	public void setSeed_url(String seed_url) {
		this.seed_url = seed_url;
	}
	/**
	 * @return seed_category
	 */
	public String getSeed_category() {
		return seed_category;
	}
	/**
	 * @param seed_category 설정할 seed_category
	 */
	public void setSeed_category(String seed_category) {
		this.seed_category = seed_category;
	}
	
	
	
	
	
}
