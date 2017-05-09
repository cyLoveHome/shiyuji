package com.shiyuji.cy.web;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.ServletOutputStream;
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
import com.shiyuji.cy.dao.UserDao;
import com.shiyuji.cy.pojo.Friend;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_classify;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndMenu;
import com.shiyuji.cy.pojo.UserAndQuestion;
import com.shiyuji.cy.service.UserService;
import com.shiyuji.cy.service.Impl.AnswerServiceImpl;
import com.shiyuji.cy.service.Impl.FriendServiceImpl;
import com.shiyuji.cy.service.Impl.MenuServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_classifyServiceImpl;
import com.shiyuji.cy.service.Impl.MenusServiceImpl;
import com.shiyuji.cy.service.Impl.QuestionServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;
import com.shiyuji.cy.utils.VerifyCodeUtils;

@Controller
@RequestMapping("/user")
public class UserController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private FriendServiceImpl friendServiceImpl;
	
	@Autowired
	private MenuServiceImpl menuService;
	
	@Autowired
	private MenusServiceImpl menusService;
	
	@Autowired
	private Menu_classifyServiceImpl mcService;
	
	@Autowired
	private QuestionServiceImpl questionService;
	
	@Autowired
	private AnswerServiceImpl answerService;
	
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
			session.setMaxInactiveInterval(30*60);
			User user = userService.login(loginType, pwd);
			if(user != null){
				session.setAttribute("user", user);
				
				model.setViewName("redirect:main");
			}else{
				model.setViewName("forward:/login_name.jsp");
			}
		}
		return model;
	}
	
	@RequestMapping(value="/main",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView main(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model = new ModelAndView();
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");
		String uId = user.getuId();
		List<Menu_classify> mcList = mcService.select();//取所有菜谱分类
		
		List<User> randUsers = userService.selectRandEightUsers(uId);//随机获取8位厨友
		List<User> randUserList = new ArrayList<>();
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
			randUserList.add(randUsers.get(i));
		}
		
		List<Question> queList = questionService.selectRand();//随机获取5条问题
		List<Question> queRandList = new ArrayList<>();
		for(int i = 0;i<queList.size();i++){
			String qId = queList.get(i).getqId();
			String answerNum = answerService.selectNum(qId);
			queList.get(i).setAnswerNum(answerNum);
			queRandList.add(queList.get(i));
		}
		
		List<Menu> menuList = menuService.select();//默认查最新13条menu
		List<UserAndMenu> umList = new ArrayList<>();
			for(int i = 0;i<menuList.size();i++){
				String id = menuList.get(i).getuId();
				User u = userService.SelectByUid(uId);
				UserAndMenu um = new UserAndMenu(u, menuList.get(i));
				umList.add(um);
			}
			
		List<Menus> ranList = menusService.selectRan();
		
		model.addObject("ranList", ranList);
		model.addObject("mcList", mcList);
		model.addObject("randUserList", randUserList);
		model.addObject("queRandList", queRandList);
		model.addObject("umList", umList);
		model.setViewName("forward:/main.jsp");
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
	
	@RequestMapping(value="/{email}/email/check")
	@ResponseBody
	public void checkEmailExsist(HttpServletRequest request,HttpServletResponse response,
			@PathVariable("email")String email) throws JsonGenerationException, JsonMappingException, IOException{
		User user = userDao.selectByEmailAddress(email);
		new ObjectMapper().writeValue(response.getOutputStream(), user!=null);
	}
	@RequestMapping(value="/email/{bindEmail}/send",method={RequestMethod.GET,RequestMethod.POST})  
	@ResponseBody
    public void  emailSend(HttpServletRequest request,HttpServletResponse response,
    		@PathVariable("bindEmail")String bindEmail
    		) throws ParseException, IOException{ 
		logger.warn("email------"+bindEmail);
		ServletOutputStream outputStream = response.getOutputStream();
		String userFindPwd = userService.userFindPwd(bindEmail);
		User myuser = userDao.selectByEmailAddress(bindEmail);
		myuser.setCode(userFindPwd);
		boolean userUpdate = userDao.updateUser(myuser)>0;
		outputStream.print((userFindPwd!=""&&userUpdate)?"1":"2");
		
    }
	
	@RequestMapping(value="/email/code/{bind_email}/{code}/verify",method={RequestMethod.GET,RequestMethod.POST})  
	@ResponseBody
    public void  emailCodeVerify(HttpServletRequest request,HttpServletResponse response,
    		@PathVariable("bind_email")String bind_email,
    		@PathVariable("code")String code
    		) throws ParseException, IOException{ 
		logger.warn("email------"+bind_email);
		ServletOutputStream outputStream = response.getOutputStream();
		boolean email_bind_user_exsist = userDao.selectByEmailAddress(bind_email)!=null;
		if(email_bind_user_exsist){
			User myuser = userDao.selectByEmailAddress(bind_email);
			String email_code = myuser.getCode();
			if(code.equalsIgnoreCase(email_code)){
				outputStream.print("1");
			}else{
				outputStream.print("2");
			}
		}else{
			outputStream.print("2");
		}
    }
	
	
	@RequestMapping(value="/pwd/{pwd}/email/{bind_email}/modify",method={RequestMethod.GET,RequestMethod.POST})  
	@ResponseBody
    public void  pwdModifyEmail(HttpServletRequest request,HttpServletResponse response,
    		@PathVariable("pwd")String pwd,
    		@PathVariable("bind_email")String bind_email
    		) throws ParseException, IOException{ 
		String verifyPwd = com.shiyuji.cy.utils.MD5Util.encode2hex(pwd);
		ServletOutputStream outputStream = response.getOutputStream();
		boolean email_bind_user_exsist = userDao.selectByEmailAddress(bind_email)!=null;
		if(email_bind_user_exsist){
			User myuser = userDao.selectByEmailAddress(bind_email);
			myuser.setPassword(verifyPwd);
			boolean userUpdate = userDao.updateUser(myuser)>0;
			outputStream.print(userUpdate?"1":"2");
		}else{
			outputStream.print("2");
		}
		
    }
}
