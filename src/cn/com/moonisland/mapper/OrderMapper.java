package cn.com.moonisland.mapper;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Order;

public interface OrderMapper {
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
	 * 按状态查询
	 * */
	public List<Order> selectStatus(Map<String, Object> map);
	/**
	 * 查询配送情况
	 * */
	public List<Order> selectShiStatus(Map<String, Object> map);
}
