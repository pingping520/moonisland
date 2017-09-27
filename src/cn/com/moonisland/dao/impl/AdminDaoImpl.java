package cn.com.moonisland.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.AdminDao;
import cn.com.moonisland.mapper.AdminMapper;
import cn.com.moonisland.pojo.Admin;

public class AdminDaoImpl extends SqlSessionDaoSupport implements AdminDao {
	
	private AdminMapper mapper;
	
	@Override
	public Admin findAdmin(Admin admin) {
		this.mapper = this.getSqlSession().getMapper(AdminMapper.class);
		return this.mapper.findAdmin(admin);
	}

}
