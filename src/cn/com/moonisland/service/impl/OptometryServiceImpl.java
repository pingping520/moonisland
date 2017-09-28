package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.OptometryDao;
import cn.com.moonisland.pojo.Optometry;
import cn.com.moonisland.service.OptometryService;

public class OptometryServiceImpl implements OptometryService {

	private OptometryDao dao;
	public OptometryDao getDao() {
		return dao;
	}
	public void setDao(OptometryDao dao) {
		this.dao = dao;
	}
	@Override
	public List<Optometry> findall() {
		return this.dao.findall();
	}
	@Override
	public int add(Optometry optometry) {
		return this.dao.add(optometry);
	}

}
