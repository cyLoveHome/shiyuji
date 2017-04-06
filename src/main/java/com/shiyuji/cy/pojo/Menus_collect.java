package com.shiyuji.cy.pojo;
/**
 * 菜单收藏实体
 * @author cy
 *
 */
public class Menus_collect {
	private String uId;
	
	private String msId;
	
	private long collect_time;

	public Menus_collect() {
	}

	public Menus_collect(String uId, String msId, long collect_time) {
		this.uId = uId;
		this.msId = msId;
		this.collect_time = collect_time;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getMsId() {
		return msId;
	}

	public void setMsId(String msId) {
		this.msId = msId;
	}

	public long getCollect_time() {
		return collect_time;
	}

	public void setCollect_time(long collect_time) {
		this.collect_time = collect_time;
	}
	
	

}
