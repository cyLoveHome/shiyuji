package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.expr.NewArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_menu;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.pojo.UserAndMenu;
import com.shiyuji.cy.service.Mc_menuService;
import com.shiyuji.cy.service.MenuService;
import com.shiyuji.cy.service.Menu_classifyService;
import com.shiyuji.cy.service.Impl.CommentServiceImpl;
import com.shiyuji.cy.service.Impl.FriendServiceImpl;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;
import com.shiyuji.cy.service.Impl.MenusServiceImpl;
import com.shiyuji.cy.service.Impl.Menus_menuServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/createMenu")
public class MenuController {
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
	private FriendServiceImpl friService;
	
	@RequestMapping(value="/uploadMenu")
	@ResponseBody
	public void upload(HttpServletRequest request,HttpServletResponse response,String mName,
			String mpicPath,String mInfo,String shicai,String steps,String mcId) throws IOException{
			User user = (User) request.getSession(true).getAttribute("user");
			String mId = menuService.uploadMenu(user.getuId(),mName, mpicPath, mInfo, shicai,steps);
			boolean addSuccess = mc_menuService.add(mId, mcId);
			if(addSuccess){
				response.getOutputStream().print(mId);
			}
	}
	
	
	@RequestMapping(value="/selectSome")
	@ResponseBody
	public ModelAndView selectSome(HttpServletRequest request,HttpServletResponse response,String selectInfo) throws IOException{
		ModelAndView model = new ModelAndView();
		User user = (User) request.getSession(true).getAttribute("user");
		System.out.println("--------------------"+selectInfo);
		List<Menu> list = menuService.selectByMname(selectInfo, user.getuId());
		List<UserAndMenu> umlist = new ArrayList<>();
		if(list.size()>0){
			System.out.println("--------------------***********"+list.size());
			for(int i=0;i<list.size();i++){
				UserAndMenu um = new UserAndMenu();
				Menu menu = list.get(i);
				String collNum = menu_collectService.select(menu.getmId());
				menu.setMenuCollectNum(collNum);
				User us = userService.SelectByUid(menu.getuId());
				um.setU(us);
				um.setMenu(menu);
				umlist.add(um);
			}
			model.addObject("result", umlist);
			model.addObject("info", selectInfo);
		}else{
			model.addObject("result", null);
		}
		List<Menus> ranList = menusService.selectRan();
		System.out.println("--------*************************------------"+ranList.size());
		model.addObject("ranList", ranList);
		model.setViewName("forward:/all.jsp");
		return model;
	}
	
	

	@RequestMapping(value="/kitchen/{uId}")
	@ResponseBody
	public ModelAndView loadKitchen(HttpServletRequest request,HttpServletResponse response,@PathVariable("uId")String uId) throws IOException{
		ModelAndView model = new ModelAndView();
		User us = userService.SelectByUid(uId);
		String menuNum = menuService.selecNum(uId);
		us.setFocusNum(friService.selectFnum(uId));//被关注总数
		us.setToFocusNum(friService.selectUnum(uId));//我关注的总数
		us.setMenusNum(menusService.selectByUid(uId).size()+"");//菜单总数
		us.setMenuNum(menuNum);//菜谱总数
		List<Menu> myMenu = menuService.selectByUid(uId);
		if(myMenu.size()>0){
			for(int i =0 ;i<myMenu.size();i++){
				Menu menu = myMenu.get(i);
				menu.setLikeNum(likeService.selectbyMid(menu.getmId()));//创建的菜谱的点赞总数
				menu.setMenuCollectNum(menu_collectService.select(menu.getmId()));//收藏总数
			}
		}
		model.addObject("myMenu", myMenu);
		model.addObject("us", us);
		model.setViewName("forward:/kitchen.jsp");
		return model;
	}
	
	@RequestMapping(value="/collMenus/{uId}")
	@ResponseBody
	public void loadCollMenus(HttpServletRequest request,HttpServletResponse response,@PathVariable("uId")String uId) throws IOException{
		List<Menu> collMenu = menu_collectService.selectByUid(uId);
		List<UserAndMenu> umList = new ArrayList<>();
		if(collMenu.size()>0){
			for(int i =0 ;i<collMenu.size();i++){
				UserAndMenu um = new UserAndMenu();
				Menu menu = collMenu.get(i);
				menu.setLikeNum(likeService.selectbyMid(menu.getmId()));//创建的菜谱的点赞总数
				menu.setMenuCollectNum(menu_collectService.select(menu.getmId()));//收藏总数
				User us = userService.SelectByUid(menu.getuId());
				um.setMenu(menu);
				um.setU(us);
				umList.add(um);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), umList);
			System.out.println("-----------------------"+umList.size());
		}else{
			response.getOutputStream().print("false");
		}
	}
	
	@RequestMapping(value="/selectOne/{mId}")
	public ModelAndView findOne(HttpServletRequest request,HttpServletResponse response,@PathVariable("mId")String mId){
		ModelAndView model = new ModelAndView();
		User user = (User) request.getSession(true).getAttribute("user");
		Menu menu = menuService.selectByMid(mId);
		Like like = new Like();
		Menu_collect mc = new Menu_collect();
		if(user==null){
			model.setViewName("forward:/login_name.jsp");
		}else{
			like = likeService.selectLike(user.getuId(), mId);
			mc = menu_collectService.isSelect(user.getuId(), mId);
		}
		if(like != null){
			menu.setIsUnLike("1");//已赞
		}else{
			menu.setIsUnLike("0");//未赞
		}
		if(mc != null){
			menu.setIsCollect("1");//已收藏
		}else{
			menu.setIsCollect("0");//未收藏
		}
		//查点赞总数
		String likeNum =  likeService.selectbyMid(mId);
		menu.setLikeNum(likeNum);
		
		//查评论总数，2条评论内容及对应评论人信息
		List<Comment> commentTwo = commentService.selectTwo(mId);
		List<UserAndComment> list = new ArrayList<>();
		for(int i =0;i<commentTwo.size();i++){
			User u = userService.SelectByUid(commentTwo.get(i).getuId());
			UserAndComment uc = new UserAndComment();
			uc.setC(commentTwo.get(i));
			uc.setU(u);
			list.add(uc);
		}
		logger.warn("commNUm-----"+commentTwo.size());
		menu.setCommentNum(commentService.selectNum(mId));
		
		//查收藏总数
		String menu_collectNum = menu_collectService.select(mId);
		menu.setMenuCollectNum(menu_collectNum);
		
		User u = userService.SelectByUid(menu.getuId());
		
		List<Menus> myMenus = menusService.selectByUid(user.getuId());
		List<Menus> classifyMenus = ms_meService.selectByMid(mId);
		
		model.addObject("Menu", menu);
		model.addObject("myMenus", myMenus);
		model.addObject("classifyMenus", classifyMenus);
		model.addObject("us", u);
		model.addObject("Twocomments", list);
		model.setViewName("forward:/one_menu.jsp");
		return model;
	}
	
	
	@RequestMapping(value="/addmsMe")
	@ResponseBody
	public void addmsMe(HttpServletRequest request,HttpServletResponse response,String mId,String msId) throws IOException{
		Menus_menu menus_menu = new Menus_menu(mId, msId);
		boolean isSuccess = ms_meService.add(menus_menu);
		response.getOutputStream().print(isSuccess);
	}

}
