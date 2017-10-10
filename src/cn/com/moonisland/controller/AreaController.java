package cn.com.moonisland.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Area;
import cn.com.moonisland.service.AreaService;

@Controller
@RequestMapping(value="/area")
public class AreaController {

	@Autowired
	private AreaService areaService;
	
	/**
	 * 全表查询
	 */
	@RequestMapping(value="/findall/{pid}")
	@ResponseBody
	public List<Area> findall(@PathVariable String pid){
		List<Area> areas = this.areaService.findbyid(pid);
		return areas;
	}
}
