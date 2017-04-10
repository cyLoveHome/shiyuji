package com.shiyuji.cy.pojo;
/**
 * 菜谱收藏实体
 * @author cy
 *
 */
public class Menu_collect {
	private String uId;
	
	private String mId;
	
	private long collect_time = System.currentTimeMillis();

	public Menu_collect() {
	}

	public Menu_collect(String uId, String mId, long collect_time) {
		this.uId = uId;
		this.mId = mId;
		this.collect_time = collect_time;
	}
	
	public Menu_collect(String uId, String mId) {
		super();
		this.uId = uId;
		this.mId = mId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public long getCollect_time() {
		return collect_time;
	}

	public void setCollect_time(long collect_time) {
		this.collect_time = collect_time;
	}
	
	

}
