package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.Optometry;

public interface OptometryMapper {

	/**
	 * 全表查询
	 */
	public List<Optometry> findall();
	
	/**
	 * 添加
	 */
	public int add(Optometry optometry);
}
