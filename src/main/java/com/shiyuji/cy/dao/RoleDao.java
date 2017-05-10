package com.shiyuji.cy.dao;

import com.shiyuji.cy.pojo.Role;

public interface RoleDao {
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
	int addRole(Role r);

}
