package cn.com.moonisland.service.impl;

import java.util.List;
import cn.com.moonisland.dao.AboutDao;
import cn.com.moonisland.pojo.About;
import cn.com.moonisland.service.AboutService;

public class AboutServiceImpl implements AboutService {
	
	private AboutDao aboutDao;
	
	public void setAboutDao(AboutDao aboutDao) {
		this.aboutDao = aboutDao;
	}

	public AboutDao getAboutDao() {
		return aboutDao;
	}

	@Override
	public int addAbout(About about) {
		return this.aboutDao.addAbout(about);
	}

	@Override
	public int updateAbout(About about) {
		return this.aboutDao.updateAbout(about);
	}
	
	@Override
	public About findAbout(About about) {
		return this.aboutDao.findAbout(about);
	}

	@Override
	public List<About> abouts() {
		return this.aboutDao.abouts();
	}

}
