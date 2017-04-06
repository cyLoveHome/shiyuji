package com.shiyuji.cy.pojo;
/**
 * 点赞实体
 * @author cy
 *
 */
public class Like {
	private String uId;
	
	private String mId;
	
	private long like_time;

	public Like() {
	}

	public Like(String uId, String mId, long like_time) {
		this.uId = uId;
		this.mId = mId;
		this.like_time = like_time;
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

	public long getLike_time() {
		return like_time;
	}

	public void setLike_time(long like_time) {
		this.like_time = like_time;
	}
	
	

}
