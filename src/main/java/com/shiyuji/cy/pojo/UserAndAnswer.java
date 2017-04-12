package com.shiyuji.cy.pojo;

public class UserAndAnswer {

	private User u;
	
	private Answer ans;

	public UserAndAnswer() {
	}

	public UserAndAnswer(User u, Answer ans) {
		this.u = u;
		this.ans = ans;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Answer getAns() {
		return ans;
	}

	public void setAns(Answer ans) {
		this.ans = ans;
	}
	
	
}
