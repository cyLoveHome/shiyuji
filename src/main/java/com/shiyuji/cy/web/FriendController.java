package com.shiyuji.cy.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shiyuji.cy.pojo.Friend;
import com.shiyuji.cy.service.Impl.FriendServiceImpl;

@Controller
@RequestMapping("/friend")
public class FriendController {
	
	@Autowired
	private FriendServiceImpl friendService;
	
	@RequestMapping(value="/addORdeleteFriend")
	@ResponseBody
	public void  addOrDelete(HttpServletRequest request,HttpServletResponse response,String uId,String fId) throws IOException{
		Friend f = friendService.selectFriend(uId, fId);
		boolean isSuccess = false;
		if(f!=null){//是好友，取关
			isSuccess = friendService.deleteFriend(uId, fId);
		}else{//非好友，加关
			isSuccess = friendService.addFriend(uId, fId);
		}
		response.getOutputStream().print(isSuccess);
	}

}
