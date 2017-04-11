package com.shiyuji.cy.pojo;
/**
 * 好友实体
 * @author cy
 *
 */
public class Friend {
	private String uId;
	
	private String fId;
	
	private long focus_time = System.currentTimeMillis();

	public Friend() {
	}

	public Friend(String uId, String fId, long focus_time) {
		this.uId = uId;
		this.fId = fId;
		this.focus_time = focus_time;
	}
	
	public Friend(String uId, String fId) {
		super();
		this.uId = uId;
		this.fId = fId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getfId() {
		return fId;
	}

	public void setfId(String fId) {
		this.fId = fId;
	}

	public long getFocus_time() {
		return focus_time;
	}

	public void setFocus_time(long focus_time) {
		this.focus_time = focus_time;
	}
	
	

}
