package com.shiyuji.cy.pojo;
/**
 *菜谱步骤
 * @author cy
 *
 */
public class Step {
	private String stepInfo;
	
	private String stepPic;
	

	public Step() {
	}

	public Step(String stepInfo, String stepPic) {
		this.stepInfo = stepInfo;
		this.stepPic = stepPic;
	}


	public String getStepInfo() {
		return stepInfo;
	}


	public void setStepInfo(String stepInfo) {
		this.stepInfo = stepInfo;
	}


	public String getStepPic() {
		return stepPic;
	}


	public void setStepPic(String stepPic) {
		this.stepPic = stepPic;
	}
	

}
