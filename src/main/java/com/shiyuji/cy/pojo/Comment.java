package com.shiyuji.cy.pojo;
/**
 * 评论实体
 * @author cy
 *
 */
public class Comment {
	private String uId;
	
	private String mId;
	
	private String commentInfo;
	
	private long commentTime ;

	public Comment() {
	}

	public Comment(String uId, String mId, String commentInfo) {
		this.uId = uId;
		this.mId = mId;
		this.commentInfo = commentInfo;
		this.commentTime = System.currentTimeMillis();
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

	public String getCommentInfo() {
		return commentInfo;
	}

	public void setCommentInfo(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public long getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(long commentTime) {
		this.commentTime = commentTime;
	}

	@Override
	public String toString() {
		return "Comment [uId=" + uId + ", mId=" + mId + ", commentInfo=" + commentInfo + ", commentTime=" + commentTime
				+ "]";
	}

	

}
