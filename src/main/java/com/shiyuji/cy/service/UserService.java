package com.shiyuji.cy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.User;

public interface UserService {
	
	/**
	 * 注册
	 * @param uName
	 * @param password
	 * @param bind_email
	 * @return
	 */
	boolean reg(String uName,String password,String bind_email);
	
	/**
	 * 邮箱激活
	 * @param bind_email
	 * @param code
	 * @return
	 */
	boolean activate(String bind_email,String code);
	
	List<User> selectNew();
	

	/**
	 * 登录
	 * @param loginName
	 * @param password
	 * @return
	 */
	User login(String loginType,String password);
	
	
	/**
	 * 根据用户名模糊查询用户
	 * @param uName
	 * @return
	 */
	List<User> selectUser(String uName);
	
	/**
	 * 根据uId查用户
	 * @param uId
	 * @return
	 */
	User SelectByUid(String uId);
	
	/**
	 * 所有厨友
	 * @return
	 */
	List<User> selectUsers(String uId);
	
	/**
	 * 随机8位厨友
	 * @param uId
	 * @return
	 */
	List<User> selectRandEightUsers(String uId);
	
	/**
	 * 根据uId封号
	 * @param uId
	 * @return
	 */
	boolean deleteByUid(String uId);
	
	String userFindPwd(String bind_email);
	
	
	//以下为Admin使用
		/**
		 * 查出所有系统普通用户
		 * @return
		 */
	List<User> selectAll();
		
		/**
		 * 查出系统所有管理员
		 * @return
		 */
	List<User> selectAdmin(String uId);
	
	/**
	 * 管理员登录
	 * @param loginName
	 * @param password
	 * @return
	 */
	User adminLogin(String loginType,String password);
}
