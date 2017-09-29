package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.PicDao;
import cn.com.moonisland.pojo.Pic;
import cn.com.moonisland.service.PicService;

public class PicServiceImpl implements PicService{

		PicDao dao;
	public PicDao getDao() {
			return dao;
		}

		public void setDao(PicDao dao) {
			this.dao = dao;
		}

	@Override
	public List<Pic> findall() {
		return this.dao.findall();
	}

	@Override
	public List<Pic> findbyid(int id) {
		return this.dao.findbyid(id);
	}

	@Override
	public void insert(Pic p) {
		this.dao.insert(p);
		
	}

	
	@Override
	public int update(Pic p) {
		return this.dao.update(p);
		
	}

	@Override
	public List<Pic> findlimit(Map<String, Integer> map) {
		return this.dao.findlimit(map);
	}

	@Override
	public int checkPic(Pic p) {
		
		return this.dao.checkPic(p);
	}

	@Override
	public int pagecount() {
		
		return this.dao.pagecount();
	}

}
