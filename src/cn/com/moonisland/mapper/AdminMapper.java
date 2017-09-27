package cn.com.moonisland.mapper;

import cn.com.moonisland.pojo.Admin;

public interface AdminMapper {
	/**
	 * 管理员登录
	 * @param admin
	 */
	public Admin findAdmin(Admin admin);
}
