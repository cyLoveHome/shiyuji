package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.Menus_menuDao;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_menu;
import com.shiyuji.cy.service.Menus_menuService;

@Service
public class Menus_menuServiceImpl implements Menus_menuService {
	@Autowired
	private Menus_menuDao meDao;

	@Override
	public boolean deleteByMid(String mId) {
		return meDao.deleteByMid(mId)>0;
	}

	@Override
	public boolean add(Menus_menu menus_menu) {
		return meDao.add(menus_menu)>0;
	}

	@Override
	public List<Menu> selectByMsid(String msId) {
		return meDao.selectByMsid(msId);
	}

	@Override
	public List<Menus> selectByMid(String mId) {
		return meDao.selectByMid(mId);
	}

}
