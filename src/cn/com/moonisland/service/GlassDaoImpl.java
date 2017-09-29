package cn.com.moonisland.service;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.GlassDao;
import cn.com.moonisland.mapper.GlassMapper;

import cn.com.moonisland.pojo.Glass;


public class GlassDaoImpl extends SqlSessionDaoSupport implements GlassDao{

	@Override
	public List<Glass> findall() {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.findall();
	}

	@Override
	public List<Glass> findbyid(int id) {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.findbyid(id);
	}

	@Override
	public int insert(Glass g) {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.insert(g);
		
	}

	@Override
	public int update(Glass g) {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.update(g);
		
	}

	@Override
	public void delete(Glass g) {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		mapper.delete(g);
		
	}

	public List<Glass> findlimit(Map<String, Integer> map) {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.findlimit(map);
	}

	

	@Override
	public int pagecount() {
		GlassMapper mapper = (GlassMapper) this.getSqlSession().getMapper(GlassMapper.class);
		return mapper.pagecount();
	}

	

	

}
