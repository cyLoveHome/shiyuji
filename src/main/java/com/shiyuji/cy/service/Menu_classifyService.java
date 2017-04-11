package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Menu_classify;

public interface Menu_classifyService {
	/**
	 * 创建菜谱分类
	 * @param mcName
	 * @return
	 */
	boolean createMc(String mcName);
	
	/**
	 * 取所有菜谱分类
	 * @return
	 */
	List<Menu_classify> select();

}
