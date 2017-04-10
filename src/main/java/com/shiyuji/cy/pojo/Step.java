package com.shiyuji.cy.pojo;
/**
 *菜谱步骤
 * @author cy
 *
 */
public class Step {
	private String stepInfo;
	
	/*private String stepPic;*/
	

	public Step() {
	}

	public Step(String stepInfo) {
		this.stepInfo = stepInfo;
	}


	public String getStepInfo() {
		return stepInfo;
	}


	public void setStepInfo(String stepInfo) {
		this.stepInfo = stepInfo;
	}


}
