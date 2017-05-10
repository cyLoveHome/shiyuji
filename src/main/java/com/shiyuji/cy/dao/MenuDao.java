package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Menu;

public interface MenuDao {
	/**
	 * 添加菜谱
	 * @param menu
	 * @return
	 */
	int addMenu(Menu menu);

	/**
	 * 删除菜谱
	 * @param mId
	 * @return
	 */
	int deleteMenu(String mId);
	
	/**
	 * 搜索菜谱
	 * @param mId
	 * @return
	 */
	Menu selectByMid(String mId);
	
	/**
	 * 根据菜谱名模糊搜索菜谱
	 * @param mId
	 * @return
	 */
	List<Menu> selectByMname(@Param("mName")String mName,@Param("uId")String uId);
	
	/**
	 * 搜索该用户创建的所有菜谱
	 * @param uId
	 * @return
	 */
	List<Menu> selectByUid(String uId);
	
	
	/**
	 * 该用户创建的菜谱总数
	 * @param uId
	 * @return
	 */
	String selectNum(String uId);
	
	/**
	 * 默认查前13条数据
	 * @return
	 */
	List<Menu> select();
	
	/**
	 * 默认查前3条数据
	 * @return
	 */
	List<Menu> selectThree();
	
	/**
	 * 系统所有菜谱
	 * @return
	 */
	List<Menu> selectAll();
}
