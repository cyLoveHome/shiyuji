package com.shiyuji.cy.pojo;

public class UserAndQuestion {
	private User us;
	
	private Question que;

	public UserAndQuestion() {
	}

	public UserAndQuestion(User us, Question que) {
		this.us = us;
		this.que = que;
	}

	public User getUs() {
		return us;
	}

	public void setUs(User us) {
		this.us = us;
	}

	public Question getQue() {
		return que;
	}

	public void setQue(Question que) {
		this.que = que;
	}

	@Override
	public String toString() {
		return "UserAndQuestion [us=" + us + ", que=" + que + "]";
	}
	
	

}
