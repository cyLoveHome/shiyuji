package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Answer;

public interface AnswerDao {
	/**
	 * 回答
	 * @param a
	 * @return
	 */
	int addAnswer(Answer a);
	
	/**
	 * 一个问题下的所有回答
	 * @param qId
	 * @return
	 */
	List<Answer> selectAll(String qId);
	
	/**
	 * 一个问题多少人回答
	 * @param qId
	 * @return
	 */
	String selectNum(String qId);

}
