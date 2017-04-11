package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.User;

public interface Menu_collectService {
	/**
	 * 收藏菜谱
	 * @param uId
	 * @param mId
	 * @return
	 */
	boolean add(String uId,String mId);
	
	/**
	 * 删除已收藏
	 * @param uId
	 * @param mId
	 * @return
	 */
	boolean delete(String uId,String mId);
	
	/**
	 * 该用户收藏的所有的菜谱
	 * @param uId
	 * @return
	 */
	List<Menu> selectByUid(String uId);
	
	/**
	 * 查当前用户是否收藏该菜谱
	 * @param uId
	 * @param mId
	 * @return
	 */
	Menu_collect isSelect(String uId,String mId);
	
	/**
	 * 查询该菜谱所有的收藏用户信息
	 * @param mId
	 * @return
	 */
	List<User> selectByMid(String mId);
	
	/**
	 * 查询收藏该菜谱的用户数
	 * @param mId
	 * @return
	 */
	String select(String mId);
	
}
