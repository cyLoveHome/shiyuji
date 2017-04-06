package com.shiyuji.cy.dao;

import com.shiyuji.cy.pojo.Role;

public interface RoleDao {
	/**
	 * 根据rId查用户角色
	 * @param rId
	 * @return
	 */
	Role selectByRid(String rId);

}
