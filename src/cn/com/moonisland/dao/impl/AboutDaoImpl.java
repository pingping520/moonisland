package cn.com.moonisland.dao.impl;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.AboutDao;
import cn.com.moonisland.mapper.AboutMapper;
import cn.com.moonisland.pojo.About;

public class AboutDaoImpl extends SqlSessionDaoSupport implements AboutDao {
	private AboutMapper mapper;
	
	@Override
	public int addAbout(About about) {
		this.mapper = this.getSqlSession().getMapper(AboutMapper.class);
		return this.mapper.addAbout(about);
	}

	@Override
	public int updateAbout(About about) {
		this.mapper = this.getSqlSession().getMapper(AboutMapper.class);
		return this.mapper.updateAbout(about);
	}
	
	@Override
	public About findAbout(About about) {
		this.mapper = this.getSqlSession().getMapper(AboutMapper.class);
		return this.mapper.findAbout(about);
	}
	
	@Override
	public List<About> abouts() {
		this.mapper = this.getSqlSession().getMapper(AboutMapper.class);
		return this.mapper.abouts();
	}

}
