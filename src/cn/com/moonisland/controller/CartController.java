package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;
import cn.com.moonisland.service.CartService;

@Controller
@RequestMapping(value="/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	/**
	 * 添加购物车
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addCart(Cart cart){
		int result = this.cartService.addCart(cart);
		return result;
	}
	
	/**
	 * 更新购物车
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updateCart(Cart cart){
		int result = this.cartService.updateCart(cart);
		return result;
	}
	
	/**
	 * 查看购物车
	 */
	@RequestMapping(value="/findCart")
	@ResponseBody
	public Cart findCart(Cart cart){
		Cart ct = this.cartService.findCart(cart);
		return ct;		
	}
	
	/**
	 * 查询全部购物车
	 */
	@RequestMapping(value="/findAllCart")
	@ResponseBody
	public List<Cart> findAllCart(User user){
		List<Cart> carts = this.cartService.findAllCart(user);
		return carts;		
	}
	
}
