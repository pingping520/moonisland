package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.Address;
import cn.com.moonisland.pojo.Cart;
import cn.com.moonisland.pojo.User;

public interface AddressMapper {
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
	
	/**
	 * 查询用户全部可用地址
	 */
	public List<Address> findAllAddress2(int uid);
	
	/**
	 * 删除更新地址
	 */
	public int deleteAddress2(Address address);
}
