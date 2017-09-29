package cn.com.moonisland.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Order;
import cn.com.moonisland.service.OrderService;

@Controller
@RequestMapping(value="/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	/**
	 * 跳转到更新页面
	 * */
	@RequestMapping(value ="/toupdateOrder")
	public ModelAndView toupdate(Order order) {
		ModelAndView mv = new ModelAndView();
	    Order or=this.orderService.findOrder(order);
		mv.setViewName("/WEB-INF/admin/updateOrder.jsp");
		mv.addObject("order",or);
		return mv;
		
	}
	/**
	 * 查询总页数
	 * */
	@RequestMapping(value="/count")
	public ModelAndView count(){
		ModelAndView mv=new ModelAndView();
		int a=this.orderService.orderCount();
		System.out.println("============"+a);
		return mv;
	}
	/**
	 * 查询所有数据，分页查询
	 * */
	@RequestMapping(value="/findAll")
	public ModelAndView findAll(int page){
			
		ModelAndView mv = new ModelAndView();
		int count=this.orderService.orderCount();
		List<Order> list = this.orderService.order(page);
		System.out.println("----------------------------------------------"+count);
		mv.setViewName("/WEB-INF/admin/order.jsp");
		mv.addObject("orderlist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	
	/**
	 * 更新数据
	 * */
	@RequestMapping("/update")
	@ResponseBody
	public int update(Order order){
		System.out.println(order);
		int result = this.orderService.updateOrder(order);
		System.out.println(result);
		return result;
	}
	/**
	 * 根据订单状态查询
	 * */
	@RequestMapping(value="/findbyselect")
	public ModelAndView findBySelect(String status,int page){
	 
		ModelAndView mv = new ModelAndView();
		int count=this.orderService.orderCount();
		Map<String, Object> map2=new HashMap<>();
		map2.put("status",status );
		map2.put("page", page);
		List<Order> list = this.orderService.selectStatus(map2);
		System.out.println("----------------------------------------------"+count);
		mv.setViewName("/WEB-INF/admin/order.jsp");
		mv.addObject("orderlist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	/**
	 * 根据发货状态查询
	 * */
	@RequestMapping(value="/findbyshipselect")
	public ModelAndView findByShipSelect(String status,int page){

		ModelAndView mv = new ModelAndView();
		int count=this.orderService.orderCount();
		Map<String, Object> map2=new HashMap<>();
		map2.put("status",status );
		map2.put("page", page);
		List<Order> list = this.orderService.selectShiStatus(map2);
		System.out.println("----------------------------------------------"+count);
		mv.setViewName("/WEB-INF/admin/order.jsp");
		mv.addObject("orderlist",list);	
		mv.addObject("count",count);
		return mv;
		
	}
	
	
}
