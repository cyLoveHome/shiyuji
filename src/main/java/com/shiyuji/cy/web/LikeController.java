package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.List;

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

import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.service.Menu_collectService;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;

@Controller
@RequestMapping("/like")
public class LikeController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private LikeServiceImpl likeService;
	
	@Autowired
	private Menu_collectServiceImpl mcService;
	
	@RequestMapping(value="/addORdeleteLike")
	@ResponseBody
	public void  like(HttpServletRequest request,HttpServletResponse response,String mId,String uId) throws IOException{
		Like like = likeService.selectLike(uId, mId);
		boolean isSuccess = false;
		if(like != null){
			isSuccess = likeService.unLike(uId, mId);
		}else{
			isSuccess = likeService.like(uId, mId);
		}
		String num = likeService.selectbyMid(mId);
		response.getOutputStream().print(isSuccess+"|"+num);
	}
	
	
	@RequestMapping(value="/addORdeleteCollect")
	@ResponseBody
	public void  collect(HttpServletRequest request,HttpServletResponse response,String mId,String uId) throws IOException{
		Menu_collect mc = mcService.isSelect(uId, mId);
		boolean isSuccess = false;
		if(mc != null){
			isSuccess = mcService.delete(uId, mId);
		}else{
			isSuccess = mcService.add(uId, mId);
		}
		String num = mcService.select(mId);
		response.getOutputStream().print(isSuccess+"|"+num);
	}
	
}
