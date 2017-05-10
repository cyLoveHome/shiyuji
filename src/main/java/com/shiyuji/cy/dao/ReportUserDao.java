package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.pojo.ReportUser;


public interface ReportUserDao {
	
	/**
	 * 增加举报
	 * @param r
	 * @return
	 */
	int addReport(ReportUser ru);
	
	/**
	 * 删除我的举报
	 * @param mId
	 * @return
	 */
	int delete(@Param("uId")String uId,@Param("ruId")String ruId);
	
	/**
	 * 查询我所有举报
	 * @param uId
	 * @return
	 */
	List<ReportUser> selectAll(String uId);
	
	/**
	 * 查是否举报过
	 * @param uId
	 * @param mId
	 * @return
	 */
	ReportUser selectOne(@Param("uId")String uId,@Param("ruId")String ruId);
	
	List<ReportUser> selectNew();

}
