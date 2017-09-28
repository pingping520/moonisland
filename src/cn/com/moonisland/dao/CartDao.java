package cn.com.moonisland.dao;

import java.util.List;

import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;

public interface CartDao {
	/**
	 * 添加购物车
	 */
	public int addCart(Cart cart);
	/**
	 * 更新购物车
	 */
	public int updateCart(Cart cart);
	/**
	 * 查看购物车
	 */
	public Cart findCart(Cart cart);
	/**
	 * 查询用户全部购物车
	 */
	public List<Cart> findAllCart(User user);
}
