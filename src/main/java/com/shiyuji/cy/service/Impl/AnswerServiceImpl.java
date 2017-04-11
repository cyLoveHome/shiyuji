package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.AnswerDao;
import com.shiyuji.cy.pojo.Answer;
import com.shiyuji.cy.service.AnswerService;

@Service
public class AnswerServiceImpl implements AnswerService {
	@Autowired
	private AnswerDao answerDao;

	@Override
	public boolean addAnswer(Answer a) {
		return answerDao.addAnswer(a)>0;
	}

	@Override
	public List<Answer> selectAll(String qId) {
		return answerDao.selectAll(qId);
	}

	@Override
	public String selectNum(String qId) {
		return answerDao.selectNum(qId);
	}

	

}
