package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.AreaDao;
import cn.com.moonisland.pojo.Area;
import cn.com.moonisland.service.AreaService;

public class AreaServiceImpl implements AreaService {

	private AreaDao dao;
	public AreaDao getDao() {
		return dao;
	}
	public void setDao(AreaDao dao) {
		this.dao = dao;
	}
	@Override
	public List<Area> findbyid(String pid) {
		return this.dao.findbyid(pid);
	}
	

}
