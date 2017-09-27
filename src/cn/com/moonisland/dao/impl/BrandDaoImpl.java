package cn.com.moonisland.dao.impl;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.BrandDao;
import cn.com.moonisland.mapper.BrandMapper;
import cn.com.moonisland.pojo.Brand;

public class BrandDaoImpl extends SqlSessionDaoSupport implements BrandDao {
	
	private BrandMapper mapper;
	
	@Override
	public int addBrand(Brand brand) {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.addBrand(brand);		
	}

	@Override
	public int checkBrand(Brand brand) {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.checkBrand(brand);
	}
	
	@Override
	public int updateBrand(Brand brand) {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.updateBrand(brand);
	}
	
	@Override
	public List<Brand> brands() {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.brands();
	}

	@Override
	public Brand findBrand(Brand brand) {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.findBrand(brand);
	}

	@Override
	public List<Brand> findAllUserable() {
		this.mapper = this.getSqlSession().getMapper(BrandMapper.class);
		return this.mapper.findAllUserable();
	}

}
