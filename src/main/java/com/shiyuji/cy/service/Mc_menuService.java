package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Mc_menu;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_classify;

public interface Mc_menuService {
	
	/**
	 * 删除菜谱，删除表中所有关联关系
	 * @param mId
	 * @return
	 */
	boolean deleteByMid(String mId);
	
	/**
	 *新增关联数据 
	 * @param mc_menu
	 * @return
	 */
	boolean add(String mId,String mcId);
	
	/**
	 * 查出一个菜谱分类下的所有菜谱
	 * @param mcId
	 * @return
	 */
	List<Menu> selectByMcid(String mcId);
	
	/**
	 * 查出一个菜谱所属的所有分类
	 * @param mId
	 * @return
	 */
	List<Menu_classify> selectByMid(String mId);
	
	
}
