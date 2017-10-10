package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.UserDao;
import cn.com.moonisland.mapper.UserMapper;
import cn.com.moonisland.pojo.User;

public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {
	private UserMapper mapper;
	
	@Override
	public int addUser(User user) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.addUser(user);
	}

	@Override
	public int updateUser(User user) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.updateUser(user);
	}

	@Override
	public int pageCount() {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.pageCount();
	}

	@Override
	public List<User> users(int page) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.users(page);
	}

	@Override
	public User login(User user) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.login(user);
	}

	@Override
	public User findUser(User user) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.findUser(user);
	}

	@Override
	public List<User> whiteListUser(int page) {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.whiteListUser(page);
	}

	@Override
	public int whitePageCount() {
		this.mapper = this.getSqlSession().getMapper(UserMapper.class);
		return this.mapper.whitePageCount();
	}

}
