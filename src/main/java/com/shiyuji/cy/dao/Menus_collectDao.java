package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_collect;

public interface Menus_collectDao {

	/**
	 * 添加收藏菜单
	 * @param mc
	 * @return
	 */
	int add(Menus_collect mc);
	
	/**
	 * 删除某条收藏
	 * @param uId
	 * @param msId
	 * @return
	 */
	int delete(String uId,String msId);
	
	/**
	 * 查询某用户收藏的所有菜单
	 * @param uId
	 * @return
	 */
	List<Menus> selectByUid(String uId);
	
	/**
	 * 查询该用户是否收藏该菜单
	 * @param uId
	 * @param msId
	 * @return
	 */
	Menus_collect isSelect(String uId,String msId);
	
}
