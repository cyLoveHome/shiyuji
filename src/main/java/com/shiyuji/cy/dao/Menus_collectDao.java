package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	int delete(@Param("uId")String uId,@Param("msId")String msId);
	
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
	Menus_collect isSelect(@Param("uId")String uId,@Param("msId")String msId);
	
	/**
	 * 该菜单被收藏的总数
	 * @param msId
	 * @return
	 */
	String collectNum(String msId);
	
}
