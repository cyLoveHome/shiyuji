package com.shiyuji.cy.pojo;
/**
 * 菜单实体类
 * @author cy
 *
 */
public class Menu {
	private String mId;//菜单编号
	
	private String uId;//创建人编号
	
	private String mName;
	
	private String mPic;
	
	private String mInfo;
	
	private long create_time;
	
	private String steps;
	
	private int state;

	public Menu() {
	}

	public Menu(String mId, String uId, String mName, String mPic, String mInfo, long create_time, int state) {
		this.mId = mId;
		this.uId = uId;
		this.mName = mName;
		this.mPic = mPic;
		this.mInfo = mInfo;
		this.create_time = create_time;
		this.state = state;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPic() {
		return mPic;
	}

	public void setmPic(String mPic) {
		this.mPic = mPic;
	}

	public String getmInfo() {
		return mInfo;
	}

	public void setmInfo(String mInfo) {
		this.mInfo = mInfo;
	}

	public long getCreate_time() {
		return create_time;
	}

	public void setCreate_time(long create_time) {
		this.create_time = create_time;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	

}
