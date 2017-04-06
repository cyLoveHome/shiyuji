package com.shiyuji.cy.pojo;
/**
 * 菜谱分类实体
 * @author cy
 *
 */
public class Menu_classify {
	private String mcId;
	
	private String mcName;

	public Menu_classify() {
	}

	public Menu_classify(String mcId, String mcName) {
		this.mcId = mcId;
		this.mcName = mcName;
	}

	public String getMcId() {
		return mcId;
	}

	public void setMcId(String mcId) {
		this.mcId = mcId;
	}

	public String getMcName() {
		return mcName;
	}

	public void setMcName(String mcName) {
		this.mcName = mcName;
	}
	

}
