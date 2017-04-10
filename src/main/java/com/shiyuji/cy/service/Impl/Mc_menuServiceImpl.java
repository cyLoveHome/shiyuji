package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.Mc_menuDao;
import com.shiyuji.cy.pojo.Mc_menu;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_classify;
import com.shiyuji.cy.service.Mc_menuService;

@Service
public class Mc_menuServiceImpl implements Mc_menuService {
	@Autowired
	private Mc_menuDao mc_menuDao;

	@Override
	public boolean deleteByMid(String mId) {
		return mc_menuDao.deleteByMid(mId) > 0;
	}

	@Override
	public boolean add(String mId, String mcId) {
		Mc_menu mc_menu = new Mc_menu(mId,mcId);
		return mc_menuDao.add(mc_menu) > 0;
	}

	@Override
	public List<Menu> selectByMcid(String mcId) {
		return mc_menuDao.selectByMcid(mcId);
	}

	@Override
	public List<Menu_classify> selectByMid(String mId) {
		return mc_menuDao.selectByMid(mId);
	}
	
	

}
