package com.shiyuji.cy.pojo;

import java.util.UUID;

import com.shiyuji.cy.utils.MD5Util;

/**
 * 用户实体类
 * @author cy
 *
 */
public class User {
	
	private String uId;
	
	private String uName;
	
	private String password;
	
	private String rId = "0"; //普通用户为0  超级管理员为1
	
	private String bindEmail;
	
	private String code;//激活码
	
	private int state = 0;//   0--账号正常     1--封号
	
	private String headPic = "user.png";
	
	private int sex = 1;
	
	private long birth;
	
	private String hometown;
	
	private long createTime;
	
	private String uInfo;
	
	//以下不存数据库
	private String focusNum = "0"; //被关注人数
	
	private String toFocusNum = "0"; //关注人数
	
	private String menuNum = "0";//菜谱总数
	
	private String menusNum = "0";//菜单总数
	
	private String isFriend;//是否与该用户是好友关系
	
	public User() {
	}

	
	public User(String uId, String uName, String password, String rId, String bindEmail, String code, int state,
			String headPic, int sex, long birth, String hometown, String uInfo) {
		this.uId = UUID.randomUUID()+"";
		this.uName = uName;
		this.password = password;
		this.rId = rId;
		this.bindEmail = bindEmail;
		this.code = code;
		this.state = state;
		this.headPic = headPic;
		this.sex = sex;
		this.birth = birth;
		this.hometown = hometown;
		this.createTime = System.currentTimeMillis();
		this.uInfo = uInfo;
	}


	public User(String uName, String password, String bindEmail) {
		this.uId = UUID.randomUUID()+"";
		this.uName = uName;
		this.password = MD5Util.encode2hex(password);
		this.bindEmail = bindEmail;
		this.code = MD5Util.encode2hex(bindEmail);
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getrId() {
		return rId;
	}

	public void setrId(String rId) {
		this.rId = rId;
	}


	public String getBindEmail() {
		return bindEmail;
	}


	public void setBindEmail(String bindEmail) {
		this.bindEmail = bindEmail;
	}


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public long getBirth() {
		return birth;
	}

	public void setBirth(long birth) {
		this.birth = birth;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}


	public long getCreateTime() {
		return createTime;
	}


	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}


	public String getuInfo() {
		return uInfo;
	}


	public void setuInfo(String uInfo) {
		this.uInfo = uInfo;
	}


	public String getFocusNum() {
		return focusNum;
	}


	public void setFocusNum(String focusNum) {
		this.focusNum = focusNum;
	}


	
	
	public String getToFocusNum() {
		return toFocusNum;
	}


	public void setToFocusNum(String toFocusNum) {
		this.toFocusNum = toFocusNum;
	}


	public String getMenuNum() {
		return menuNum;
	}


	public void setMenuNum(String menuNum) {
		this.menuNum = menuNum;
	}


	public String getMenusNum() {
		return menusNum;
	}


	public void setMenusNum(String menusNum) {
		this.menusNum = menusNum;
	}

	
	
	public String getIsFriend() {
		return isFriend;
	}


	public void setIsFriend(String isFriend) {
		this.isFriend = isFriend;
	}


	@Override
	public String toString() {
		return "User [uName=" + uName + ", password=" + password + ", bindEmail=" + bindEmail + ", state=" + state
				+ "]";
	}

	

}
