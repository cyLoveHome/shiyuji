package com.shiyuji.cy.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.service.Impl.ReportServiceImpl;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	private ReportServiceImpl reportService;
	
	@RequestMapping(value="/addReport")
	@ResponseBody
	public void  add(HttpServletRequest request,HttpServletResponse response,String uId,String mId,String cause) throws IOException{
		Report report = new Report(uId, mId, cause);
		boolean isReport = reportService.addReport(report);
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
}
