package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.Brand;

public interface BrandMapper {
	/**
	 * 添加
	 */
	public int addBrand(Brand brand);
	/**
	 * 更新状态
	 */
	public int checkBrand(Brand brand);
	/**
	 * 更新品牌
	 */
	public int updateBrand(Brand brand);
	/**
	 * 查询单条
	 */
	public Brand findBrand(Brand brand);
	/**
	 * 查询全部
	 */
	public List<Brand> brands();
	/**
	 * 查询全部可用品牌
	 */
	public List<Brand> findAllUserable();
}
