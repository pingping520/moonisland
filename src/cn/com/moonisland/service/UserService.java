package cn.com.moonisland.service;

import java.util.List;

import cn.com.moonisland.pojo.User;

public interface UserService {
	/**
	 * 用户添加
	 */
	public int addUser(User user);
	/**
	 * 用户更新
	 */
	public int updateUser(User user);
	/**
	 * 查询总页数
	 */
	public int pageCount();
	/**
	 * 查询白名单总页数
	 */
	public int whitePageCount();
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
	/**
	 * 查询全部白名单用户
	 */
	public List<User> whiteListUser(int page);
}
