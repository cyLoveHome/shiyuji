package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 举报菜谱实体
 * @author cy
 *
 */
public class Report {
	
	private String reId;
	
	private String uId;
	
	private String mId;
	
	private String cause;
	
	private long reportTime;

	public Report() {
	}

	public Report(String uId, String mId, String cause) {
		this.reId = UUID.randomUUID()+"";
		this.uId = uId;
		this.mId = mId;
		this.cause = cause;
		this.reportTime = System.currentTimeMillis();
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

	public String getCause() {
		return cause;
	}

	public void setCause(String cause) {
		this.cause = cause;
	}

	public long getReportTime() {
		return reportTime;
	}

	public void setReportTime(long reportTime) {
		this.reportTime = reportTime;
	}

	public String getReId() {
		return reId;
	}

	public void setReId(String reId) {
		this.reId = reId;
	}

	
	
	

}
