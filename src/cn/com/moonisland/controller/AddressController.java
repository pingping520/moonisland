package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	 * 查询全部可用地址
	 */
	@RequestMapping(value="/findAll/{uid}")
	@ResponseBody
	public List<Address> findAll(@PathVariable int uid){
		List<Address> ls = this.addressService.findAllAddress2(uid);
		return ls;
	}
	
	/**
	 * 更新删除地址
	 */
	@RequestMapping(value="/delete2")
	@ResponseBody
	public int deleteAddress2(Address address){
		int del = this.addressService.deleteAddress2(address);
		return del;
	}
}
