package cn.com.moonisland.service.impl;

import java.util.List;
import cn.com.moonisland.dao.AddressDao;
import cn.com.moonisland.pojo.Address;
import cn.com.moonisland.service.AddressService;

public class AddressServiceImpl implements AddressService{
	
	private AddressDao addressDao;
	
	public AddressDao getAddressDao() {
		return addressDao;
	}

	public void setAddressDao(AddressDao addressDao) {
		this.addressDao = addressDao;
	}

	@Override
	public int addAddress(Address address) {
		return this.addressDao.addAddress(address);
	}

	@Override
	public int updateAddress(Address address) {
		return this.addressDao.updateAddress(address);
	}

	@Override
	public Address findAddress(Address address) {
		return this.addressDao.findAddress(address);
	}

	@Override
	public List<Address> findAllAddress() {
		return this.addressDao.findAllAddress();
	}

	@Override
	public int deleteAddress(Address address) {
		return this.addressDao.deleteAddress(address);
	}

	@Override
	public List<Address> findAllAddress2(int uid) {
		return this.addressDao.findAllAddress2(uid);
	}

	@Override
	public int deleteAddress2(Address address) {
		return this.addressDao.deleteAddress2(address);
	}

}
