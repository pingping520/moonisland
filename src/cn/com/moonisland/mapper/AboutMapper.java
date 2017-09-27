package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.About;

public interface AboutMapper {
	/**
	 * 添加
	 */
	public int addAbout(About about);
	/**
	 * 修改
	 */
	public int updateAbout(About about);
	/**
	 * 查询单条记录
	 */
	public About findAbout(About about);
	/**
	 * 查询全部
	 */
	public List<About> abouts();
}
