package cn.com.moonisland.service.impl;
import java.util.List;
import cn.com.moonisland.dao.PhotoWallDao;
import cn.com.moonisland.pojo.PhotoWall;
import cn.com.moonisland.service.PhotoWallService;

public class PhotoWallServiceImpl implements PhotoWallService{
	
	private PhotoWallDao photoWallDao;

	public PhotoWallDao getPhotoWallDao() {
		return photoWallDao;
	}

	public void setPhotoWallDao(PhotoWallDao photoWallDao) {
		this.photoWallDao = photoWallDao;
	}

	@Override
	public int addPhotoWall(PhotoWall photoWall) {
		return this.photoWallDao.addPhotoWall(photoWall);
	}

	@Override
	public int checkPhotoWall(PhotoWall photoWall) {
		return this.photoWallDao.checkPhotoWall(photoWall);
	}

	@Override
	public PhotoWall findPhoto(PhotoWall photoWall) {
		return this.photoWallDao.findPhoto(photoWall);
	}

	@Override
	public int updatePhotoWall(PhotoWall photoWall) {
		return this.photoWallDao.updatePhotoWall(photoWall);
	}

	@Override
	public List<PhotoWall> photoWalls() {
		return this.photoWallDao.photoWalls();
	}

	@Override
	public List<PhotoWall> findUsePhotos() {
		return this.photoWallDao.findUsePhotos();
	}	

}
