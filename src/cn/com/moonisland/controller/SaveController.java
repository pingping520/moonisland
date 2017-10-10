package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Save;
import cn.com.moonisland.service.SaveService;

@Controller
@RequestMapping(value="/save")
public class SaveController {

	@Autowired
	private SaveService saveService;
	
	@RequestMapping(value="/findbyid/{id}")
	@ResponseBody
	public List<Save> findbyid(@PathVariable String id){
		List<Save> ls = this.saveService.findAll(id);
		return ls;
	}
	
	@RequestMapping(value="/findAll/{id}")
	public ModelAndView findAll(@PathVariable String id){
		ModelAndView mv = new ModelAndView();
		List<Save> ls = this.saveService.findAll(id);
		mv.setViewName("/WEB-INF/admin/save.jsp");
		mv.addObject("save", ls);
		return mv;
	}
	
	@RequestMapping(value="/add")
	public ModelAndView add(Save save){
		ModelAndView mv = new ModelAndView();
		int sa = this.saveService.add(save);
		mv.setViewName("save/findAll");
		mv.addObject("save", sa);
		return mv;
	}
	
	@RequestMapping(value="/delete/{id}")
	@ResponseBody
	public int delete(@PathVariable int id){
		int sa = this.saveService.delete(id);
		return sa;
	}
}
