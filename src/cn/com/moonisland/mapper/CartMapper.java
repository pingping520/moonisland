package cn.com.moonisland.mapper;

import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;

public interface CartMapper {
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
	public Cart findCart(User user);
	
}
