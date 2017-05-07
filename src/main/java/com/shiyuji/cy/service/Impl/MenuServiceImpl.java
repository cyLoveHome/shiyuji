package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.MenuDao;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuDao menuDao;

	@Override
	public String uploadMenu(String mName, String mPic, String mInfo, String shicai, String steps) {
		Menu menu = new Menu(mName, mPic, mInfo,shicai,steps);
		int rowNum = menuDao.addMenu(menu);
		boolean isSuccess = rowNum > 0;
		return isSuccess?menu.getmId():"false";
	}

	@Override
	public boolean deleteMenu(String mId) {
		int rowNum = menuDao.deleteMenu(mId);
		boolean isSuccess = rowNum > 0;
		return isSuccess;
	}

	@Override
	public List<Menu> selectByUid(String uId) {
		return menuDao.selectByUid(uId);
	}

	@Override
	public Menu selectByMid(String mId) {
		return menuDao.selectByMid(mId);
	}

	@Override
	public List<Menu> selectByMname(String mName) {
		return menuDao.selectByMname(mName);
	}

	@Override
	public String selecNum(String uId) {
		return menuDao.selectNum(uId);
	}

	@Override
	public List<Menu> select() {
		return menuDao.select();
	}

}
