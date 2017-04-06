package com.shiyuji.cy.web;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.UserService;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping(value="/register",method={RequestMethod.POST})
	public ModelAndView  reg(HttpServletRequest request,HttpServletResponse response,String uName,String pwd,String bind_email ){
		logger.warn("uname-----"+uName);
		logger.warn("pwd-----"+pwd);
		logger.warn("email-----"+bind_email);
		ModelAndView model = new ModelAndView("forward:../reg.jsp");
		boolean isReg = userService.reg(uName, pwd, bind_email);
		if(isReg){
			model.setViewName("redirect:login");
		}
		return model;
	}
	
	@RequestMapping(value="/login",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response,String loginType,String pwd){
		ModelAndView model = new ModelAndView();
		String method = request.getMethod();
		if(method.equalsIgnoreCase("get")){
			model.setViewName("forward:../login_name.jsp");
		}else{
			HttpSession session = request.getSession(true);
			User user = userService.login(loginType, pwd);
			if(user != null){
				session.setAttribute("user", user);
				model.setViewName("forward:../main.jsp");
			}else{
				model.setViewName("forward:../login_name.jsp");
			}
		}
		return model;
	}
	
	

}
