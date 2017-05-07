package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.Menus_collectDao;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_collect;
import com.shiyuji.cy.service.Menus_collectService;

@Service
public class Menus_collectServiceImpl implements Menus_collectService {
	@Autowired
	private Menus_collectDao menus_collectDao;

	@Override
	public boolean add(Menus_collect mc) {
		return menus_collectDao.add(mc)>0;
	}

	@Override
	public boolean delete(String uId, String msId) {
		return menus_collectDao.delete(uId, msId)>0;
	}

	@Override
	public List<Menus> selectByUid(String uId) {
		return menus_collectDao.selectByUid(uId);
	}

	@Override
	public Menus_collect isSelect(String uId, String msId) {
		return menus_collectDao.isSelect(uId, msId);
	}

	@Override
	public String collectNum(String msId) {
		return menus_collectDao.collectNum(msId);
	}
	

}
