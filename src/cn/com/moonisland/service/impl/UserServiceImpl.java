package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.UserDao;
import cn.com.moonisland.pojo.User;
import cn.com.moonisland.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public int addUser(User user) {
		return this.userDao.addUser(user);
	}

	@Override
	public int updateUser(User user) {
		return this.userDao.updateUser(user);
	}

	@Override
	public int pageCount() {
		return this.userDao.pageCount();
	}
	
	@Override
	public List<User> users(int page) {
		return this.userDao.users(page);
	}

	@Override
	public User login(User user) {
		return this.userDao.login(user);
	}

	@Override
	public User findUser(User user) {
		return this.userDao.findUser(user);
	}

	@Override
	public List<User> whiteListUser(int page) {
		return this.userDao.whiteListUser(page);
	}

	@Override
	public int whitePageCount() {
		return this.userDao.whitePageCount();
	}	

}
