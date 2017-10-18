package cn.com.moonisland.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.PicDao;
import cn.com.moonisland.mapper.PicMapper;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.Pic;

public class PicDaoImpl extends SqlSessionDaoSupport implements PicDao{

	@Override
	public List<Pic> findall() {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.findall();
	}

	@Override
	public int insert(Pic p) {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.insert(p);
		
	}


	@Override
	public int update(Pic p) {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.update(p);
		
	}

	@Override
	public List<Pic> findbyid( int id) {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.findbyid(id);
	}

	@Override
	public List<Pic> findlimit(Map<String, Integer> map) {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.findlimit(map);
	}

	@Override
	public int checkPic(Pic p) {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.checkPic(p);
	}

	@Override
	public int pagecount() {
		PicMapper mapper=(PicMapper) this.getSqlSession().getMapper(PicMapper.class);
		return mapper.pagecount();
	}
	

}
