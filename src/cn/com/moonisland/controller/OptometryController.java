package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		List<Optometry> ls = this.optometryService.findall();
		mv.setViewName("/WEB-INF/admin/optometry.jsp");
		mv.addObject("optometrys", ls);
		return mv;
	}
	
	/**
	 * 前台添加
	 */
	@RequestMapping(value="/add")
	public ModelAndView add(Optometry optometry){
		System.out.println(optometry);
		System.out.println(optometry.getLAxis()+optometry.getLCyl()+optometry.getLSph()+optometry.getPd());
		ModelAndView mv = new ModelAndView();
		int op = this.optometryService.add(optometry);
		mv.setViewName("optometry/findall");
		mv.addObject("optometry", op);
		return mv;
	}
}
