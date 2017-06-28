/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Terminal_InfoVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 터미널 정보 벨류 오브젝트
 * 
 *  CREATE TABLE IF NOT EXISTS `osp_terminal_info` (
  `terminal_id` int(11) NOT NULL,
  `os` varchar(45) DEFAULT NULL,
  `os_ver` varchar(45) DEFAULT NULL,
  `sw_ver` varchar(45) DEFAULT NULL,
  `working_flag` char(1) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `monitoring_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`terminal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 */
package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class Osp_Terminal_InfoVO {
	
	private int terminal_id = 0;
	private String os = null;
	private String os_ver = null;
	private String sw_ver = null;
	private String working_flag = null;
	private String start_time = null;
	private String end_time = null;
	private String host = null;
	private String monitoring_site = null;
	
	private int sum_terminal = 0; //돌고있는 터미널 총 갯수 
	
	
	
	
	/**
	 * @return sum_terminal
	 */
	public int getSum_terminal() {
		return sum_terminal;
	}
	/**
	 * @param sum_terminal 설정할 sum_terminal
	 */
	public void setSum_terminal(int sum_terminal) {
		this.sum_terminal = sum_terminal;
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
	 * @return os
	 */
	public String getOs() {
		return os;
	}
	/**
	 * @param os 설정할 os
	 */
	public void setOs(String os) {
		this.os = os;
	}
	/**
	 * @return os_ver
	 */
	public String getOs_ver() {
		return os_ver;
	}
	/**
	 * @param os_ver 설정할 os_ver
	 */
	public void setOs_ver(String os_ver) {
		this.os_ver = os_ver;
	}
	/**
	 * @return sw_ver
	 */
	public String getSw_ver() {
		return sw_ver;
	}
	/**
	 * @param sw_ver 설정할 sw_ver
	 */
	public void setSw_ver(String sw_ver) {
		this.sw_ver = sw_ver;
	}
	/**
	 * @return working_flag
	 */
	public String getWorking_flag() {
		return working_flag;
	}
	/**
	 * @param working_flag 설정할 working_flag
	 */
	public void setWorking_flag(String working_flag) {
		this.working_flag = working_flag;
	}
	/**
	 * @return start_time
	 */
	public String getStart_time() {
		return start_time;
	}
	/**
	 * @param start_time 설정할 start_time
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
	 * @param end_time 설정할 end_time
	 */
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
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
	 * @return monitoring_site
	 */
	public String getMonitoring_site() {
		return monitoring_site;
	}
	/**
	 * @param monitoring_site 설정할 monitoring_site
	 */
	public void setMonitoring_site(String monitoring_site) {
		this.monitoring_site = monitoring_site;
	}
	
	
	
}
