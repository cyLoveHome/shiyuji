package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.ReportDao;
import com.shiyuji.cy.dao.RoleDao;
import com.shiyuji.cy.pojo.Report;
import com.shiyuji.cy.pojo.Role;
import com.shiyuji.cy.service.ReportService;
import com.shiyuji.cy.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleDao roleDao;

	@Override
	public Role selectByRid(String rId) {
		return roleDao.selectByRid(rId);
	}

	@Override
	public boolean addRole(Role r) {
		return roleDao.addRole(r)>0;
	}




	

}
