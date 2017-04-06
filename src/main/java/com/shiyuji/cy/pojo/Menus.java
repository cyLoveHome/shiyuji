package com.shiyuji.cy.pojo;
/**
 * 菜单实体类
 * @author cy
 *
 */
public class Menus {
	private String msId;
	
	private String uId;
	
	private String msName;
	
	private String msInfo;
	
	private long create_time;
	
	private int state;

	public Menus() {
	}

	public Menus(String msId, String uId, String msName, String msInfo, long create_time, int state) {
		this.msId = msId;
		this.uId = uId;
		this.msName = msName;
		this.msInfo = msInfo;
		this.create_time = create_time;
		this.state = state;
	}

	public String getMsId() {
		return msId;
	}

	public void setMsId(String msId) {
		this.msId = msId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getMsName() {
		return msName;
	}

	public void setMsName(String msName) {
		this.msName = msName;
	}

	public String getMsInfo() {
		return msInfo;
	}

	public void setMsInfo(String msInfo) {
		this.msInfo = msInfo;
	}

	public long getCreate_time() {
		return create_time;
	}

	public void setCreate_time(long create_time) {
		this.create_time = create_time;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	} 
	
	
}
