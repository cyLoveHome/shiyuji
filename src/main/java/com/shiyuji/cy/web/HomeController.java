package com.shiyuji.cy.web;

import java.text.ParseException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
public class HomeController {
	
	@Resource  
    private UserServiceImpl userService;
    @RequestMapping(value="/",method={RequestMethod.GET,RequestMethod.POST})  
    public ModelAndView  userLogin(HttpServletRequest request,HttpServletResponse response
    		) throws ParseException{  
//    	boolean isCookie = false;
//    	Cookie[] cookies = request.getCookies();
//    	if(cookies!=null&&cookies.length>0){
//    		for (Cookie cookie : cookies) {
//        		if("user".equalsIgnoreCase(cookie.getName())){
//        			String uid = cookie.getValue();
//        			User user = userService.userSelectByUid(uid);
//        			if(user!=null){
//        				isCookie = true;
//        				HttpSession session = request.getSession(true);
//        				if((User)session.getAttribute("user")!=null){
//        					session.removeAttribute("user");
//        				}
//        				session.setAttribute("user", user);
//        			}
//        		}
//    		}
//    	}
//    	
//    	
        ModelAndView mav=new ModelAndView();
//        if(isCookie){
//            mav.setViewName("redirect:/wuya-index.jsp");
//        }else{
//        	mav.setViewName("forward:/wuya-login.jsp");
//        }
        mav.setViewName("redirect:user/login");
        return mav;  
    }  

}
