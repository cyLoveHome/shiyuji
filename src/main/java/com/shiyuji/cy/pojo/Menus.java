package com.shiyuji.cy.pojo;

import java.util.UUID;

/**
 * 菜单实体类
 * @author cy
 *
 */
public class Menus {
	private String msId;
	
	private String uId;
	
	private String msName;
	
	private String msInfo;
	
	private long create_time = System.currentTimeMillis();
	
	private int state = 1; //1 在库  0 删除;
	
	//以下不存数据库
	private String menusCollectNum = "0"; //被收藏总数
	
	private String isCollect;//是否被当前用户收藏
	
	private String collMenu = "0";//收藏的菜谱总数

	public Menus() {
	}

	public Menus(String uId, String msName, String msInfo) {
		this.msId = UUID.randomUUID()+"";
		this.uId = uId;
		this.msName = msName;
		this.msInfo = msInfo;
	}

	public String getMsId() {
		return msId;
	}

	public void setMsId(String msId) {
		this.msId = msId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getMsName() {
		return msName;
	}

	public void setMsName(String msName) {
		this.msName = msName;
	}

	public String getMsInfo() {
		return msInfo;
	}

	public void setMsInfo(String msInfo) {
		this.msInfo = msInfo;
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

	public String getMenusCollectNum() {
		return menusCollectNum;
	}

	public void setMenusCollectNum(String menusCollectNum) {
		this.menusCollectNum = menusCollectNum;
	}

	public String getIsCollect() {
		return isCollect;
	}

	public void setIsCollect(String isCollect) {
		this.isCollect = isCollect;
	}

	public String getCollMenu() {
		return collMenu;
	}

	public void setCollMenu(String collMenu) {
		this.collMenu = collMenu;
	} 
	
}
