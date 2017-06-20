/**
 * @Package Name   : com.mwstory.streamingmonitor.Vo
 * @FileName  : UserVO.java
 * @작성일       : 2017. 6. 16. 
 * @작성자       : 김진수
 * @프로그램 설명 : 로그인 벨류 오브젝트
 * 
CREATE TABLE `user_tbl` (
	`user_no` INT(11) NOT NULL,
	`email_id` VARCHAR(50) NOT NULL,
	`password` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`user_no`)
)
COMMENT='로그인 위한 테이블'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

insert into user_tbl values(1,'jinsu','mwstory');
insert into user_tbl values(2,'system','mwstory');
insert into user_tbl values(3,'root','mwstory');
insert into user_tbl values(4,'admin','mwstory');
 */


package com.mwstory.streamingmonitor.Vo;

/**
 * @author Jinsu
 *
 */
public class UserVO {
	
	private int user_no = 0;
	private String email_id = null;
	private String password = null;
	/**
	 * @return user_no
	 */
	public int getUser_no() {
		return user_no;
	}
	/**
	 * @param user_no 설정할 user_no
	 */
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	/**
	 * @return email_id
	 */
	public String getEmail_id() {
		return email_id;
	}
	/**
	 * @param email_id 설정할 email_id
	 */
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password 설정할 password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
