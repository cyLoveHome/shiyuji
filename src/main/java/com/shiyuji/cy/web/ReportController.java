package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Menu;
import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.pojo.ReportUser;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.pojo.UserAndReport;
import com.shiyuji.cy.service.Impl.MenuServiceImpl;
import com.shiyuji.cy.service.Impl.ReportServiceImpl;
import com.shiyuji.cy.service.Impl.ReportUserServiceImpl;
import com.shiyuji.cy.service.Impl.UserServiceImpl;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	private ReportServiceImpl reportService;
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private ReportUserServiceImpl reportUserService;
	
	@Autowired
	private MenuServiceImpl menuService;
	
	@RequestMapping(value="/addReport")
	@ResponseBody
	public void  add(HttpServletRequest request,HttpServletResponse response,String uId,String mId,String cause) throws IOException{
		System.out.println("-----------"+uId);
		System.out.println("------*******-----"+mId);
		System.out.println("--*************---------"+cause);
		boolean isReport = reportService.addReport(uId, mId, cause);
		if(isReport){
			response.getOutputStream().print(isReport);
		}
	}
	
	@RequestMapping(value="/addReportUser")
	@ResponseBody
	public void  addReUser(HttpServletRequest request,HttpServletResponse response,String uId,String ruId,String cause) throws IOException{
		ReportUser ru = new ReportUser(uId, ruId, cause);
		boolean isReport = reportUserService.addReport(ru);
		if(isReport){
			response.getOutputStream().print(isReport);
		}
	}
	
	
	@RequestMapping(value="/selectReport")
	@ResponseBody
	public void  selectOne(HttpServletRequest request,HttpServletResponse response,String uId,String mId) throws IOException{
		Report r = reportService.selectOne(uId, mId);
		boolean isReport = false;
		if(r != null){
			isReport = true;
		}
		response.getOutputStream().print(isReport);
	}
	
	@RequestMapping(value="/selectReportUser")
	@ResponseBody
	public void  selectOneUser(HttpServletRequest request,HttpServletResponse response,String uId,String ruId) throws IOException{
		ReportUser r = reportUserService.selectOne(uId, ruId);
		boolean isReport = false;
		if(r != null){
			isReport = true;
		}
		response.getOutputStream().print(isReport);
	}
	
	@RequestMapping(value="/reportUser")
	@ResponseBody
	public void  reportUser(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<ReportUser> reUser = reportUserService.selectAll(uId);
		List<UserAndReport> urList = new ArrayList<>();
		if(reUser.size()==0){
			response.getOutputStream().print("false");
		}else{
			for(int i = 0;i<reUser.size();i++){
				UserAndReport ur = new UserAndReport();
				User u = userService.SelectByUid(reUser.get(i).getRuId());
				ur.setRu(reUser.get(i));
				ur.setU(u);
				urList.add(ur);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), urList);
		}
	}
	
	@RequestMapping(value="/reportMenu")
	@ResponseBody
	public void  reportMenu(HttpServletRequest request,HttpServletResponse response,String uId) throws IOException{
		List<Report> reMenu = reportService.selectAll(uId);
		List<UserAndReport> mrList = new ArrayList<>();
		if(reMenu.size()==0){
			response.getOutputStream().print("false");
		}else{
			for(int i = 0;i<reMenu.size();i++){
				UserAndReport ur = new UserAndReport();
				Menu menu = menuService.selectByMid(reMenu.get(i).getmId());
				ur.setM(menu);
				ur.setR(reMenu.get(i));
				mrList.add(ur);
			}
			new ObjectMapper().writeValue(response.getOutputStream(), mrList);
		}
	}
}
