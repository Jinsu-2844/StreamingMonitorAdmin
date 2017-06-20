/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : Osp_Url_Meta_InfoVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 수집 메타 정보 벨류 오브젝트
 * 
 CREATE TABLE IF NOT EXISTS `osp_url_meta_info` (
  `seed_id` int(11) NOT NULL DEFAULT 0,
  `terminal_id` varchar(45) DEFAULT NULL,
  `urlID` int(11) NOT NULL DEFAULT 0,
  `url` varchar(5000) DEFAULT NULL,
  `host` varchar(500) DEFAULT NULL,
  `startTime` datetime DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime DEFAULT '0000-00-00 00:00:00',
  `isSuccess` int(2) DEFAULT 0,
  `retryCnt` int(2) DEFAULT 0,
  `depth` int(5) DEFAULT 0,
  `failReason` varchar(500) DEFAULT NULL,
  `fileType` varchar(10) DEFAULT NULL,
  `fileSize` int(10) DEFAULT 0,
  `filePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='수집 메타 정보';
 
 */
package com.mwstory.streamingmonitor.Vo;
/**
 * @author Jinsu
 *
 */
public class Osp_Url_Meta_InfoVO {

	private int seed_id = 0;
	private String terminal_id = null;
	private int urlid = 0;
	private String url = null;
	private String host = null;
	private String starttime = null;
	private String endtime = null;
	private int issuccess = 0;
	private int retrycnt = 0;
	private int depth = 0;
	private String failreason = null;
	private String filetype = null;
	private int filesize = 0;
	private String filepath = null;
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
	 * @return urlid
	 */
	public int getUrlid() {
		return urlid;
	}
	/**
	 * @param urlid 설정할 urlid
	 */
	public void setUrlid(int urlid) {
		this.urlid = urlid;
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
	 * @return starttime
	 */
	public String getStarttime() {
		return starttime;
	}
	/**
	 * @param starttime 설정할 starttime
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
	 * @param endtime 설정할 endtime
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
	 * @param issuccess 설정할 issuccess
	 */
	public void setIssuccess(int issuccess) {
		this.issuccess = issuccess;
	}
	/**
	 * @return retrycnt
	 */
	public int getRetrycnt() {
		return retrycnt;
	}
	/**
	 * @param retrycnt 설정할 retrycnt
	 */
	public void setRetrycnt(int retrycnt) {
		this.retrycnt = retrycnt;
	}
	/**
	 * @return depth
	 */
	public int getDepth() {
		return depth;
	}
	/**
	 * @param depth 설정할 depth
	 */
	public void setDepth(int depth) {
		this.depth = depth;
	}
	/**
	 * @return failreason
	 */
	public String getFailreason() {
		return failreason;
	}
	/**
	 * @param failreason 설정할 failreason
	 */
	public void setFailreason(String failreason) {
		this.failreason = failreason;
	}
	/**
	 * @return filetype
	 */
	public String getFiletype() {
		return filetype;
	}
	/**
	 * @param filetype 설정할 filetype
	 */
	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}
	/**
	 * @return filesize
	 */
	public int getFilesize() {
		return filesize;
	}
	/**
	 * @param filesize 설정할 filesize
	 */
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	/**
	 * @return filepath
	 */
	public String getFilepath() {
		return filepath;
	}
	/**
	 * @param filepath 설정할 filepath
	 */
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	
	
	
}
