package com.shiyuji.cy.pojo;

import java.util.List;

public class UserAndComment {
	private Comment c;
	private User u;
	
	public UserAndComment() {
	}
	
	public UserAndComment(Comment c, User u) {
		this.c = c;
		this.u = u;
	}
	
	public Comment getC() {
		return c;
	}
	public void setC(Comment c) {
		this.c = c;
	}
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	
	@Override
	public String toString() {
		return "UserAndComment [c=" + c + ", u=" + u + "]";
	}
	
	
	

}
