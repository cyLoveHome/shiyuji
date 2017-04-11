package com.shiyuji.cy.pojo;
/**
 * 举报实体
 * @author cy
 *
 */
public class Report {
	private String uId;
	
	private String mId;
	
	private String cause;
	
	private long report_time;

	public Report() {
	}

	public Report(String uId, String mId, String cause) {
		this.uId = uId;
		this.mId = mId;
		this.cause = cause;
		this.report_time = System.currentTimeMillis();
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

	public long getReport_time() {
		return report_time;
	}

	public void setReport_time(long report_time) {
		this.report_time = report_time;
	}
	
	

}
