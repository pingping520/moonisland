package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;
import cn.com.moonisland.service.GoodsAttrService;

@Controller
@RequestMapping(value="/goodsAttr")
public class GoodsAttrController {
	
	@Autowired
	private GoodsAttrService goodsAttrService;
	
	/**
	 * 跳转到添加商品属性页
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/addAttr.jsp");
		return mv;
	}
	
	/**
	 * 添加商品属性
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addGoodsAttr(GoodsAttr goodsAttr){
		int result = goodsAttrService.addGoodsAttr(goodsAttr);
		return result;
	}
	
	
	/**
	 * 跳转到更新页
	 */
	@RequestMapping(value="toUpdate")
	public ModelAndView toUpdate(){
		ModelAndView mv = new ModelAndView();
		/*GoodsAttr goodsAttr = this.goodsAttrService.find*/
		mv.setViewName("/WEB-INF/admin/updateAttr.jsp");
		return mv;
		
	}
	
	/**
	 * 更新商品属性
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updateGoodsAttr(GoodsAttr goodsAttr){
		int result = goodsAttrService.updateGoodsAttr(goodsAttr);
		return result;
	}
	
	/**
	 * 查询全部属性
	 */
	@RequestMapping(value="/findAll")
	public ModelAndView findAll(){
		ModelAndView mv = new ModelAndView();
		List<GoodsAttr> attrs = goodsAttrService.findAll();
		mv.setViewName("/WEB-INF/admin/goodsAttr.jsp");	
		mv.addObject("attrs", attrs);
		return mv;
	}
	
	/**
	 * 查询商品的属性
	 */
	@RequestMapping(value="/findGoodsAttr")
	@ResponseBody
	public List<GoodsAttr> findGoodsAttr(Goods goods){
		List<GoodsAttr> attrs = goodsAttrService.findByGoods(goods);
		return attrs;
	}
}
