package cn.com.moonisland.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.service.CartService;

public class CartTest {
	private ApplicationContext context;
	
	@Before
	public void setUp(){
		this.context = new ClassPathXmlApplicationContext("springmvc-config.xml");
	}
	
	@Test
	public void test1(){
		CartService cartService = (CartService) this.context.getBean("cartService");
		Cart cart = new Cart();
		cart.setCartId(1);
		Cart c = cartService.findCart(cart);
		c.setBothNum("66");
		int r = cartService.updateCart(c);
		System.out.println(r);
	}
}
