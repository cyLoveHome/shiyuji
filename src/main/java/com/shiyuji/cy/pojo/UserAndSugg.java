package com.shiyuji.cy.pojo;

public class UserAndSugg {
	private User u;
	private Suggest s;
	public UserAndSugg() {
	}
	public UserAndSugg(User u, Suggest s) {
		this.u = u;
		this.s = s;
	}
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	public Suggest getS() {
		return s;
	}
	public void setS(Suggest s) {
		this.s = s;
	}
	
	
	

}
