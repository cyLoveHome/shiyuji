package com.shiyuji.cy.web;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.expr.NewArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.dao.MenuDao;
import com.shiyuji.cy.dao.MenusDao;
import com.shiyuji.cy.dao.QuestionDao;
import com.shiyuji.cy.dao.ReportDao;
import com.shiyuji.cy.dao.ReportUserDao;
import com.shiyuji.cy.dao.SuggestDao;
import com.shiyuji.cy.dao.UserDao;
import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_menu;
import com.shiyuji.cy.pojo.Page;
import com.shiyuji.cy.pojo.Question;
import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.pojo.ReportUser;
import com.shiyuji.cy.pojo.Suggest;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.pojo.UserAndMenu;
import com.shiyuji.cy.pojo.UserAndMenus;
import com.shiyuji.cy.pojo.UserAndQuestion;
import com.shiyuji.cy.pojo.UserAndReport;
import com.shiyuji.cy.pojo.UserAndSugg;
import com.shiyuji.cy.service.Mc_menuService;
import com.shiyuji.cy.service.MenuService;
import com.shiyuji.cy.service.Menu_classifyService;
import com.shiyuji.cy.service.Impl.AnswerServiceImpl;
import com.shiyuji.cy.service.Impl.CommentServiceImpl;
import com.shiyuji.cy.service.Impl.FriendServiceImpl;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;
import com.shiyuji.cy.service.Impl.MenusServiceImpl;
import com.shiyuji.cy.service.Impl.Menus_menuServiceImpl;
import com.shiyuji.cy.service.Impl.QuestionServiceImpl;
import com.shiyuji.cy.service.Impl.ReportServiceImpl;
import com.shiyuji.cy.service.Impl.ReportUserServiceImpl;
import com.shiyuji.cy.service.Impl.SuggestServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private Mc_menuService mc_menuService;
	
	@Autowired
	private LikeServiceImpl likeService;
	
	@Autowired
	private CommentServiceImpl commentService;
	
	@Autowired
	private Menu_collectServiceImpl menu_collectService;
	
	@Autowired
	private MenusServiceImpl menusService;
	
	@Autowired
	private  Menus_menuServiceImpl ms_meService;
	
	@Autowired
	private QuestionServiceImpl queService;
	
	@Autowired
	private AnswerServiceImpl answerService;
	
	@Autowired
	private ReportUserServiceImpl ruService;
	
	@Autowired
	private ReportServiceImpl rService;
	
	@Autowired
	private SuggestServiceImpl suggService;
	
	@Autowired
	private FriendServiceImpl friService;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="/login",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response,String loginType,String pwd){
		ModelAndView model = new ModelAndView();
		String method = request.getMethod();
		if(method.equalsIgnoreCase("get")){
			model.setViewName("forward:../login_name.jsp");
		}else{
			HttpSession session = request.getSession(true);
			session.setMaxInactiveInterval(30*60);
			User user = userService.adminLogin(loginType, pwd);
			if(user != null){
				session.setAttribute("admin", user);
				model.setViewName("redirect:load");
			}else{
				model.setViewName("forward:/login_name.jsp");
			}
		}
		return model;
	}
	
	@RequestMapping(value="/load")
	public ModelAndView  reg(HttpServletRequest request,HttpServletResponse response){
		ModelAndView model = new ModelAndView("forward:/adminMain.jsp");
		List<User> allUser = userService.selectAll();
		model.addObject("uList", userService.selectNew());
		
		
		List<Menu> allMenu = menuService.selectAll();
		List<Menu> list = menuService.selectThree();
		List<UserAndMenu> mlist = new ArrayList<>();
		if(list.size()>0){
			for(int i =0;i<list.size();i++){
				UserAndMenu um = new UserAndMenu();
				User u = userService.SelectByUid(list.get(i).getuId());
				um.setMenu(list.get(i));
				um.setU(u);
				mlist.add(um);
			}
			model.addObject("mlist", mlist);
		}
		
		List<Menus> allMenus = menusService.selectAllMenus();
		List<Menus> list1 = menusService.selectNew();
		List<UserAndMenus> mslist = new ArrayList<>();
		if(list.size()>0){
			for(int i =0;i<list1.size();i++){
				UserAndMenus ums = new UserAndMenus();
				User u = userService.SelectByUid(list1.get(i).getuId());
				ums.setMenus(list1.get(i));
				ums.setU(u);
				mslist.add(ums);
			}
			model.addObject("mslist", mslist);
		}
		
		List<Question> allQue = queService.selectAll();
		List<Question> list2 = queService.selectNew();
		List<UserAndQuestion> qlist = new ArrayList<>();
		if(list2.size()>0){
			for(int i = 0;i<list2.size();i++){
				String uId= list2.get(i).getuId();
				User u = userService.SelectByUid(uId);
				
				String qId = list2.get(i).getqId();
				String answerNum = answerService.selectNum(qId);
				list2.get(i).setAnswerNum(answerNum);
				
				UserAndQuestion uq = new UserAndQuestion(u, list2.get(i));
				qlist.add(uq);
			}
			model.addObject("qlist", qlist);
		}
		
		List<ReportUser> list3 = ruService.selectNew();
		List<UserAndReport> ruList = new ArrayList<>();
		if(list3.size()>=0){
			for(int i = 0;i<list3.size();i++){
				UserAndReport ur = new UserAndReport();
				User rus = userService.SelectByUid(list3.get(i).getRuId());
				User u = userService.SelectByUid(list3.get(i).getuId());
				ur.setRu(list3.get(i));
				ur.setU(u);
				ur.setRus(rus);
				ruList.add(ur);
			}
			model.addObject("ruList", ruList);
		}
		
		List<Report> list4 = rService.selectNew();
		List<UserAndReport> rList = new ArrayList<>();
		if(list4.size()>=0){
			for(int i = 0;i<list4.size();i++){
				UserAndReport ur = new UserAndReport();
				User u = userService.SelectByUid(list4.get(i).getuId());
				ur.setR(list4.get(i));
				ur.setU(u);
				rList.add(ur);
			}
			model.addObject("rList", rList);
		}
		
		List<Suggest> list5 = suggService.selectNew();
		List<UserAndSugg> sList = new ArrayList<>();
		if(list4.size()>=0){
			for(int i = 0;i<list5.size();i++){
				UserAndSugg us = new UserAndSugg();
				User u = userService.SelectByUid(list5.get(i).getuId());
				us.setS(list5.get(i));
				us.setU(u);
				sList.add(us);
			}
			model.addObject("sList", sList);
		}
		
		model.addObject("uNum", allUser.size());
		model.addObject("mNum", allMenu.size());
		model.addObject("msNum", allMenus.size());
		model.addObject("qNum", allQue.size());
		
		return model;
	}
	

	
	@RequestMapping(value="/user/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  useStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/allUser.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = userService.selectAll().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<User> users = userDao.selectUserByPage(page.getStartPos(), page.getPageSize());
		mav.addObject("allusers", users);
		mav.addObject("page", page);
		return mav;
	}
	
	@RequestMapping(value="/admin/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  adminStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/allAdmin.jsp");
		User adminUid = (User) request.getSession(true).getAttribute("admin");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = userService.selectAdmin(adminUid.getuId()).size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<User> users = userDao.selectAdminByPage(page.getStartPos(), page.getPageSize(),adminUid.getuId());
		mav.addObject("alladmins", users);
		mav.addObject("page", page);
		return mav;
	}
	
	@Autowired
	ReportDao reportDao;
	
	@RequestMapping(value="/report/menu/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  menuReportStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/reportMenuInfo.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = reportDao.selectAll2().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<Report> reports = reportDao.selectReportByPage(page.getStartPos(), page.getPageSize());
		List<UserAndReport> rList = new ArrayList<>();
		for(Report report : reports){
			UserAndReport ur = new UserAndReport();
			User u = userService.SelectByUid(report.getuId());
			ur.setM(menuService.selectByMid(report.getmId()));
			ur.setR(report);
			ur.setU(u);
			rList.add(ur);
		}
		
			
		mav.addObject("rList", rList);
		mav.addObject("page", page);
		return mav;
	}
	
	@Autowired
	ReportUserDao reportUserDao;
	
	@RequestMapping(value="/report/user/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  userReportStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/reportUserInfo.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = reportUserDao.selectAll2().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<ReportUser> reports = reportUserDao.selectReportUserByPage(page.getStartPos(), page.getPageSize());
		List<UserAndReport> ruList = new ArrayList<>();
		for(ReportUser reportuser : reports){
			UserAndReport ur = new UserAndReport();
			User rus = userService.SelectByUid(reportuser.getRuId());
			User u = userService.SelectByUid(reportuser.getuId());
			ur.setRu(reportuser);
			ur.setU(u);
			ur.setRus(rus);
			ruList.add(ur);
		}
		mav.addObject("ruList", ruList);
		mav.addObject("page", page);
		return mav;
	}
	
	@Autowired
	SuggestDao suggestDao;
	
	@RequestMapping(value="/suggestion/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  suggestionStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/suggInfo.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = suggestDao.selectAll().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<Suggest> suggestions = suggestDao.selectSuggestByPage(page.getStartPos(), page.getPageSize());
		List<UserAndSugg> sList = new ArrayList<>();
		for (Suggest suggestion : suggestions) {
			UserAndSugg us = new UserAndSugg();
			User u = userService.SelectByUid(suggestion.getuId());
			us.setS(suggestion);
			us.setU(u);
			sList.add(us);
		}
		mav.addObject("sList", sList);
		mav.addObject("page", page);
		return mav;
	}
	@Autowired
	MenuDao menuDao;
	
	@RequestMapping(value="/menu/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  menuStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/dataMenu.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = menuService.selectAll().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<Menu> allMenu = menuDao.selectMenuByPage(page.getStartPos(), page.getPageSize());
		List<UserAndMenu> mlist = new ArrayList<>();
		for(Menu menu : allMenu){
			UserAndMenu um = new UserAndMenu();
			User u = userService.SelectByUid(menu.getuId());
			um.setMenu(menu);
			um.setU(u);
			mlist.add(um);
		}
		mav.addObject("mlist", mlist);
		mav.addObject("page", page);
		return mav;
	}
	
	@Autowired
	QuestionDao questionDao;
	
	@RequestMapping(value="/question/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  questionStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/dataQuestion.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = queService.selectAll().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<Question> questions = questionDao.selectQuestionByPage(page.getStartPos(), page.getPageSize());
		List<UserAndQuestion> qlist = new ArrayList<>();
		for(Question question: questions){
			String uId= question.getuId();
			User u = userService.SelectByUid(uId);
			String qId =question.getqId();
			String answerNum = answerService.selectNum(qId);
			question.setAnswerNum(answerNum);
			UserAndQuestion uq = new UserAndQuestion(u, question);
			qlist.add(uq);
		}
		mav.addObject("qlist", qlist);
		mav.addObject("page", page);
		return mav;
	}
	
	@Autowired
	MenusDao menusDao;
	
	@RequestMapping(value="/menus/all",method={RequestMethod.GET,RequestMethod.POST})  
	public ModelAndView  menusStatistics(HttpServletRequest request,HttpServletResponse response
			) throws ParseException{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("forward:/dataMenus.jsp");
		String currentPage = (String)request.getParameter("currentpage");
		Page page = null;
		Integer totalCount = menusService.selectAllMenus().size();
		Integer pageNow = 1;
		if(currentPage != null && !currentPage.isEmpty()){
			pageNow = Integer.parseInt(currentPage);
		}
		page = new Page(totalCount, pageNow);
		List<Menus> allMenus = menusDao.selectMenusByPage(page.getStartPos(), page.getPageSize());
		List<UserAndMenus> mslist = new ArrayList<>();
		for(Menus menus : allMenus){
			UserAndMenus ums = new UserAndMenus();
			User u = userService.SelectByUid(menus.getuId());
			ums.setMenus(menus);
			ums.setU(u);
			mslist.add(ums);
		}
		mav.addObject("mslist", mslist);
		mav.addObject("page", page);
		return mav;
	}
	
	//封号
		@RequestMapping(value="/user/{uid}/{dayAmount}/ban",method={RequestMethod.GET,RequestMethod.POST})  
		@ResponseBody
	    public void  userBan(HttpServletRequest request,HttpServletResponse response,
	    		@PathVariable("uid")String uid,
	    		@PathVariable("dayAmount")String dayAmount
	    		) throws ParseException, IOException{ 
			logger.warn("ban user uid ------"+uid+"dayAmount:"+dayAmount);
			ServletOutputStream outputStream = response.getOutputStream();
			ObjectMapper objectMapper = new ObjectMapper();
			boolean banSuccess = false;
			String result = "";
			if(uid == null || uid == "") {
				result="error|数据异常";
			}else{
				User user = userDao.selectByUid(uid);
				if(user == null) 
					result="error|数据异常";
				else{
					Long days= Long.parseLong(dayAmount);
					Long currentTime = System.currentTimeMillis();
					Long spendTime = (long) (24*60*60*1000*days);
					Long banTime = currentTime+spendTime;
					user.setBanTime(banTime);
					int updateUser = userDao.updateUser(user);
					banSuccess = updateUser>0;
					if(banSuccess){
						objectMapper.writeValue(outputStream, user);
						return;
					}else{
						result ="error|封号失败";
					}
				}
			}
			objectMapper.writeValue(outputStream, result);
			
	    }
		
		//解禁
		@RequestMapping(value="/user/{uid}/cancel/ban",method={RequestMethod.GET,RequestMethod.POST})  
		@ResponseBody
	    public void  userCancel(HttpServletRequest request,HttpServletResponse response,
	    		@PathVariable("uid")String uid
	    		) throws ParseException, IOException{ 
			logger.warn("ban user uid ------"+uid);
			ServletOutputStream outputStream = response.getOutputStream();
			ObjectMapper objectMapper = new ObjectMapper();
			boolean banSuccess = false;
			String result = "";
			if(uid == null || uid == "") {
				result="error|数据异常";
			}else{
				User user = userDao.selectByUid(uid);
				if(user == null) 
					result="error|数据异常";
				else{
					Long banTime = 0L;
					user.setBanTime(banTime);
					int updateUser = userDao.updateUser(user);
					banSuccess = updateUser>0;
					if(banSuccess){
						objectMapper.writeValue(outputStream, user);
						return;
					}else{
						result ="error|解禁失败";
					}
				}
			}
			objectMapper.writeValue(outputStream, result);
	    }
	

	
	

}
