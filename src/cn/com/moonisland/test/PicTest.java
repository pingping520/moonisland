package cn.com.moonisland.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.Pic;
import cn.com.moonisland.service.CartService;
import cn.com.moonisland.service.PicService;

public class PicTest {
	private ApplicationContext context;
	
	@Before
	public void setUp(){
		this.context = new ClassPathXmlApplicationContext("springmvc-config.xml");
	}
	
	@Test
	public void test1(){
		PicService service=(PicService) this.context.getBean("picService");
		List<Pic> lsList=service.findbyid(13);
		Pic pic=lsList.get(0);
		System.out.println(pic.getGoods().getGoodsName());
	}
}
