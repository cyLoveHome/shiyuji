package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Menus;

public interface MenusDao {
	/**
	 * 新建菜单
	 * @param menus
	 * @return
	 */
	int addMenus(Menus menus);
	
	/**
	 * 删除菜单
	 * @param msId
	 * @return
	 */
	int deleteMenus(String msId);
	
	/**
	 * 查某用户创建的所有菜单
	 * @param uId
	 * @return
	 */
	List<Menus> selectByUid(String uId);
	
	/**
	 * 查所有菜单
	 * @return
	 */
	List<Menus> selectAll();

}
