package cn.com.moonisland.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import cn.com.moonisland.pojo.User;
import cn.com.moonisland.service.UserService;
import cn.com.moonisland.utils.MD5Utils;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 用户注册
	 */
	@RequestMapping(value="/reg")
	public ModelAndView register(User user,HttpSession session){
		ModelAndView mv = new ModelAndView();
		user.setPassword(MD5Utils.str2MD5(user.getPassword()));
		int result = this.userService.addUser(user);
		mv.setViewName("/html/index.html");
		mv.addObject("result",result);
		return mv;		
	} 
	
	/**
	 * 用户更新
	 */
	@RequestMapping(value="/update")
	public ModelAndView updateUser(User user){
		ModelAndView mv = new ModelAndView();
		int result = this.userService.updateUser(user);
		mv.setViewName("/html/user.html");
		mv.addObject("result", result);
		return mv;				
	}
	
	/**
	 * 添加用户到黑名单
	 */
	@RequestMapping(value="/check")
	@ResponseBody
	public int checkUser(User user){
		int result = this.userService.updateUser(user);
		return result;
	}
	
	/**
	 * 用户登录
	 */
	@RequestMapping(value="/login")
	public ModelAndView login(User user){
		ModelAndView mv = new ModelAndView();
		user.setPassword(MD5Utils.str2MD5(user.getPassword()));
		User u = this.userService.login(user);
		mv.setViewName("/html/index.html");
		mv.addObject("usetInfo", u);
		return mv;
	}
	
	/**
	 * 查询全部用户(分页查询、查询总页数)
	 */
	@RequestMapping(value="/list")
	public ModelAndView checkUsers(int page){
		ModelAndView mv = new ModelAndView();
		List<User> users = this.userService.users(page);
		int count = this.userService.pageCount();
		mv.setViewName("/WEB-INF/admin/user.jsp");
		mv.addObject("users", users);
		mv.addObject("count", count);
		return mv;	
	}
	
}
