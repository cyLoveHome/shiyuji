package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Menu;

public interface MenuDao {
	/**
	 * 添加菜谱
	 * @param menu
	 * @return
	 */
	int addMenu(Menu menu);

	/**
	 * 删除菜谱
	 * @param mId
	 * @return
	 */
	int deleteMenu(String mId);
	
	/**
	 * 搜索菜谱
	 * @param mId
	 * @return
	 */
	Menu selectByMid(String mId);
	
	/**
	 * 根据菜谱名模糊搜索菜谱
	 * @param mId
	 * @return
	 */
	List<Menu> selectByMname(String mName);
	
	/**
	 * 搜索该用户创建的所有菜谱
	 * @param uId
	 * @return
	 */
	List<Menu> selectByUid(String uId);
	
	
	/**
	 * 该用户创建的菜谱总数
	 * @param uId
	 * @return
	 */
	String selectNum(String uId);
}
