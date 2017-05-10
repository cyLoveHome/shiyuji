package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Role;



public interface RoleService {
	/**
	 * 根据rId查用户角色
	 * @param rId
	 * @return
	 */
	Role selectByRid(String rId);
	
	
	/**
	 * 添加用户角色
	 * @param rName
	 * @return
	 */
	boolean addRole(Role r);

}
