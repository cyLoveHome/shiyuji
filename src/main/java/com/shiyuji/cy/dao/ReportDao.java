package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Report;

public interface ReportDao {
	
	/**
	 * 增加举报
	 * @param r
	 * @return
	 */
	int addReport(Report r);
	
	/**
	 * 删除我的举报
	 * @param mId
	 * @return
	 */
	int delete(String mId);
	
	/**
	 * 查询我所有举报
	 * @param uId
	 * @return
	 */
	List<Report> selectAll(String uId);

}
