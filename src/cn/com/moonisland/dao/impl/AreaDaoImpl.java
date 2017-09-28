package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.AreaDao;
import cn.com.moonisland.mapper.AreaMapper;
import cn.com.moonisland.pojo.Area;

public class AreaDaoImpl extends SqlSessionDaoSupport implements AreaDao {

	private AreaMapper mapper;
	@Override
	public List<Area> findbyid(String pid) {
		this.mapper = this.getSqlSession().getMapper(AreaMapper.class);
		return this.mapper.findbyid(pid);
	}

}
