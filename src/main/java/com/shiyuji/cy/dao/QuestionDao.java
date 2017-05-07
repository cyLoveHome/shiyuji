package com.shiyuji.cy.dao;

import java.util.List;

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
	 * 所有问题
	 * @return
	 */
	List<Question> selectAll();
	
	/**
	 * 随机查5条问题
	 * @return
	 */
	List<Question> selectRand();
	
	
	/**
	 * 一条详细问题
	 * @param qId
	 * @return
	 */
	Question selectOne(String qId);
	
	/**
	 * 查找一些问题
	 * @param Info
	 * @return
	 */
	List<Question> selectSome(String Info);

}
