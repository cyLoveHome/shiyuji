package com.shiyuji.cy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Suggest;


public interface SuggestService {
	/**
	 * 新增意见
	 * @param c
	 * @return
	 */
	boolean addSugg(Suggest s);
	
	/**
	 * 删除一条意见
	 * @param sId
	 * @return
	 */
	boolean deleteSugg(String sId);
	
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
