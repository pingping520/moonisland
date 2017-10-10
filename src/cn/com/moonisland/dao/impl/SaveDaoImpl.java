package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.SaveDao;
import cn.com.moonisland.mapper.SaveMapper;
import cn.com.moonisland.pojo.Save;

public class SaveDaoImpl extends SqlSessionDaoSupport implements SaveDao {

	private SaveMapper mapper;
	@Override
	public List<Save> findAll(String id) {
		this.mapper = this.getSqlSession().getMapper(SaveMapper.class);
		return this.mapper.findAll(id);
	}

	@Override
	public int add(Save save) {
		this.mapper = this.getSqlSession().getMapper(SaveMapper.class);
		return this.mapper.add(save);
	}

	@Override
	public int delete(int id) {
		this.mapper = this.getSqlSession().getMapper(SaveMapper.class);
		return this.mapper.delete(id);
	}

}
