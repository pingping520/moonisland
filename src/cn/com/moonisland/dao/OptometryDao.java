package cn.com.moonisland.dao;

import java.util.List;

import cn.com.moonisland.pojo.Optometry;

public interface OptometryDao {

	/**
	 * 全表查询
	 */
	public List<Optometry> findAll();
	
	/**
	 * 添加
	 */
	public int add(Optometry optometry);
}
