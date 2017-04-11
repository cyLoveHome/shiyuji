package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.LikeDao;
import com.shiyuji.cy.dao.Menu_collectDao;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.LikeService;
import com.shiyuji.cy.service.Menu_collectService;

@Service
public class Menu_collectServiceImpl implements Menu_collectService {
	
	@Autowired
	private Menu_collectDao menu_collectDao;

	@Override
	public boolean add(String uId, String mId) {
		Menu_collect mc = new Menu_collect(uId, mId);
		return menu_collectDao.add(mc) > 0;
	}

	@Override
	public boolean delete(String uId, String mId) {
		return menu_collectDao.delete(uId, mId) > 0;
	}

	@Override
	public List<Menu> selectByUid(String uId) {
		return menu_collectDao.selectByUid(uId);
	}

	@Override
	public Menu_collect isSelect(String uId, String mId) {
		return menu_collectDao.isSelect(uId, mId);
	}

	@Override
	public List<User> selectByMid(String mId) {
		return menu_collectDao.selectByMid(mId);
	}

	@Override
	public String select(String mId) {
		return menu_collectDao.select(mId);
	}

	
}
