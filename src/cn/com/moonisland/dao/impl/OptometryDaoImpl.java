package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.OptometryDao;
import cn.com.moonisland.mapper.OptometryMapper;
import cn.com.moonisland.pojo.Optometry;

public class OptometryDaoImpl extends SqlSessionDaoSupport implements OptometryDao {

	private OptometryMapper mapper;
	@Override
	public List<Optometry> findAll() {
		this.mapper = this.getSqlSession().getMapper(OptometryMapper.class);
		return this.mapper.findAll();
	}
	@Override
	public int add(Optometry optometry) {
		this.mapper = this.getSqlSession().getMapper(OptometryMapper.class);
		return this.mapper.add(optometry);
	}

}
