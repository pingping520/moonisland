package cn.com.moonisland.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.Message;
import cn.com.moonisland.service.GoodsService;

@Controller
@RequestMapping(value="/goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	
	
	/**
	 * 跳转到添加页面
	 * */
	@RequestMapping(value = "/toaddGood")
	public ModelAndView toadd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/addGoods.jsp");
		return mv;
	}
	
	/**
	 * 跳转到更新页面
	 * */
	@RequestMapping(value = "/toupdateGood")
	public ModelAndView toupdate(Goods goods) {
		ModelAndView mv = new ModelAndView();
		Goods g=this.goodsService.findGood(goods);
		mv.setViewName("/WEB-INF/admin/updateGoods.jsp");
		mv.addObject("good",g);
		return mv;
		
	}
	
	
	/**
	 * 查询所有数据，分页查询
	 * */
	@RequestMapping(value="/findAll")
	public ModelAndView findAll(int page){
			
		ModelAndView mv = new ModelAndView();
		int count=this.goodsService.goodsCount();
		List<Goods> list = this.goodsService.goods(page);
		System.out.println("----------------------------------------------"+count);
		mv.setViewName("/WEB-INF/admin/goods.jsp");
		mv.addObject("goodslist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	/**
	 * 查询是否在售商品
	 * */
	@RequestMapping(value="/findbyselect")
	public ModelAndView selectStatus(String status,int page){
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+status);	
		ModelAndView mv = new ModelAndView();
		int count=this.goodsService.goodsCount();
		Map<String, Object> map=new HashMap<>();
		map.put("status", status);
		map.put("page",page);
		List<Goods> list = this.goodsService.selectStatus(map);
		System.out.println("----------------------------------------------"+count);
		mv.setViewName("/WEB-INF/admin/goods.jsp");
		mv.addObject("goodslist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	/**
	 * 删除数据
	 * */
	@RequestMapping(value="/delete")
	public ModelAndView deleteGood(Goods goods){
		ModelAndView mv=new ModelAndView();
		this.goodsService.deleteGoods(goods);
		int count=this.goodsService.goodsCount();
		List<Goods> list = this.goodsService.goods(0);
		System.out.println(list);
		mv.setViewName("/WEB-INF/admin/goods.jsp");
		mv.addObject("goodslist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	/**
	 * 更新数据
	 * */
	@RequestMapping("/update")
	@ResponseBody
	public int update(Goods goods){
		System.out.println(goods);
		int result = this.goodsService.updateGoods(goods);
		System.out.println(result);
		return result;
	}
	
	/**
	 * 添加新数据
	 * */	
	@RequestMapping(value="/insert")
	@ResponseBody
	public int addGoods(Goods goods){
		System.out.println("==============================================");
		int result = this.goodsService.addGoods(goods);
		System.out.println(result);
		return result;
	}
	

	
	@RequestMapping(value="/count")
	public ModelAndView count(){
		ModelAndView mv=new ModelAndView();
		int a=this.goodsService.goodsCount();
		System.out.println("============"+a);
		return mv;
	}
	
	/**
	 * 图片文件上传
	 */
	@RequestMapping(value="/upload")
	@ResponseBody
	public Message uploadImg(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws Exception{
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
		Message message = new Message();
		if(!file.isEmpty()){//判断文件非空、写入上传路劲
			//获取上传路径
			System.out.println("=============================================="+file);
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
	 * 选择是否在售商品
	 * */
	
}
