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
	
	private String rId;
	
	private String bind_email;
	
	private String code;//激活码
	
	private int state = 0;// 激活状态     0--未激活   1--激活  2--封号
	
	private String headPic;
	
	private int sex = 1;
	
	private long birth;
	
	private String hometown;
	
	private long create_time = System.currentTimeMillis();
	
	private String uInfo;
	
	public User() {
	}

	
	public User(String uId, String uName, String password, String rId, String bind_email, String code, int state,
			String headPic, int sex, long birth, String hometown, long create_time, String uInfo) {
		this.uId = UUID.randomUUID()+"";
		this.uName = uName;
		this.password = password;
		this.rId = rId;
		this.bind_email = bind_email;
		this.code = code;
		this.state = state;
		this.headPic = headPic;
		this.sex = sex;
		this.birth = birth;
		this.hometown = hometown;
		this.create_time = create_time;
		this.uInfo = uInfo;
	}


	public User(String uName, String password, String bind_email) {
		this.uId = UUID.randomUUID()+"";
		this.uName = uName;
		this.password = MD5Util.encode2hex(password);
		this.bind_email = bind_email;
		this.code = MD5Util.encode2hex(bind_email);
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

	public String getBind_email() {
		return bind_email;
	}

	public void setBind_email(String bind_email) {
		this.bind_email = bind_email;
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

	public long getCreate_time() {
		return create_time;
	}

	public void setCreate_time(long create_time) {
		this.create_time = create_time;
	}

	public String getuInfo() {
		return uInfo;
	}

	public void setuInfo(String uInfo) {
		this.uInfo = uInfo;
	}

	@Override
	public String toString() {
		return "User [uName=" + uName + ", password=" + password + ", bind_email=" + bind_email + ", state=" + state
				+ "]";
	}

	

}
