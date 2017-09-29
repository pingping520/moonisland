package cn.com.moonisland.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;
import cn.com.moonisland.service.GoodsAttrService;

public class GoodsAttrTest {
	
	private ApplicationContext context;
	
	@Before
	public void setUp(){
		this.context = new ClassPathXmlApplicationContext("springmvc-config.xml");
	}
	
	@Test
	public void test1(){
		GoodsAttrService goodsAttrService = (GoodsAttrService) this.context.getBean("goodsAttrService");
		GoodsAttr goodsAttr = new GoodsAttr();
		goodsAttr.setAttrId(17);
		goodsAttr.setBorder("55");
		goodsAttr.setSize("66");
		int r = goodsAttrService.updateGoodsAttr(goodsAttr);
		System.out.println(r);
	}
	
	@Test
	public void test2(){
		GoodsAttrService goodsAttrService = (GoodsAttrService) this.context.getBean("goodsAttrService");
		List<GoodsAttr> list = goodsAttrService.findAll();
		System.out.println(list.size());
	}
	
	
}



