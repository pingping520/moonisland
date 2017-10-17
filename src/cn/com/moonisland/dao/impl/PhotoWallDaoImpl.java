package cn.com.moonisland.dao.impl;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.PhotoWallDao;
import cn.com.moonisland.mapper.PhotoWallMapper;
import cn.com.moonisland.pojo.PhotoWall;

public class PhotoWallDaoImpl extends SqlSessionDaoSupport implements PhotoWallDao{
	
	private PhotoWallMapper mapper;
	
	@Override
	public int addPhotoWall(PhotoWall photoWall) {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		return this.mapper.addPhotoWall(photoWall);
	}

	@Override
	public int checkPhotoWall(PhotoWall photoWall) {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		return this.mapper.checkPhotoWall(photoWall);
	}

	@Override
	public PhotoWall findPhoto(PhotoWall photoWall) {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		return this.mapper.findPhoto(photoWall);
	}

	@Override
	public int updatePhotoWall(PhotoWall photoWall) {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		return this.mapper.updatePhotoWall(photoWall);
	}

	@Override
	public List<PhotoWall> photoWalls() {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		return this.mapper.photoWalls();
	}

	@Override
	public List<PhotoWall> findUsePhotos() {
		this.mapper = this.getSqlSession().getMapper(PhotoWallMapper.class);
		System.out.println("=============================");
		return this.mapper.findUsePhotos();
	}

}
