package cn.com.moonisland.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.OrderDao;
import cn.com.moonisland.mapper.OrderMapper;
import cn.com.moonisland.pojo.Order;

public class OrderDaoImpl  extends SqlSessionDaoSupport implements OrderDao {
	private OrderMapper mapper;
	@Override
	public int updateOrder(Order order) {
		this.mapper = this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.updateOrder(order);
	}

	@Override
	public int orderCount() {
		this.mapper = this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.orderCount();
	}

	@Override
	public List<Order> order(int page) {
		this.mapper = this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.order(page);
	}

	@Override
	public Order findOrder(Order order) {
		this.mapper = this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.findOrder(order);
	}

	@Override
	public List<Order> selectStatus(Map<String, Object> map) {
		this.mapper=this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.selectStatus(map);
	}

	@Override
	public List<Order> selectShiStatus(Map<String, Object> map) {
		this.mapper=this.getSqlSession().getMapper(OrderMapper.class);
		return this.mapper.selectShiStatus(map);
	}

	

}
