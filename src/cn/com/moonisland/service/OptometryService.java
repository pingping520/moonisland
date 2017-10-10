package cn.com.moonisland.service;

import java.util.List;

import cn.com.moonisland.pojo.Optometry;

public interface OptometryService {

	/**
	 * 全表查询
	 */
	public List<Optometry> findAll();
	
	/**
	 * 添加
	 */
	public int add(Optometry optometry);
}
