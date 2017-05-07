package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_menu;

public interface Menus_menuService {
	/**
	 * 删除一条菜谱,删除对应的关联
	 * @param mId
	 * @return
	 */
	boolean deleteByMid(String mId);
	
	/**
	 *新增关联数据 
	 * @param mc_menu
	 * @return
	 */
	boolean add(Menus_menu menus_menu);
	
	/**
	 * 查出一个菜单下的所有菜谱
	 * @param mcId
	 * @return
	 */
	List<Menu> selectByMsid(String msId);
	
	/**
	 * 查出一个菜谱所属的所有菜单
	 * @param mId
	 * @return
	 */
	List<Menus> selectByMid(String mId);

}
