package com.shiyuji.cy.pojo;
/**
 * 菜谱-菜谱分类实体
 * @author cy
 *
 */
public class Mc_menu {
	private String mId;
	
	private String mcId;
	
	public Mc_menu() {
	}

	public Mc_menu(String mId, String mcId) {
		this.mId = mId;
		this.mcId = mcId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getMcId() {
		return mcId;
	}

	public void setMcId(String mcId) {
		this.mcId = mcId;
	}
	
	
	
}
