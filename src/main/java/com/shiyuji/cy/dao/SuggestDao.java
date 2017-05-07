package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Suggest;

public interface SuggestDao {
	/**
	 * 新增意见
	 * @param c
	 * @return
	 */
	int addSugg(Suggest s);
	
	/**
	 * 删除一条意见
	 * @param sId
	 * @return
	 */
	int deleteSugg(String sId);
	
	/**
	 * 查出所有意见
	 * @return
	 */
	List<Suggest> selectAll();
	
	/**
	 * 查出最新的6条
	 * @return
	 */
	List<Suggest> selectNew();

}
