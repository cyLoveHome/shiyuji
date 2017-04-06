package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;

public interface Menu_collectDao {

	/**
	 * 添加收藏菜谱
	 * @param mc
	 * @return
	 */
	int add(Menu_collect mc);
	
	/**
	 * 删除收藏的某条菜谱
	 * @param uId
	 * @param msId
	 * @return
	 */
	int delete(String uId,String mId);
	
	/**
	 * 查询某用户收藏的所有菜谱
	 * @param uId
	 * @return
	 */
	List<Menu> selectByUid(String uId);
	
	/**
	 * 查询该用户是否收藏该菜谱
	 * @param uId
	 * @param msId
	 * @return
	 */
	Menu_collect isSelect(String uId,String msId);
	
}