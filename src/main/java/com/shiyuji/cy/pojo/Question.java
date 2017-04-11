package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 问题实体
 */
public class Question {

	private String qId;
	
	private String uId;
	
	private String qTitle;
	
	private String qInfo = "我是一个热爱美食，并且好学的厨友！";
	
	private long createTime;
	
	//以下不存数据库
	private String answerNum = "0";

	public Question() {
	}

	public Question(String uId, String qTitle, String qInfo) {
		this.qId = UUID.randomUUID()+"";
		this.uId = uId;
		this.qTitle = qTitle;
		this.qInfo = qInfo;
		this.createTime = System.currentTimeMillis();
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

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqInfo() {
		return qInfo;
	}

	public void setqInfo(String qInfo) {
		this.qInfo = qInfo;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getAnswerNum() {
		return answerNum;
	}

	public void setAnswerNum(String answerNum) {
		this.answerNum = answerNum;
	}

	@Override
	public String toString() {
		return "Question [qId=" + qId + ", uId=" + uId + ", qTitle=" + qTitle + ", qInfo=" + qInfo + ", createTime="
				+ createTime + "]";
	}
	
	
}
