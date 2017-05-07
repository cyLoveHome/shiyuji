package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 菜谱实体类
 * @author cy
 *
 */
public class Menu {
	private String mId;//菜谱编号
	
	private String uId;//创建人编号
	
	private String mName;
	
	private String mPic;
	
	private String mInfo = "美好的食物总是让人愉悦！";
	
	private long create_time = System.currentTimeMillis();
	
	private String shicai;
	
	private String steps;
	
	private int state = 1; //1 在库  0 删除
	
	//以下不存数据库，查出放在one_menu中
	private String likeNum = "0";//点赞总数

	private String commentNum = "0";//评论总数
	
	private String menuCollectNum = "0"; //收藏总数
	
	private String isUnLike;//是否被当前用户点赞
	
	private String isCollect;//是否被当前用户收藏
	
	public Menu() {
	}


	public Menu(String mId, String uId, String mName, String mPic, String mInfo, long create_time, String shicai,String steps,
			int state) {
		this.mId = UUID.randomUUID()+"";
		this.uId = uId;
		this.mName = mName;
		this.mPic = mPic;
		this.mInfo = mInfo;
		this.create_time = create_time;
		this.steps = steps;
		this.state = state;
	}

	public Menu(String mName, String mPic, String mInfo, String shicai, String steps) {
		this.mId = UUID.randomUUID()+"";
		this.mName = mName;
		this.mPic = mPic;
		this.mInfo = mInfo;
		this.shicai = shicai;
		this.steps = steps;
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

	public String getLikeNum() {
		return likeNum;
	}


	public void setLikeNum(String likeNum) {
		this.likeNum = likeNum;
	}


	public String getCommentNum() {
		return commentNum;
	}


	public void setCommentNum(String commentNum) {
		this.commentNum = commentNum;
	}


	public String getMenuCollectNum() {
		return menuCollectNum;
	}


	public void setMenuCollectNum(String menuCollectNum) {
		this.menuCollectNum = menuCollectNum;
	}


	public String getIsCollect() {
		return isCollect;
	}


	public void setIsCollect(String isCollect) {
		this.isCollect = isCollect;
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

	public String getSteps() {
		return steps;
	}

	public void setSteps(String steps) {
		this.steps = steps;
	}


	public String getShicai() {
		return shicai;
	}


	public void setShicai(String shicai) {
		this.shicai = shicai;
	}


	public String getIsUnLike() {
		return isUnLike;
	}


	public void setIsUnLike(String isUnLike) {
		this.isUnLike = isUnLike;
	}
	
	

}
