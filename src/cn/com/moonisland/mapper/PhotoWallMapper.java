package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.PhotoWall;

public interface PhotoWallMapper {
	/**
	 * 添加
	 */
	public int addPhotoWall(PhotoWall photoWall);
	/**
	 * 更新可用状态
	 */
	public int checkPhotoWall(PhotoWall photoWall);
	/**
	 * 单条查询
	 */
	public PhotoWall findPhoto(PhotoWall photoWall);
	/**
	 * 更新
	 */
	public int updatePhotoWall(PhotoWall photoWall);
	/**
	 * 查询全部
	 */
	public List<PhotoWall> photoWalls();
	/**
	 * 查询要使用的图片
	 */
	public List<PhotoWall> findUsePhotos();

}
