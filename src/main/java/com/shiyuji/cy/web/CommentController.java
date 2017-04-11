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
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.service.Menu_collectService;
import com.shiyuji.cy.service.Impl.CommentServiceImpl;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/comment")
public class CommentController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Resource
	private CommentServiceImpl commService;
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping(value="/addComment")
	@ResponseBody
	public void  addComm(HttpServletRequest request,HttpServletResponse response,String mId,String uId,String commInfo) throws IOException{
		logger.warn(mId+"--------"+uId+"--------"+commInfo);
		Comment c = new Comment(uId, mId, commInfo);
		User u = userService.SelectByUid(uId);
		UserAndComment uc = new UserAndComment(c, u);
		boolean isSuccess = commService.addComment(uId, mId,commInfo);
		if(isSuccess){
			new ObjectMapper().writeValue(response.getOutputStream(), uc);
		}
	}
	
	
	@RequestMapping(value="/allComments")
	@ResponseBody
	public void  selectComm(HttpServletRequest request,HttpServletResponse response,String mId) throws IOException{
			List<Comment> commList = commService.selectByMid(mId);
			List<UserAndComment> list = new ArrayList<>();
			for(int i =0;i<commList.size();i++){
				User u = userService.SelectByUid(commList.get(i).getuId());
				UserAndComment uc = new UserAndComment();
				uc.setC(commList.get(i));
				uc.setU(u);
				list.add(uc);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), list);
	}
	
	
}
