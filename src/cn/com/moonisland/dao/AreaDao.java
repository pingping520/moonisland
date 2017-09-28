package cn.com.moonisland.dao;

import java.util.List;

import cn.com.moonisland.pojo.Area;

public interface AreaDao {

	/**
	 * 全表查询
	 */
	public List<Area> findbyid(String pid);
}
