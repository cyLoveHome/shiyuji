package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Answer;
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.service.Impl.AnswerServiceImpl;
import com.shiyuji.cy.service.Impl.QuestionServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/question")
public class QuestionController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private QuestionServiceImpl questionService;
	
	@Autowired
	private AnswerServiceImpl answerService;
	
	@RequestMapping(value="/addQue")
	@ResponseBody
	public void  addQues(HttpServletRequest request,HttpServletResponse response,String uId,String qTitle,String qInfo) throws IOException{
		Question q = new Question(uId, qTitle, qInfo);
		boolean isSuccess = questionService.addQuestion(q);
		if(isSuccess){
			List<Question> queList = questionService.selectRand();
			List<Question> list = questionService.selectRand();
			if(queList.size()>0){
				for(int i = 0;i<queList.size();i++){
					String qId = queList.get(i).getqId();
					String answerNum = answerService.selectNum(qId);
					queList.get(i).setAnswerNum(answerNum);
					list.add(queList.get(i));
				}
				new ObjectMapper().writeValue(response.getOutputStream(), list);
			}else{
				response.getOutputStream().print("null");
			}
		}else{
			response.getOutputStream().print("false");
		}
	}
	
	
	@RequestMapping(value="/all")
	@ResponseBody
	public void  selectAll(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<Question> alls = questionService.selectAll();
		List<Question> list = questionService.selectRand();
		if(alls.size()>0){
			for(int i = 0;i<alls.size();i++){
				String qId = alls.get(i).getqId();
				String answerNum = answerService.selectNum(qId);
				alls.get(i).setAnswerNum(answerNum);
				list.add(alls.get(i));
			}
			new ObjectMapper().writeValue(response.getOutputStream(), list);
		}else{
			response.getOutputStream().print("null");
		}
	}
	

	
	@RequestMapping(value="/one")
	@ResponseBody
	public void  selectOne(HttpServletRequest request,HttpServletResponse response,String qId) throws IOException{
		Question q = questionService.selectOne(qId);
		if(q!=null){
			List<Answer> allAnswer = answerService.selectAll(qId);
			if(allAnswer.size()>0){
				
			}
		}
	}
	
}
