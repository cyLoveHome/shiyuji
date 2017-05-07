package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 意见反馈实体
 * @author cy
 *
 */
public class Suggest {
	private String uId;
	
	private String sId;
	
	private String sInfo;
	
	private long createTime ;

	public Suggest() {
	}

	public Suggest(String uId, String sInfo) {
		this.uId = uId;
		this.sId = UUID.randomUUID()+"";
		this.sInfo = sInfo;
		this.createTime = System.currentTimeMillis();
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getsId() {
		return sId;
	}

	public void setsId(String sId) {
		this.sId = sId;
	}

	public String getsInfo() {
		return sInfo;
	}

	public void setsInfo(String sInfo) {
		this.sInfo = sInfo;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	

}
