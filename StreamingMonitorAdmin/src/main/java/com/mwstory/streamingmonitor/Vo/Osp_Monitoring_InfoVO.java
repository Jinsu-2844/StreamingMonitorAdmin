/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Monitoring_InfoVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 수집 데이터 저장 벨류 오브젝트
 * 
  CREATE TABLE IF NOT EXISTS `osp_monitoring_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `terminal_id` varchar(45) DEFAULT NULL COMMENT '단말기 식별 아이디',
  `seed_id` int(11) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL COMMENT '사이트 명',
  `host` varchar(100) DEFAULT NULL COMMENT '사이트 홈',
  `url` varchar(2000) DEFAULT NULL COMMENT '수집된 페이지 url',
  `title` varchar(500) DEFAULT NULL COMMENT '콘텐츠 명',
  `contents_name` varchar(500) DEFAULT NULL COMMENT '콘텐츠 명',
  `contents` blob DEFAULT NULL COMMENT '콘텐츠 데이터',
  `streaming_url` varchar(4000) DEFAULT NULL COMMENT '스트리밍 url',
  `collect_ver` varchar(45) DEFAULT NULL COMMENT '수집 버전',
  `collect_time` datetime DEFAULT NULL COMMENT '수집 시간',
  `lead_time` varchar(45) DEFAULT NULL COMMENT '소요시간(초)',
  `confirm_flag` char(1) DEFAULT 'n' COMMENT '분석 여부 플래그',
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11874 DEFAULT CHARSET=utf8 COMMENT='수집 데이터 저장';
 * 
 */


package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class Osp_Monitoring_InfoVO {

	private int id = 0;
	private String terminal_id = null;
	private int seed_id = 0;
	private String site_name = null;
	private String host = null;
	private String url = null;
	private String title = null;
	private String contents_name = null;
	private String contents = null;
	private String streaming_url = null;
	private String collect_ver = null;
	private String collect_time = null;
	private String lead_time = null;
	private String confirm_flag = null;
	private int post_id = 0;
	
	
	//사이트별 합
	private int tot_sitesum = 0;
	
	//전체 합
	private int all_sum = 0;
	
	
	
	
	
	/**
	 * @return all_sum
	 */
	public int getAll_sum() {
		return all_sum;
	}
	/**
	 * @param all_sum 설정할 all_sum
	 */
	public void setAll_sum(int all_sum) {
		this.all_sum = all_sum;
	}
	/**
	 * @return tot_sitesum
	 */
	public int getTot_sitesum() {
		return tot_sitesum;
	}
	/**
	 * @param tot_sitesum 설정할 tot_sitesum
	 */
	public void setTot_sitesum(int tot_sitesum) {
		this.tot_sitesum = tot_sitesum;
	}
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
	 * @return terminal_id
	 */
	public String getTerminal_id() {
		return terminal_id;
	}
	/**
	 * @param terminal_id 설정할 terminal_id
	 */
	public void setTerminal_id(String terminal_id) {
		this.terminal_id = terminal_id;
	}
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
	 * @return url
	 */
	public String getUrl() {
		return url;
	}
	/**
	 * @param url 설정할 url
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * @return title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title 설정할 title
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return contents_name
	 */
	public String getContents_name() {
		return contents_name;
	}
	/**
	 * @param contents_name 설정할 contents_name
	 */
	public void setContents_name(String contents_name) {
		this.contents_name = contents_name;
	}
	/**
	 * @return contents
	 */
	public String getContents() {
		return contents;
	}
	/**
	 * @param contents 설정할 contents
	 */
	public void setContents(String contents) {
		this.contents = contents;
	}
	/**
	 * @return streaming_url
	 */
	public String getStreaming_url() {
		return streaming_url;
	}
	/**
	 * @param streaming_url 설정할 streaming_url
	 */
	public void setStreaming_url(String streaming_url) {
		this.streaming_url = streaming_url;
	}
	/**
	 * @return collect_ver
	 */
	public String getCollect_ver() {
		return collect_ver;
	}
	/**
	 * @param collect_ver 설정할 collect_ver
	 */
	public void setCollect_ver(String collect_ver) {
		this.collect_ver = collect_ver;
	}
	/**
	 * @return lead_time
	 */
	public String getLead_time() {
		return lead_time;
	}
	/**
	 * @param lead_time 설정할 lead_time
	 */
	public void setLead_time(String lead_time) {
		this.lead_time = lead_time;
	}
	/**
	 * @return confirm_flag
	 */
	public String getConfirm_flag() {
		return confirm_flag;
	}
	/**
	 * @param confirm_flag 설정할 confirm_flag
	 */
	public void setConfirm_flag(String confirm_flag) {
		this.confirm_flag = confirm_flag;
	}
	/**
	 * @return post_id
	 */
	public int getPost_id() {
		return post_id;
	}
	/**
	 * @param post_id 설정할 post_id
	 */
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	/**
	 * @return collect_time
	 */
	public String getCollect_time() {
		return collect_time;
	}
	/**
	 * @param collect_time 설정할 collect_time
	 */
	public void setCollect_time(String collect_time) {
		this.collect_time = collect_time;
	}
	
	
	
}
