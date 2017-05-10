package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 举报用户实体
 * @author cy
 *
 */
public class ReportUser {
	private String reId;
	
	private String uId;
	
	private String ruId;
	
	private String cause;
	
	private long reportTime;

	public ReportUser() {
	}

	public ReportUser(String uId, String ruId, String cause) {
		this.reId = UUID.randomUUID()+"";
		this.uId = uId;
		this.ruId = ruId;
		this.cause = cause;
		this.reportTime = System.currentTimeMillis();
	}

	public String getReId() {
		return reId;
	}

	public void setReId(String reId) {
		this.reId = reId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getRuId() {
		return ruId;
	}

	public void setRuId(String ruId) {
		this.ruId = ruId;
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

	
	

}
