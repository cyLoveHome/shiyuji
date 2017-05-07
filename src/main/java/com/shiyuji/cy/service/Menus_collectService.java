package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_collect;

public interface Menus_collectService {

	/**
	 * 添加收藏菜单
	 * @param mc
	 * @return
	 */
	boolean add(Menus_collect mc);
	
	/**
	 * 删除某条收藏菜单
	 * @param uId
	 * @param msId
	 * @return
	 */
	boolean delete(String uId,String msId);
	
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
	
	/**
	 * 该菜单被收藏的总数
	 * @param msId
	 * @return
	 */
	String collectNum(String msId);
	
}
