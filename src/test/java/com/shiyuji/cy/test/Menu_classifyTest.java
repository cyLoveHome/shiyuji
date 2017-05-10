package com.shiyuji.cy.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shiyuji.cy.pojo.Menu_classify;
import com.shiyuji.cy.pojo.Role;
import com.shiyuji.cy.service.Menu_classifyService;
import com.shiyuji.cy.service.Impl.RoleServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml" })
public class Menu_classifyTest {
	@Autowired
	private Menu_classifyService mcService;
	
	@Autowired
	private RoleServiceImpl roleService;
	
	@Test
	public void add(){
		/*boolean isSucces = mcService.createMc("素食");
		System.out.println("isSuccess-----"+isSucces);*/
		Role r = new Role("超级管理员");
		roleService.addRole(r);
		
	}
	@Test
	public void find(){
		List<Menu_classify> list= mcService.select();
		for (Menu_classify menu_classify : list) {
			System.out.println("menu_classify----"+menu_classify);
		}
	}

}
