package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Report;


public interface ReportService {

	/**
	 * 举报
	 * @param r
	 * @return
	 */
	boolean addReport(String uId,String mId,String cause);
	
	/**
	 * 删除举报
	 * @param mId
	 * @return
	 */
	boolean delete(String uId,String mId);
	
	/**
	 * 查询我所有举报
	 * @param uId
	 * @return
	 */
	List<Report> selectAll(String uId);

	/**
	 * 是否举报过
	 * @param uId
	 * @param mId
	 * @return
	 */
	Report selectOne(String uId,String mId);
	
	List<Report> selectNew();
}
