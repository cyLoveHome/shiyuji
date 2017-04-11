package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.Menu_classifyDao;
import com.shiyuji.cy.pojo.Menu_classify;
import com.shiyuji.cy.service.Menu_classifyService;

@Service
public class Menu_classifyServiceImpl implements Menu_classifyService{

	@Autowired
	private Menu_classifyDao mcDao;
	
	@Override
	public boolean createMc(String mcName) {
		Menu_classify mc = new Menu_classify(mcName);
		int rowNum = mcDao.addMenu_classify(mc);
		boolean isSuccess = rowNum > 0;
		return isSuccess;
	}

	@Override
	public List<Menu_classify> select() {
		return mcDao.selectAll();
	}

}
