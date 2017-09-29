package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.GlassDao;
import cn.com.moonisland.pojo.Glass;
import cn.com.moonisland.service.GlassService;

public class GlassServiceImpl implements GlassService{

		GlassDao dao;
	public GlassDao getDao() {
			return dao;
		}

		public void setDao(GlassDao dao) {
			this.dao = dao;
		}

		@Override
		public List<Glass> findall() {
			return this.dao.findall();
		}

		@Override
		public List<Glass> findbyid(int id) {
			return this.dao.findbyid(id);
		}

		

		@Override
		public int update(Glass g) {
			return this.dao.update(g);
			
		}

		@Override
		public void delete(Glass g) {
			this.dao.delete(g);
			
		}

		

		@Override
		public List<Glass> findlimit(Map<String, Integer> map) {
			return this.dao.findlimit(map);
		}

		@Override
		public int insert(Glass g) {
		return this.dao.insert(g);
			
		}

		@Override
		public int pagecount() {
			
			return this.dao.pagecount();
		}


}
