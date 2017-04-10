package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Menu_classify;

public interface Menu_classifyDao {
	/**
	 * 显示所有分类
	 * @return
	 */
	List<Menu_classify> selectAll();
	
	/**
	 * 新增菜谱分类
	 * @param mc
	 * @return
	 */
	int addMenu_classify(Menu_classify mc);
}
