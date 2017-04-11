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
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.Impl.AnswerServiceImpl;
import com.shiyuji.cy.service.Impl.QuestionServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/answer")
public class AnswerController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private AnswerServiceImpl answerService;
	
	@RequestMapping(value="/addAns")
	@ResponseBody
	public void  addAues(HttpServletRequest request,HttpServletResponse response,String uId,String qTitle,String qInfo) throws IOException{
	}
	
	

	
}
