package com.shiyuji.cy.pojo;

import java.util.List;

public class UserAndReport {
	
	private Report r;
	
	private ReportUser ru;
	
	private User u;//举报人
	
	private User rus;//被举报人
	
	private Menu m;
	
	public UserAndReport() {
	}

	public UserAndReport(Report r, ReportUser ru, User u, Menu m) {
		super();
		this.r = r;
		this.ru = ru;
		this.u = u;
		this.m = m;
	}

	public Report getR() {
		return r;
	}

	public void setR(Report r) {
		this.r = r;
	}

	public ReportUser getRu() {
		return ru;
	}

	public void setRu(ReportUser ru) {
		this.ru = ru;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Menu getM() {
		return m;
	}

	public void setM(Menu m) {
		this.m = m;
	}

	public User getRus() {
		return rus;
	}

	public void setRus(User rus) {
		this.rus = rus;
	}
	
	
	
	
	
	
	

}
