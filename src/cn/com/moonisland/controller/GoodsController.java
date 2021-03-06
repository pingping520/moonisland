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
		mv.setViewName("/WEB-INF/admin/goods.jsp");
		mv.addObject("page",page);	
		mv.addObject("goodslist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	/**
	 * 查询是否在售商品
	 * */
	@RequestMapping(value="/findbyselect")
	public ModelAndView selectStatus(String status,int page){
		ModelAndView mv = new ModelAndView();
		int count=this.goodsService.goodsCount();
		Map<String, Object> map=new HashMap<>();
		map.put("status", status);
		map.put("page",page);
		List<Goods> list = this.goodsService.selectStatus(map);
		mv.setViewName("/WEB-INF/admin/goods.jsp");
		mv.addObject("goodslist",list);	
		mv.addObject("count",count);
		mv.addObject("status",status);
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
		int result = this.goodsService.addGoods(goods);
		System.out.println(result);
		return result;
	}
	

	
	@RequestMapping(value="/count")
	public ModelAndView count(){
		ModelAndView mv=new ModelAndView();
		int a=this.goodsService.goodsCount();
		return mv;
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
	 * 查询所有商品 不分页
	 * */
	@RequestMapping(value="/findAllGoods")
	@ResponseBody
	public List<Goods> findAllGoods(){
		List<Goods> gg=this.goodsService.findallGoods();
		return gg;
		
	}
	 
	/**
	 * 跳转到detail商品页面
	 * */
	@RequestMapping(value = "/toDetail")
	public ModelAndView toFind(Goods goods) {
		ModelAndView mv = new ModelAndView();
		Goods g=this.goodsService.findGood(goods);
		mv.setViewName("/html/detailPage.HTML");
		mv.addObject("good",g);
		return mv;
		
	}
	/**
	 * 查询一条数据
	 * */
	@RequestMapping(value="/findonegood")
	@ResponseBody
	public Goods findOneGood(@RequestParam("id") int id){
		Goods g=new Goods();
		g.setGoodsId(id);
		Goods gg=this.goodsService.findGood(g);
		return gg;	
	}
	
	
	/**
	 * 查询单条商品
	 * @param goods
	 * @return
	 */
	@RequestMapping(value="/findbygoodsid")
	@ResponseBody
	public Goods findbygoodsid(Goods goods){
		Goods goods2=this.goodsService.findGood(goods);
		return goods2;
	}

	
	/**
	 * 查询全部促销商品
	 */
	@RequestMapping(value="/findSalesGoods")
	@ResponseBody
	public List<Goods> findSalesGoods(){
		List<Goods> goods = this.goodsService.salesGoods();
		return goods;		
	}
	
}
