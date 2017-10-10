package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.OrderDao;
import cn.com.moonisland.pojo.Order;
import cn.com.moonisland.service.OrderService;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	
	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	@Override
	public int updateOrder(Order order) {
		
		return this.orderDao.updateOrder(order);
	}

	@Override
	public int orderCount() {
		
		return this.orderDao.orderCount();
	}

	@Override
	public List<Order> order(int page) {
		
		return this.orderDao.order(page);
	}

	@Override
	public Order findOrder(Order order) {
		
		return this.orderDao.findOrder(order);
	}

	@Override
	public List<Order> selectStatus(Map<String, Object> map) {
		
		return this.orderDao.selectStatus(map);
	}

	@Override
	public List<Order> selectShiStatus(Map<String, Object> map) {
		
		return this.orderDao.selectShiStatus(map);
	}
	@Override
	public List<Order> findoneorder(Order order) {
		
		return this.orderDao.findoneorder(order);
	}

}
