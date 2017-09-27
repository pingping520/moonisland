package cn.com.moonisland.dao;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.User;

public interface UserDao {
	/**
	 * 用户添加
	 */
	public int addUser(User user);
	/**
	 * 用户更新
	 */
	public int updateUser(User user);
	/**
	 * 查询用户总数
	 */
	public int pageCount();
	/**
	 * 分页查询
	 */
	public List<User> users(int page);
	/**
	 * 用户登录
	 */
	public User login(User user);
	/**
	 * 查询单个用户
	 */
	public User findUser(User user);
}
