package cn.com.moonisland.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.com.moonisland.pojo.Address;
import cn.com.moonisland.pojo.User;
import cn.com.moonisland.service.AddressService;

public class TestAddress {
	ApplicationContext  context ;
	
	@Before
	public void setUp(){
		this.context = new ClassPathXmlApplicationContext("springmvc-config.xml");
	}
	
	@Test
	public void test1(){
		AddressService addressService = (AddressService) this.context.getBean("addressService");
		Address address = new Address();
		User user = new User();
		user.setUserId(75);
		address.setCity("日本");
		address.setUser(user);
		int r = addressService.addAddress(address);
		System.out.println(r);
	}
	
	@Test
	public void test2(){
		AddressService addressService = (AddressService) this.context.getBean("addressService");
		Address address = new Address();
		address.setAddressId(1);
		User user = new User();
		user.setUserId(75);
		address.setCity("日本");
		address.setUser(user);
		address.setCity("哈哈哈"); 
		int r = addressService.updateAddress(address);
		System.out.println(r);
	}
	
	
	@Test
	public void test3(){
		AddressService addressService = (AddressService) this.context.getBean("addressService");
		List<Address> list = addressService.findAllAddress();
		System.out.println(list.size());
	}
	
	@Test
	public void test4(){
		AddressService addressService = (AddressService) this.context.getBean("addressService");
		Address address = new Address();
		address.setAddressId(1);
		int r = addressService.deleteAddress(address);
		System.out.println(r);
	}
}


