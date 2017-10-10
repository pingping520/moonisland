package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.SaveDao;
import cn.com.moonisland.pojo.Save;
import cn.com.moonisland.service.SaveService;

public class SaveServiceImpl implements SaveService {

	private SaveDao dao;
	public SaveDao getDao() {
		return dao;
	}

	public void setDao(SaveDao dao) {
		this.dao = dao;
	}

	@Override
	public List<Save> findAll(String id) {
		return this.dao.findAll(id);
	}

	@Override
	public int add(Save save) {
		return this.dao.add(save);
	}

	@Override
	public int delete(int id) {
		return this.dao.delete(id);
	}

}
