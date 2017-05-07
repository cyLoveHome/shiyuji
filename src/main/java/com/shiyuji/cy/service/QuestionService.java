package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Book;
import com.shiyuji.cy.pojo.Question;


public interface QuestionService {

	/**
	 * 提问
	 * @param q
	 * @return
	 */
	boolean addQuestion(Question q);
	
	/**
	 * 删除个人提问String uId
	 * @param qId
	 * @return
	 */
	boolean deleteQuestion(String qId);
	
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
	 * 查具体一条问题
	 * @param qId
	 * @return
	 */
	Question selectOne(String qId);
	
	/**
	 * 模糊查找一些问题
	 * @param Info
	 * @return
	 */
	List<Question> selectSome(String Info);

}
