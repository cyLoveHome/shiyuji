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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Answer;
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndAnswer;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.pojo.UserAndQuestion;
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
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping(value="/addQue")
	@ResponseBody
	public void  addQues(HttpServletRequest request,HttpServletResponse response,String uId,String qTitle,String qInfo) throws IOException{
		Question q = new Question(uId, qTitle, qInfo);
		boolean isSuccess = questionService.addQuestion(q);
		if(isSuccess){
			List<Question> queList = questionService.selectRand();
			List<Question> list = new ArrayList<>();
			list.add(q);
			if(queList.size()>=5){
				for(int i = 0;i<queList.size();i++){
					String qId = queList.get(i).getqId();
					String answerNum = answerService.selectNum(qId);
					queList.get(i).setAnswerNum(answerNum);
					list.add(queList.get(i));
				}
				new ObjectMapper().writeValue(response.getOutputStream(), list);
			}else{
				response.getOutputStream().print("nodata");
			}
		}else{
			response.getOutputStream().print("false");
		}
	}
	
	
	@RequestMapping(value="/all")
	@ResponseBody
	public ModelAndView  selectAll(HttpServletRequest request,HttpServletResponse response) throws IOException{
		ModelAndView model = new ModelAndView();
		List<Question> alls = questionService.selectAll();
		List<UserAndQuestion> list = new ArrayList<>();
		if(alls.size()>0){
			for(int i = 0;i<alls.size();i++){
				String uId= alls.get(i).getuId();
				User u = userService.SelectByUid(uId);
				
				String qId = alls.get(i).getqId();
				String answerNum = answerService.selectNum(qId);
				alls.get(i).setAnswerNum(answerNum);
				
				UserAndQuestion uq = new UserAndQuestion(u, alls.get(i));
				list.add(uq);
			}
			model.addObject("allQue", list);
		}else{
			model.addObject("allQue", "null");
		}
		model.setViewName("forward:/allQuestion.jsp");
		return model;
	}
	
	@RequestMapping(value="/myQue")
	@ResponseBody
	public void selectMy(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<Question> myQues = questionService.selectByUid(uId);
		if(myQues.size()>0){
			for(int i = 0;i<myQues.size();i++){
				String answerNum = answerService.selectNum(myQues.get(i).getqId());
				myQues.get(i).setAnswerNum(answerNum);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), myQues);
		}else{
			response.getOutputStream().print("false");
		}
	}
	
	@RequestMapping(value="/selectSome")
	@ResponseBody
	public void  selectSome(HttpServletRequest request,HttpServletResponse response,String info) throws IOException{
		List<Question> qList = questionService.selectSome(info);
		List<UserAndQuestion> list = new ArrayList<>();
		if(qList.size()>0){
			for(int i = 0;i<qList.size();i++){
				String uId= qList.get(i).getuId();
				User u = userService.SelectByUid(uId);
				
				String qId = qList.get(i).getqId();
				String answerNum = answerService.selectNum(qId);
				qList.get(i).setAnswerNum(answerNum);
				
				UserAndQuestion uq = new UserAndQuestion(u, qList.get(i));
				list.add(uq);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), list);
		}else{
			response.getOutputStream().print("false");
		}
	}
	

	
	@RequestMapping(value="/one/{qId}")
	@ResponseBody
	public ModelAndView  selectOne(HttpServletRequest request,HttpServletResponse response,@PathVariable("qId")String qId) throws IOException{
		ModelAndView model = new ModelAndView();
		Question q = questionService.selectOne(qId);
		System.out.println("___________________________");
		System.out.println(q);
		System.out.println("___________________________");
		if(q!=null){
			User us = userService.SelectByUid(q.getuId());
			
			List<Answer> allAnswer = answerService.selectAll(qId);
			List<UserAndAnswer> answers = new ArrayList<>();
			if(allAnswer.size()>0){
				q.setAnswerNum(allAnswer.size()+"");
				
				for(int i = 0 ;i<allAnswer.size();i++){
					String uId = allAnswer.get(i).getuId();
					User user = userService.SelectByUid(uId);
					UserAndAnswer ua = new UserAndAnswer(user, allAnswer.get(i));
					answers.add(ua);
				}
			}
			UserAndQuestion uq = new UserAndQuestion(us, q);
			model.addObject("oneQue", uq);
			model.addObject("answers", answers);
		}
		model.setViewName("forward:/one-question.jsp");
		return model;
	}
	
}
