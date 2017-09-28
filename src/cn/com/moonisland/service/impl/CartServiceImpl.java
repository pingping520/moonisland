package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.CartDao;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;
import cn.com.moonisland.service.CartService;

public class CartServiceImpl implements CartService {
	
	private CartDao cartDao;
	
	public CartDao getCartDao() {
		return cartDao;
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	@Override
	public int addCart(Cart cart) {
		return this.cartDao.addCart(cart);
	}

	@Override
	public int updateCart(Cart cart) {
		return this.cartDao.updateCart(cart);
	}

	@Override
	public Cart findCart(Cart cart) {
		return this.cartDao.findCart(cart);
	}

	@Override
	public List<Cart> findAllCart(User user) {
		return this.cartDao.findAllCart(user);
	}

}
