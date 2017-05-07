package com.shiyuji.cy.pojo;

public class UserAndMenus {

	private User u;
	
	private Menus menus;

	public UserAndMenus() {
	}

	public UserAndMenus(User u, Menus menus) {
		this.u = u;
		this.menus = menus;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Menus getMenus() {
		return menus;
	}

	public void setMenus(Menus menus) {
		this.menus = menus;
	}

	
	
}
