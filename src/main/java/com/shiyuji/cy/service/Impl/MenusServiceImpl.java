package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.MenusDao;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.service.MenusService;


@Service
public class MenusServiceImpl implements MenusService {
	
	@Autowired
	private MenusDao menusDao;

	@Override
	public boolean addMenus(Menus menus) {
		return menusDao.addMenus(menus)>0;
	}

	@Override
	public boolean deleteMenus(String msId) {
		return menusDao.deleteMenus(msId)>0;
	}

	@Override
	public List<Menus> selectByUid(String uId) {
		return menusDao.selectByUid(uId);
	}

	@Override
	public List<Menus> selectAll() {
		return menusDao.selectAll();
	}

	@Override
	public Menus selectByMsid(String msId) {
		return menusDao.selectByMsid(msId);
	}

	@Override
	public List<Menus> selectRan() {
		return menusDao.selectRan();
	}
	
	
}
