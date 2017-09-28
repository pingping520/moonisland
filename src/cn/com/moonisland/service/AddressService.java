package cn.com.moonisland.service;

import java.util.List;

import cn.com.moonisland.pojo.Address;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;

public interface AddressService {
	/**
	 * 添加地址
	 */
	public int addAddress(Address address);
	/**
	 * 更新地址
	 */
	public int updateAddress(Address address);
	/**
	 * 查询单个地址
	 */
	public Address findAddress(Address address);
	/**
	 * 查询全部地址
	 */
	public List<Address> findAllAddress();
	/**
	 * 删除地址
	 */
	public int deleteAddress(Address address);
}
