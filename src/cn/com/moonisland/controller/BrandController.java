package cn.com.moonisland.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Brand;
import cn.com.moonisland.pojo.Message;
import cn.com.moonisland.service.BrandService;

@Controller
@RequestMapping(value="/brand")
public class BrandController {
	
	@Autowired
	private BrandService brandService;
	
	/**
	 * 跳转到品牌添加页
	 */
	@RequestMapping(value="toAdd")
	public ModelAndView toAdd(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/addBrand.jsp");
		return mv;
		
	}
	
	/**
	 * 添加品牌
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addBrand(Brand brand){
		int result = this.brandService.addBrand(brand);
		return result;
	}
	
	/**
	 * 图片文件上传
	 */
	@RequestMapping(value="/upload")
	@ResponseBody
	public Message uploadImg(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws Exception{
		Message message = new Message();
		if(!file.isEmpty()){//判断文件非空、写入上传路劲
			//获取上传路径
			String path = request.getServletContext().getRealPath("/images/");
			System.out.println(path);
			//获取上传原始文件名
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			//防止用户上传相同名称的图片
			String timeStemp = new Date().getTime()+"";
			fileName = timeStemp+"_"+fileName;
			File filePath = new File(path,fileName);//完整路径
			System.out.println(filePath);
			//判断路径是否存在、如果不存在、创建
			if(!filePath.getParentFile().exists()){
				filePath.getParentFile().mkdirs();
			}
			//上传图片
			file.transferTo(filePath);
			message.setCode(1);
			message.setInfo(fileName);
			return message;

		}else{
			message.setCode(1);
			message.setInfo("error");
			return message;
		}		
	}
	
	/**
	 * 查询记录跳转到更新页
	 */
	@RequestMapping(value="toUpdate")
	public ModelAndView toUpdate(Brand brand){
		ModelAndView mv = new ModelAndView();
		Brand b = this.brandService.findBrand(brand);
		mv.setViewName("/WEB-INF/admin/updateBrand.jsp");
		mv.addObject("brand", b);
		return mv;	
	}
	
	/**
	 * 更新品牌状态
	 */
	@RequestMapping(value="/check")
	@ResponseBody
	public int checkBrand(Brand brand){
		int result = this.brandService.checkBrand(brand);//返回操作影响的行数，0表示未影响任何记录行
		return result;
	}
	
	/**
	 * 更新品牌
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updateBrand(Brand brand){
		int result = this.brandService.updateBrand(brand);//返回操作影响的行数，0表示未影响任何记录行
		return result;
	}
	
	/**
	 * 查询全部品牌
	 */
	@RequestMapping(value="/findAll")
	public ModelAndView findAllBrand(){
		ModelAndView mv = new ModelAndView();
		List<Brand> brandList = this.brandService.brands();
		mv.setViewName("/WEB-INF/admin/brand.jsp");
		mv.addObject("brandList", brandList);
		return mv;		
	}
	
	/**
	 * 查询全部可用品牌
	 */
	@RequestMapping(value="/findAllUseable")
	private ModelAndView findAllUseable() {
		ModelAndView mv = new ModelAndView();
		List<Brand> brands = this.brandService.findAllUserable();
		mv.setViewName("");
		mv.addObject("brands", brands);
		return mv;
	}
	
}
