package cn.com.moonisland.service;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Order;

public interface OrderService {
	/**
	 * 更新商品
	 * */
	public int updateOrder(Order order);
	/**
	 * 查询商品总数
	 * */
	public int orderCount();
	/**
	 * 分页查询
	 * */
	public List<Order> order(int page);
	/**
	 * 查询一条数据，做更新 删除可用
	 * */
	public Order findOrder(Order order);
	/**
	 * 查询订单状态
	 * */
	public List<Order> selectStatus(Map<String, Object> map);
	/**
	 * 查询配送情况
	 * */
	public List<Order> selectShiStatus(Map<String, Object> map);
	/**
	 * 查询一个订单的所有数据内容
	 * */
	public List<Order> findoneorder(Order order);
}
