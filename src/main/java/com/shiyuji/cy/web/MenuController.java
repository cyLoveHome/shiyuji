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

import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Menu_collect;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndComment;
import com.shiyuji.cy.service.Mc_menuService;
import com.shiyuji.cy.service.MenuService;
import com.shiyuji.cy.service.Menu_classifyService;
import com.shiyuji.cy.service.Impl.CommentServiceImpl;
import com.shiyuji.cy.service.Impl.LikeServiceImpl;
import com.shiyuji.cy.service.Impl.Menu_collectServiceImpl;
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
	
	@RequestMapping(value="/uploadMenu")
	@ResponseBody
	public void upload(HttpServletRequest request,HttpServletResponse response,String mName,
			String mpicPath,String mInfo,String shicai,String steps,String mcId) throws IOException{
		String mId = menuService.uploadMenu(mName, mpicPath, mInfo, shicai,steps);
			boolean addSuccess = mc_menuService.add(mId, mcId);
			if(addSuccess){
				response.getOutputStream().print(mId);
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
		
		model.addObject("Menu", menu);
		model.addObject("Twocomments", list);
		model.setViewName("forward:/one_menu.jsp");
		return model;
	}

}
