/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Seed_Url_Result_InfoVO.java
 * @�ۼ���       : 2017. 6. 16. 
 * @�ۼ���       : ������
 * @���α׷� ���� :  �õ� URL ���� ��� ���� ���� ������Ʈ
 * 
 *
 CREATE TABLE IF NOT EXISTS `osp_seed_url_result_info` (
  `seed_id` int(11) NOT NULL DEFAULT 0,
  `terminal_id` int(11) DEFAULT NULL,
  `url` varchar(5000) DEFAULT NULL,
  `startTime` datetime DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime DEFAULT NULL,
  `isSuccess` int(2) DEFAULT 0,
  `failPage` int(10) DEFAULT 0,
  `successPage` int(10) DEFAULT 0,
  `totalPage` int(10) DEFAULT 0,
  PRIMARY KEY (`seed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Seed URL ���� �Ϸ� ����';
 
 */


package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class Osp_Seed_Url_Result_InfoVO {

	private int seed_id = 0;
	private int terminal_id = 0;
	private String url = null;
	private String starttime = null;
	private String endtime = null;
	private int issuccess = 0;
	private int failpage = 0;
	private int successpage = 0;
	private int totalpage = 0;
	/**
	 * @return seed_id
	 */
	public int getSeed_id() {
		return seed_id;
	}
	/**
	 * @param seed_id ������ seed_id
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
	 * @param terminal_id ������ terminal_id
	 */
	public void setTerminal_id(int terminal_id) {
		this.terminal_id = terminal_id;
	}
	/**
	 * @return url
	 */
	public String getUrl() {
		return url;
	}
	/**
	 * @param url ������ url
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * @return starttime
	 */
	public String getStarttime() {
		return starttime;
	}
	/**
	 * @param starttime ������ starttime
	 */
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	/**
	 * @return endtime
	 */
	public String getEndtime() {
		return endtime;
	}
	/**
	 * @param endtime ������ endtime
	 */
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	/**
	 * @return issuccess
	 */
	public int getIssuccess() {
		return issuccess;
	}
	/**
	 * @param issuccess ������ issuccess
	 */
	public void setIssuccess(int issuccess) {
		this.issuccess = issuccess;
	}
	/**
	 * @return failpage
	 */
	public int getFailpage() {
		return failpage;
	}
	/**
	 * @param failpage ������ failpage
	 */
	public void setFailpage(int failpage) {
		this.failpage = failpage;
	}
	/**
	 * @return successpage
	 */
	public int getSuccesspage() {
		return successpage;
	}
	/**
	 * @param successpage ������ successpage
	 */
	public void setSuccesspage(int successpage) {
		this.successpage = successpage;
	}
	/**
	 * @return totalpage
	 */
	public int getTotalpage() {
		return totalpage;
	}
	/**
	 * @param totalpage ������ totalpage
	 */
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	
	
	
	
	
	
	
}
