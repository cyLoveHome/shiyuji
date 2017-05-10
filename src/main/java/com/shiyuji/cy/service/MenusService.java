package com.shiyuji.cy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.User;

public interface MenusService {
	/**
	 * 新建菜单
	 * @param menus
	 * @return
	 */
	boolean addMenus(Menus menus);
	
	/**
	 * 删除菜单
	 * @param msId
	 * @return
	 */
	boolean deleteMenus(String msId);
	
	List<Menus> selectNew();
	
	/**
	 * 查某用户创建的所有菜单
	 * @param uId
	 * @return
	 */
	List<Menus> selectByUid(String uId);
	
	/**
	 * 查所有菜单，除当前用户
	 * @return
	 */
	List<Menus> selectAll(String uId);
	
	/**
	 * 查具体一条菜单
	 * @param msId
	 * @return
	 */
	Menus selectByMsid(String msId);
	
	/**
	 * 系统所有菜单
	 * @return
	 */
	List<Menus> selectAllMenus();
	
	/**
	 * 随机10条菜单
	 */
	List<Menus> selectRan();
	
	/**
	 * 模糊查找菜单
	 * @param msName
	 * @return
	 */
	List<Menus> selectByInfo(String msName,String uId);
	
}
