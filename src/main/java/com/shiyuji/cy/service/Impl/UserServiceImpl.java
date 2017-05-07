package com.shiyuji.cy.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.UserDao;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.UserService;
import com.shiyuji.cy.utils.MD5Util;
import com.shiyuji.cy.utils.SendEmail;

@Service
public class UserServiceImpl implements UserService{
	
	private static final String ACTIVATE_URL = "http://localhost:8080/shiyuji/user/activate";
	private static final String FINDPWD_URL = "http://localhost:8080/shiyuji/user/findpwd?action=verify";
	@Autowired
	private UserDao userDao;
	
	@Override
	public boolean reg(String uName, String password, String bindEmail) {
		boolean isSuccess = false;
		User user = new User(uName, password, bindEmail);
		int rowNum = userDao.addUser(user);
		isSuccess = rowNum>0;
		return isSuccess;
	}

	@Override
	public boolean activate(String bindEmail, String code) {
		boolean isActivate = false;
		User user  = userDao.selectByEmailAddress(bindEmail);
		if(user!=null && code.equals(user.getCode())){
			user.setState(1);//账户激活
			int affectRow = userDao.updateUser(user);
			isActivate = affectRow>0;
		}
		return isActivate;
	}

	@Override
	public User login(String loginType, String password) {
		User user = null;
		password = MD5Util.encode2hex(password);
		user = userDao.selectByName(loginType, password);//用户名登录
		if(user == null){
			if(userDao.selectByEmailAddress(loginType)!=null){
				if(userDao.selectByEmailAddress(loginType).getState() == 0){
					user = userDao.selectByEmail(loginType, password);//邮箱登录
				}
			}
		}
		return user;
	}

	@Override
	public List<User> selectUser(String uName) {
		List<User> list = new ArrayList<>();
		list = userDao.selectByUname(uName);
		return list;
	}

	@Override
	public User SelectByUid(String uId) {
		return userDao.selectByUid(uId);
	}
	
	@Override
	public List<User> selectUsers(String uId) {
		return userDao.selectUsers(uId);
	}
	
	@Override
	public List<User> selectRandEightUsers(String uId) {
		return userDao.selectRandEightUsers(uId);
	}
	

	@Override
	public boolean deleteByUid(String uId) {
		return userDao.deleteByUid(uId)>0;
	}
	
	
	//处理注册 发送邮件
	private boolean processReg(String bindEmail,String code,String method){
		 ///邮件的内容  
        String mailInfo = generatMailInfo(bindEmail, code, method);
      //发送邮件  
        return SendEmail.send(bindEmail, mailInfo.toString());
        
	}
	//产生邮件
	private String generatMailInfo(String bind_email,String email_code,String method){
		StringBuffer mailInfo=new StringBuffer();
		if("reg".equals(method)){
			mailInfo.append("点击下面链接激活账号，10分钟内有效，否则重新注册账号，链接只能使用一次，请尽快激活！<br/>");
			mailInfo.append("<a href='"+ACTIVATE_URL+"?email=");  
		    mailInfo.append(bind_email);   
		    mailInfo.append("&validateCode=");   
		    mailInfo.append(email_code);  
		    mailInfo.append("'>点此激活");   
		    mailInfo.append("</a>");
		}else if("findpwd".equals(method)){
			mailInfo.append("点击下面链接找回密码，10分钟内有效，否则重新发送，链接只能使用一次，请尽快使用！<br/>");
			mailInfo.append("<a href='"+FINDPWD_URL+"&email=");  
		    mailInfo.append(bind_email);   
		    mailInfo.append("&validateCode=");   
		    mailInfo.append(email_code);  
		    mailInfo.append("'>点此激活");   
		    mailInfo.append("</a>");
		}
		return mailInfo.toString();
	}


}
