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
import com.shiyuji.cy.utils.VerifyCodeUtils;

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

	@Override
	public String userFindPwd(String bind_email) {
		boolean isSuccess = false;
		String rs ="";
		User user = userDao.selectByEmailAddress(bind_email);
			if(user!=null){
				rs = VerifyCodeUtils.generateVerifyCode(6);
				isSuccess = processFindPwd(bind_email,rs);
			}
		return isSuccess?rs:"";
	}

	//处理注册 发送邮件
	private boolean processFindPwd(String bind_email,String email_code){
			 ///邮件的内容  
	        String mailInfo = generatMailInfo(bind_email, email_code);
	      //发送邮件  
	        return SendEmail.send(bind_email, mailInfo.toString(),"邮箱找回密码验证码");
	}
	
	//产生邮件
		private String generatMailInfo(String bind_email,String email_code){
			StringBuffer mailInfo=new StringBuffer();
				mailInfo.append("<h1>shiyuji--密码系统<h1>");
				mailInfo.append("正在通过邮箱找回修改密码,请保管好您的密码，尽快使用！<br/>");
				mailInfo.append("<h3>"+email_code+"</h3>");  
			return mailInfo.toString();
		}

}
