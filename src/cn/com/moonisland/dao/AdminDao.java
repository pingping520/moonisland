package cn.com.moonisland.dao;

import cn.com.moonisland.pojo.Admin;

public interface AdminDao {
	/**
	 * 管理员登录
	 * @param admin
	 */
	public Admin findAdmin(Admin admin);
}
