package com.shiyuji.cy.pojo;
/**
 * 用户角色实体类
 * @author cy
 *
 */
public class Role {
	private String rId;//角色编号
	
	private String rName;//角色名
	
	public Role() {
	}

	public Role(String rId, String rName) {
		this.rId = rId;
		this.rName = rName;
	}

	public String getrId() {
		return rId;
	}

	public void setrId(String rId) {
		this.rId = rId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}
	

}
