package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Question;

public interface QuestionDao {
	/**
	 * 提问
	 * @param q
	 * @return
	 */
	int addQuestion(Question q);
	
	/**
	 * 删除提问
	 * @param qId
	 * @return
	 */
	int deleteQuestion(String qId);
	
	/**
	 * 我的提问
	 * @param uId
	 * @return
	 */
	List<Question> selectByUid(String uId);
	
	/**
	 * 系统所有问题
	 * @return
	 */
	List<Question> selectAllQuestion();
	
	/**
	 * 除去当前用户的所有问题
	 * @param uId
	 * @return
	 */
	List<Question> selectAll(String uId);
	
	/**
	 * 随机查5条问题
	 * @return
	 */
	List<Question> selectRand();
	
	/**
	 * 最新3条
	 * @return
	 */
	List<Question> selectNew();
	/**
	 * 一条详细问题
	 * @param qId
	 * @return
	 */
	Question selectOne(String qId);
	
	/**
	 * 模糊查找一些问题qTitle
	 * @param Info
	 * @return
	 */
	List<Question> selectSome(@Param("qTitle")String qTitle);

}
