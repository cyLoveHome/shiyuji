package com.shiyuji.cy.pojo;
/**
 * 菜单-菜谱实体
 * @author cy
 *
 */
public class Menus_menu {
	private String mId;
	
	private String msId;

	public Menus_menu() {
	}

	public Menus_menu(String mId, String msId) {
		this.mId = mId;
		this.msId = msId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getMsId() {
		return msId;
	}

	public void setMsId(String msId) {
		this.msId = msId;
	}
	
	

}
