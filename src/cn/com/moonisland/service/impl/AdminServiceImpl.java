package cn.com.moonisland.service.impl;

import cn.com.moonisland.dao.AdminDao;
import cn.com.moonisland.pojo.Admin;
import cn.com.moonisland.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Admin login(Admin admin) {
		return this.adminDao.findAdmin(admin);
	}

}
