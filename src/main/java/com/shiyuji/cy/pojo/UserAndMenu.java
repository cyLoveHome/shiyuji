package com.shiyuji.cy.pojo;

public class UserAndMenu {

	private User u;
	
	private Menu menu;

	public UserAndMenu() {
	}

	public UserAndMenu(User u, Menu menu) {
		this.u = u;
		this.menu = menu;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	
	
}
