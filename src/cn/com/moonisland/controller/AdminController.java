package cn.com.moonisland.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import cn.com.moonisland.pojo.Admin;
import cn.com.moonisland.service.AdminService;
import cn.com.moonisland.utils.MD5Utils;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	/**
	 * 跳转到管理员登录
	 */
	@RequestMapping(value="toLogin")
	public ModelAndView toLogin(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/login.jsp");
		return mv;
	}
	
	/**
	 * 管理员登录
	 * @param admin
	 */
	@RequestMapping(value="/login")
	public ModelAndView login(Admin admin,HttpSession session){
		System.out.println("===================");
		ModelAndView mv = new ModelAndView();
		admin.setPwd(MD5Utils.str2MD5(admin.getPwd()));
		System.out.println(admin.getName());
		System.out.println(admin.getPwd());
		Admin adm = this.adminService.login(admin);
		if(adm!=null){
			session.setAttribute("Admin", adm);
			mv.setViewName("/WEB-INF/admin/main.jsp");
			mv.addObject("adminInfo",adm);
			return mv;
		}
		mv.setViewName("/WEB-INF/admin/error.jsp");
		mv.addObject("error", "非法登录！");
		return mv;		
	}
	
}
