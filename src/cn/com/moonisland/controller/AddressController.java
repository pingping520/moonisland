package cn.com.moonisland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.moonisland.pojo.Address;
import cn.com.moonisland.service.AddressService;

@Controller
@RequestMapping(value="/address")
public class AddressController {
	
	@Autowired
	private AddressService addressService;
	
	/**
	 * 添加收货地址
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addService(Address address){
		int result = this.addressService.addAddress(address);
		return result;
	}
	
	/**
	 * 更新收货地址
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updateAddress(Address address){
		int result = this.addressService.updateAddress(address);
		return result;		
	}
	
	/**
	 * 删除收货地址
	 */
	@RequestMapping(value="/delete")
	@ResponseBody
	public int deleteAddress(Address address){
		int result = this.addressService.deleteAddress(address);
		return result;
	}
	
	/**
	 * 查询单个地址
	 */
	
	/**
	 * 查询全部地址
	 */
}
