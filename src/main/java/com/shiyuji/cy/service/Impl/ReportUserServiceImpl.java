package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.ReportUserDao;
import com.shiyuji.cy.pojo.ReportUser;
import com.shiyuji.cy.service.ReportUserService;


@Service
public class ReportUserServiceImpl implements ReportUserService {
	@Autowired
	private ReportUserDao reportDao;

	@Override
	public boolean addReport(ReportUser ru) {
		return reportDao.addReport(ru)>0;
	}

	@Override
	public boolean delete(String uId, String ruId) {
		return reportDao.delete(uId, ruId)>0;
	}

	@Override
	public List<ReportUser> selectAll(String uId) {
		return reportDao.selectAll(uId);
	}

	@Override
	public ReportUser selectOne(String uId, String ruId) {
		return reportDao.selectOne(uId, ruId);
	}

	@Override
	public List<ReportUser> selectNew() {
		return reportDao.selectNew();
	}




	

}
