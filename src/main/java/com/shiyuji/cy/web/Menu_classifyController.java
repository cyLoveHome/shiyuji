package com.shiyuji.cy.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shiyuji.cy.pojo.Menu_classify;
import com.shiyuji.cy.service.Menu_classifyService;

@Controller
@RequestMapping("/menu")
public class Menu_classifyController {
	
	@Autowired
	private Menu_classifyService mcService;
//	
//	@RequestMapping(value="/")
//	public ModelAndView create(){
//		ModelAndView model = new ModelAndView();
//		return model;
//	}
	@RequestMapping(value="/classify")
	public void findall(HttpServletRequest request,HttpServletResponse response) throws JsonGenerationException, JsonMappingException, IOException{
		 List<Menu_classify> select = mcService.select();
		 new ObjectMapper().writeValue(response.getOutputStream(), select);
	}

}
