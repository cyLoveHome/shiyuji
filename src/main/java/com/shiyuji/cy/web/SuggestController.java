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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.Suggest;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.service.Menu_collectService;
import com.shiyuji.cy.service.Impl.CommentServiceImpl;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;
import com.shiyuji.cy.service.Impl.SuggestServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/suggest")
public class SuggestController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private SuggestServiceImpl suggService;
	
	@RequestMapping(value="/addSuggest")
	@ResponseBody
	public void  addSugg(HttpServletRequest request,HttpServletResponse response,String sInfo) throws IOException{
		User user = (User) request.getSession(true).getAttribute("user");
		Suggest s = new Suggest(user.getuId(), sInfo);
		boolean isSuccess = suggService.addSugg(s);
		response.getOutputStream().print(isSuccess);
	}
	
	
}
