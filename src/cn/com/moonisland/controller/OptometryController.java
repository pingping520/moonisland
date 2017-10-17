package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Optometry;
import cn.com.moonisland.service.OptometryService;

@Controller
@RequestMapping(value="/optometry")
public class OptometryController {

	@Autowired
	private OptometryService optometryService;
	
	/**
	 * 全表查询
	 */
	@RequestMapping(value="/findall")
	public ModelAndView findall(){
		ModelAndView mv = new ModelAndView();
		List<Optometry> ls = this.optometryService.findAll();
		mv.setViewName("/WEB-INF/admin/optometry.jsp");
		mv.addObject("optometrys", ls);
		return mv;
	}
	
	/**
	 * 前台查询
	 */
	@RequestMapping(value="/findAll")
	@ResponseBody
	public List<Optometry> findAll(){
		List<Optometry> ls = this.optometryService.findAll();
		return ls;
	}
	
	/**
	 * 前台添加
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int add(Optometry optometry){
		int add = this.optometryService.add(optometry);
		return add;
	}
}
