package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.AddressDao;
import cn.com.moonisland.mapper.AddressMapper;
import cn.com.moonisland.pojo.Address;

public class AddressDaoImpl extends SqlSessionDaoSupport implements AddressDao{
	
	private AddressMapper mapper;
	
	@Override
	public int addAddress(Address address) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.addAddress(address);
	}

	@Override
	public int updateAddress(Address address) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.updateAddress(address);
	}

	@Override
	public Address findAddress(Address address) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.findAddress(address);
	}

	@Override
	public List<Address> findAllAddress() {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.findAllAddress();
	}

	@Override
	public int deleteAddress(Address address) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.deleteAddress(address);
	}

	@Override
	public List<Address> findAllAddress2(int uid) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.findAllAddress2(uid);
	}

	@Override
	public int deleteAddress2(Address address) {
		this.mapper = this.getSqlSession().getMapper(AddressMapper.class);
		return this.mapper.deleteAddress2(address);
	}

}
