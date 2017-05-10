package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Suggest;

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
	 * 查所有菜单，除去当前用户
	 * @return
	 */
	List<Menus> selectAll(String uId);
	
	/**
	 * 系统所有菜单
	 * @return
	 */
	List<Menus> selectAllMenus();
	
	/**
	 * 查具体一条菜单
	 * @param msId
	 * @return
	 */
	Menus selectByMsid(String msId);
	
	/**
	 * 随机10条菜单
	 */
	List<Menus> selectRan();
	
	/**
	 * 查最新3条
	 * @return
	 */
	List<Menus> selectNew();
	
	/**
	 * 模糊查找菜单
	 * @param msName
	 * @return
	 */
	List<Menus> selectByInfo(@Param("msName")String msName,@Param("uId")String uId);
	
	List<Menus> selectMenusByPage(@Param("start")int start,@Param("pageSize")int pageSize);
}
