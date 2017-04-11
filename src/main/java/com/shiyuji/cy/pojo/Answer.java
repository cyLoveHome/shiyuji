package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 回答实体
 */
public class Answer {

	private String aId;
	
	private String qId;
	
	private String uId;
	
	private String aInfo;
	
	private long aTime;

	public Answer() {
	}

	public Answer( String qId, String uId, String aInfo) {
		this.aId = UUID.randomUUID()+"";
		this.qId = qId;
		this.uId = uId;
		this.aInfo = aInfo;
		this.aTime = System.currentTimeMillis();
	}

	public String getaId() {
		return aId;
	}

	public void setaId(String aId) {
		this.aId = aId;
	}

	public String getqId() {
		return qId;
	}

	public void setqId(String qId) {
		this.qId = qId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getaInfo() {
		return aInfo;
	}

	public void setaInfo(String aInfo) {
		this.aInfo = aInfo;
	}

	public long getaTime() {
		return aTime;
	}

	public void setaTime(long aTime) {
		this.aTime = aTime;
	}

	@Override
	public String toString() {
		return "Answer [aId=" + aId + ", qId=" + qId + ", uId=" + uId + ", aInfo=" + aInfo + ", aTime=" + aTime + "]";
	}
	
	
}
