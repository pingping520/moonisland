package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.CartDao;
import cn.com.moonisland.mapper.CartMapper;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;

public class CartDaoImpl extends SqlSessionDaoSupport implements CartDao {

	private CartMapper mapper;	
	
	@Override
	public int addCart(Cart cart) {
		this.mapper = this.getSqlSession().getMapper(CartMapper.class);
		return this.mapper.addCart(cart);
	}

	@Override
	public int updateCart(Cart cart) {
		this.mapper = this.getSqlSession().getMapper(CartMapper.class);
		return this.mapper.updateCart(cart);
	}

	@Override
	public Cart findCart(Cart cart) {
		this.mapper = this.getSqlSession().getMapper(CartMapper.class);
		return this.mapper.findCart(cart);
	}

	@Override
	public List<Cart> findAllCart(User user) {
		this.mapper = this.getSqlSession().getMapper(CartMapper.class);
		return this.mapper.findAllCart(user);
	}

}
