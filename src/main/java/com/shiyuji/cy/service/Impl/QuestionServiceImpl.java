package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.QuestionDao;
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.service.QuestionService;


@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionDao questionDao;

	@Override
	public boolean addQuestion(Question q) {
		return questionDao.addQuestion(q)>0;
	}

	@Override
	public boolean deleteQuestion(String qId) {
		return questionDao.deleteQuestion(qId)>0;
	}

	@Override
	public List<Question> selectByUid(String uId) {
		return questionDao.selectByUid(uId);
	}

	@Override
	public List<Question> selectAll() {
		return questionDao.selectAllQuestion();
	}

	@Override
	public List<Question> selectRand() {
		return questionDao.selectRand();
	}

	@Override
	public Question selectOne(String qId) {
		return questionDao.selectOne(qId);
	}

	@Override
	public List<Question> selectSome(String Info) {
		return questionDao.selectSome(Info);
	}

	@Override
	public List<Question> selectAll(String uId) {
		return questionDao.selectAll(uId);
	}

	@Override
	public List<Question> selectNew() {
		return questionDao.selectNew();
	}

	
}
