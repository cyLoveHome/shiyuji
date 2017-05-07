package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.User;

public interface MenuService {
	/**
	 * 上传菜谱
	 * @param mName
	 * @param mPic
	 * @param mInfo
	 * @param Steps
	 * @return
	 */
	String uploadMenu(String mName,String mPic,String mInfo,String shicai,String steps);
	
	/**
	 * 删除菜谱
	 * @param mId
	 * @return
	 */
	boolean deleteMenu(String mId);
	
	/**
	 * 搜索用户所有菜谱
	 * @param uId
	 * @return
	 */
	List<Menu> selectByUid(String uId);
	
	/**
	 * 菜谱总数
	 * @param uId
	 * @return
	 */
	String selecNum(String uId);
	
	/**
	 * 根据菜谱id找到菜谱全部信息
	 * @param mId
	 * @return
	 */
	Menu selectByMid(String mId);
	
	/**
	 * 模糊搜索菜谱
	 * @param mName
	 * @return
	 */
	List<Menu> selectByMname(String mName);
	
	/**
	 * main查
	 * @return
	 */
	List<Menu> select();
	
	
}
