package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Mc_menu;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_classify;

public interface Mc_menuDao {
	/**
	 * 删除一条菜谱
	 * @param mId
	 * @return
	 */
	int deleteByMid(String mId);
	
	/**
	 *新增关联数据 
	 * @param mc_menu
	 * @return
	 */
	int add(Mc_menu mc_menu);
	
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
