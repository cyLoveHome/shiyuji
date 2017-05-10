package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.SuggestDao;
import com.shiyuji.cy.pojo.Suggest;
import com.shiyuji.cy.service.SuggestService;

@Service
public class SuggestServiceImpl implements SuggestService{
	
	@Autowired
	private SuggestDao suggestDao;

	@Override
	public boolean addSugg(Suggest s) {
		return suggestDao.addSugg(s)>0;
	}

	@Override
	public boolean deleteSugg(String sId) {
		return suggestDao.deleteSugg(sId)>0;
	}

	@Override
	public List<Suggest> selectAll() {
		return suggestDao.selectAll();
	}

	@Override
	public List<Suggest> selectNew() {
		return suggestDao.selectNew();
	}

	@Override
	public List<Suggest> selectMy(String uId) {
		return suggestDao.selectMy(uId);
	}
	
	
	
}
