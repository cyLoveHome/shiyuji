package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Friend;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.UserService;
import com.shiyuji.cy.service.Impl.FriendServiceImpl;
import com.shiyuji.cy.service.Impl.MenuServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private FriendServiceImpl friendServiceImpl;
	
	@Autowired
	private MenuServiceImpl menuService;
	
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
				String uId = user.getuId();
				List<User> randUsers = userService.selectRandEightUsers(uId);//随机用户
				List<User> users = new ArrayList<>();
				for(int i = 0;i<randUsers.size();i++){
					String focusNum = friendServiceImpl.selectFnum(randUsers.get(i).getuId());
					randUsers.get(i).setFocusNum(focusNum);//关注总数
					
					String menuNum = menuService.selecNum(randUsers.get(i).getuId());
					randUsers.get(i).setMenuNum(menuNum);//创建菜谱总数
					
					Friend f = friendServiceImpl.selectFriend(uId, randUsers.get(i).getuId());
					if(f!=null){
						 randUsers.get(i).setIsFriend("1");//当前登录用户与该随机用户是好友
					}else{
						randUsers.get(i).setIsFriend("0");//当前登录用户与该随机用户不是好友
					}
					users.add(randUsers.get(i));
				}
				model.addObject("users", users);
				model.setViewName("forward:/main.jsp");
			}else{
				model.setViewName("forward:/login_name.jsp");
			}
		}
		return model;
	}
	
	@RequestMapping(value="/selectAllUser/{uId}",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView selectAll(HttpServletRequest request,HttpServletResponse response,@PathVariable("uId")String uId){
		ModelAndView model = new ModelAndView();
		List<User> allUsers = userService.selectUsers(uId);//所有用户
		List<User> users = new ArrayList<>();
		for(int i = 0;i<allUsers.size();i++){
			String focusNum = friendServiceImpl.selectFnum(allUsers.get(i).getuId());
			allUsers.get(i).setFocusNum(focusNum);//关注总数
					
			String menuNum = menuService.selecNum(allUsers.get(i).getuId());
			allUsers.get(i).setMenuNum(menuNum);//创建菜谱总数
					
			Friend f = friendServiceImpl.selectFriend(uId, allUsers.get(i).getuId());
			if(f!=null){
				allUsers.get(i).setIsFriend("1");//当前登录用户与该用户是好友
			}else{
				allUsers.get(i).setIsFriend("0");//当前登录用户与该用户不是好友
			}
				users.add(allUsers.get(i));
			}
			model.addObject("allUsers", users);
			model.addObject("userNum", users.size());
			model.setViewName("forward:/friend.jsp");
		return model;
	}

	
	@RequestMapping(value="/select/name")
	@ResponseBody
	public void selectByName(HttpServletRequest request,HttpServletResponse response,String info) throws JsonGenerationException, JsonMappingException, IOException{
		User user = (User) request.getSession(true).getAttribute("user");
		String uId = user.getuId();
		List<User> allUsers = userService.selectUser(info);//根据用户名模糊查找用户
		System.out.println("************************************************************");
		System.out.println(allUsers.size());
		System.out.println("************************************************************");
		List<User> users = new ArrayList<>();
		for(int i = 0;i<allUsers.size();i++){
			String focusNum = friendServiceImpl.selectFnum(allUsers.get(i).getuId());
			allUsers.get(i).setFocusNum(focusNum);//关注总数
					
			String menuNum = menuService.selecNum(allUsers.get(i).getuId());
			allUsers.get(i).setMenuNum(menuNum);//创建菜谱总数
					
			Friend f = friendServiceImpl.selectFriend(uId, allUsers.get(i).getuId());
			if(f!=null){
				allUsers.get(i).setIsFriend("1");//当前登录用户与该用户是好友
			}else{
				allUsers.get(i).setIsFriend("0");//当前登录用户与该用户不是好友
			}
				users.add(allUsers.get(i));
		}
		new ObjectMapper().writeValue(response.getOutputStream(), users);
	}
}
