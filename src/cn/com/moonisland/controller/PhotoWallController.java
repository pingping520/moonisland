package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.PhotoWall;
import cn.com.moonisland.service.PhotoWallService;

@Controller
@RequestMapping(value="/photoWall")
public class PhotoWallController {
	
	@Autowired
	private PhotoWallService photoWallService;
	
	/**
	 * 跳转到添加页
	 */
	@RequestMapping(value="toAdd")
	public ModelAndView toAdd(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/addPhotoWall.jsp");
		return mv;
	}
	
	/**
	 * 添加照片墙
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addPhotoWall(PhotoWall photoWall){
		int result = this.photoWallService.addPhotoWall(photoWall);
		return result;
	}
	
	/**
	 * 更改照片墙状态
	 */
	@RequestMapping(value="/check")
	@ResponseBody
	public int checkPhotoWall(PhotoWall photoWall){
		int result = this.photoWallService.checkPhotoWall(photoWall);
		return result;
	}
	
	/**
	 * 跳转到更新页
	 */
	@RequestMapping(value="toUpdate")
	public ModelAndView toUpdate(PhotoWall photoWall){
		ModelAndView mv = new ModelAndView();
		PhotoWall photo = this.photoWallService.findPhoto(photoWall);
		mv.setViewName("/WEB-INF/admin/updatePhotoWall.jsp");
		mv.addObject("photo", photo);
		return mv;
	}
	
	/**
	 * 更新照片墙
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updatePhotoWall(PhotoWall photoWall){
		int result = this.photoWallService.updatePhotoWall(photoWall);
		return result;
	}
	
	/**
	 * 查看全部照片墙
	 */
	@RequestMapping("/findAll")
	public ModelAndView checkAll(){
		ModelAndView mv = new ModelAndView();
		List<PhotoWall> photoList = this.photoWallService.photoWalls();
		mv.setViewName("/WEB-INF/admin/photoWall.jsp");
		mv.addObject("photoList", photoList);
		return mv;
	}
	
	/**
	 * 查询全部可用图片
	 */
	@RequestMapping(value="/findAllUse")
	@ResponseBody
	public List<PhotoWall> showPhotos(){
		List<PhotoWall> photos = this.photoWallService.findUsePhotos();
		return photos;
	}
}
