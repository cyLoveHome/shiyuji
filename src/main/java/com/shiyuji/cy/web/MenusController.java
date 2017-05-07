package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.Menus;
import com.shiyuji.cy.pojo.Menus_collect;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.pojo.UserAndMenu;
import com.shiyuji.cy.service.Impl.MenusServiceImpl;
import com.shiyuji.cy.service.Impl.Menus_collectServiceImpl;
import com.shiyuji.cy.service.Impl.Menus_menuServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/menus")
public class MenusController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MenusServiceImpl menusService;
	
	@Autowired
	private Menus_collectServiceImpl menus_collService;
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private Menus_menuServiceImpl ms_meService;
	
	@RequestMapping(value="/menusList")
	@ResponseBody
	public void menusList(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<Menus> myList = menusService.selectByUid(uId);
		if(myList.size()==0){
			response.getOutputStream().print("false");
		}else{
			new ObjectMapper().writeValue(response.getOutputStream(), myList);
		}
	}
	
	@RequestMapping(value="/menusOtherList")
	@ResponseBody
	public void menusOtherList(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<Menus> otherList = menus_collService.selectByUid(uId);
		if(otherList.size()==0){
			response.getOutputStream().print("false");
		}else{
			new ObjectMapper().writeValue(response.getOutputStream(), otherList);
		}
	}
	
	@RequestMapping(value="/addMenus")
	@ResponseBody
	public void addMenus(HttpServletRequest request,HttpServletResponse response,String uId,String msTitle,String msInfo) throws IOException{
		Menus ms = new Menus(uId, msTitle, msInfo);
		boolean isSuccess = menusService.addMenus(ms);
		if(isSuccess){
			response.getOutputStream().print(ms.getMsId());
		}else{
			response.getOutputStream().print("false");
		}
	}
	
	
	@RequestMapping(value="/selectOne/{msId}")
	@ResponseBody
	public ModelAndView selectMenus(HttpServletRequest request,HttpServletResponse response,@PathVariable("msId")String msId) throws IOException{
		ModelAndView model = new ModelAndView();
		User user = (User) request.getSession(true).getAttribute("user");
		Menus menus = menusService.selectByMsid(msId);
		Menus_collect msc = new Menus_collect();
		if(menus!=null){
			String collectNum = menus_collService.collectNum(msId);
			menus.setMenusCollectNum(collectNum);
			msc = menus_collService.isSelect(user.getuId(), msId);
			if(msc != null){
				menus.setIsCollect("1");//已收藏
			}else{
				menus.setIsCollect("0");//未收藏
			}
			
			User u = userService.SelectByUid(menus.getuId());
			
			List<Menu> collMenus = ms_meService.selectByMsid(msId);
			List<UserAndMenu> umList = new ArrayList<>();
			model.addObject("us", u);
			if(collMenus.size()>0){
				menus.setCollMenu(collMenus.size()+"");
				for(int i =0;i<collMenus.size();i++){
					User us = userService.SelectByUid(collMenus.get(i).getuId());
					UserAndMenu um = new UserAndMenu();
					um.setMenu(collMenus.get(i));
					um.setU(us);
					umList.add(um);
				}
				model.addObject("umList", umList);
				
			}
		}
		
		List<Menus> ranList = menusService.selectRan();
		model.addObject("menus", menus);
		model.addObject("ranList", ranList);
		model.setViewName("forward:/one_menus.jsp");
		return model;
	}
	
	
	@RequestMapping(value="/addORdeleteCollect")
	@ResponseBody
	public void  collect(HttpServletRequest request,HttpServletResponse response,String msId,String uId) throws IOException{
		Menus_collect msc = menus_collService.isSelect(uId, msId);
		boolean isSuccess = false;
		if(msc!=null){
			isSuccess = menus_collService.delete(uId, msId);
		}else{
			Menus_collect msColl = new Menus_collect(uId, msId);
			isSuccess = menus_collService.add(msColl);
		}
		String num = menus_collService.collectNum(msId);
		response.getOutputStream().print(isSuccess+"|"+num);
	}

}
