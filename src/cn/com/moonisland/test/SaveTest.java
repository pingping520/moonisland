package cn.com.moonisland.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.com.moonisland.dao.SaveDao;
import cn.com.moonisland.pojo.Save;

public class SaveTest {

	private ApplicationContext context;
	@Before
	public void setUp() throws Exception {
		this.context = new ClassPathXmlApplicationContext("springmvc-config.xml");
	}

	@Test
	public void test() {
		SaveDao dao = (SaveDao) this.context.getBean("saveDao");
		List<Save> ls = dao.findAll("1");
		System.out.println(ls);
	}

}
