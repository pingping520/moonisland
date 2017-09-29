package cn.com.moonisland.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import cn.com.moonisland.dao.ReturnorderDao;
import cn.com.moonisland.mapper.ReturnOrderMapper;
import cn.com.moonisland.pojo.ReturnOrder;

public class ReturnorderDaoImpl extends SqlSessionDaoSupport implements ReturnorderDao {
	
	private ReturnOrderMapper mapper;
	@Override
	public int addReturn(ReturnOrder returnOrder) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		return this.mapper.addReturn(returnOrder);
	}

	@Override
	public List<ReturnOrder> selectReturn() {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		List<ReturnOrder> ls=this.mapper.selectReturn();
		return ls;
	}

	@Override
	public ReturnOrder selectReturnbyid(int returnid) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		ReturnOrder rOrder=this.mapper.selectReturnbyid(returnid);
		return rOrder;
	}

	@Override
	public int deleteReturn(ReturnOrder order) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);		
		return this.mapper.deleteReturn(order);
	}

	@Override
	public int pageCount() {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		return this.mapper.pageCount();
	}

	@Override
	public List<ReturnOrder> findbypage(int orderid) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		List<ReturnOrder> ls=this.mapper.findbypage(orderid);
		return ls;
	}

	@Override
	public int pageCount2(String userid) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		return this.mapper.pageCount2(userid);
	}

	@Override
	public List<ReturnOrder> findbyuserid(Map<String, Object> map) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		List<ReturnOrder> ls=this.mapper.findbyuserid(map);
		return ls;
	}

	@Override
	public List<ReturnOrder> findbygoodsidPage(Map<String, Object> map) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		List<ReturnOrder> ls=this.mapper.findbygoodsidPage(map);
		return ls;
	}

	@Override
	public int findbygoodsidCount(String userid) {
		this.mapper =this.getSqlSession().getMapper(ReturnOrderMapper.class);
		return this.mapper.findbygoodsidCount(userid);
	}

}
