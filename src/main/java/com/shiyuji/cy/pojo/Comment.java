package com.shiyuji.cy.pojo;
/**
 * 评论实体
 * @author cy
 *
 */
public class Comment {
	private String uId;
	
	private String mId;
	
	private String comment_info;
	
	private long comment_time = System.currentTimeMillis();

	public Comment() {
	}

	public Comment(String uId, String mId, String comment_info, long comment_time) {
		this.uId = uId;
		this.mId = mId;
		this.comment_info = comment_info;
		this.comment_time = comment_time;
	}
	

	public Comment(String uId, String mId, String comment_info) {
		this.uId = uId;
		this.mId = mId;
		this.comment_info = comment_info;
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

	public String getComment_info() {
		return comment_info;
	}

	public void setComment_info(String comment_info) {
		this.comment_info = comment_info;
	}

	public long getComment_time() {
		return comment_time;
	}

	public void setComment_time(long comment_time) {
		this.comment_time = comment_time;
	}
	
	

}
