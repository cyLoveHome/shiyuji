package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.ReportDao;
import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {
	@Autowired
	private ReportDao reportDao;

	@Override
	public boolean addReport(Report r) {
		return reportDao.addReport(r) > 0;
	}

	@Override
	public boolean delete(String uId, String mId) {
		return reportDao.delete(uId, mId)>0;
	}

	@Override
	public List<Report> selectAll(String uId) {
		return reportDao.selectAll(uId);
	}

	@Override
	public Report selectOne(String uId, String mId) {
		return  reportDao.selectOne(uId, mId);
	}


	

}
