package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.BrandDao;
import cn.com.moonisland.pojo.Brand;
import cn.com.moonisland.service.BrandService;

public class BrandServiceImpl implements BrandService {
	
	private BrandDao brandDao;
	
	public BrandDao getBrandDao() {
		return brandDao;
	}

	public void setBrandDao(BrandDao brandDao) {
		this.brandDao = brandDao;
	}

	@Override
	public int addBrand(Brand brand) {
		return this.brandDao.addBrand(brand);
	}

	@Override
	public int checkBrand(Brand brand) {
		return this.brandDao.checkBrand(brand);
	}
	
	@Override
	public int updateBrand(Brand brand) {
		return this.brandDao.updateBrand(brand);
	}
	
	@Override
	public Brand findBrand(Brand brand) {
		return this.brandDao.findBrand(brand);
	}
	
	@Override
	public List<Brand> brands() {
		return this.brandDao.brands();
	}

	@Override
	public List<Brand> findAllUserable() {
		return brandDao.findAllUserable();
	}

}
