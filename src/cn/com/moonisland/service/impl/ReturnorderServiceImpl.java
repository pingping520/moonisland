package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.CommentDao;
import cn.com.moonisland.dao.ReturnorderDao;
import cn.com.moonisland.pojo.ReturnOrder;
import cn.com.moonisland.service.ReturnorderService;

public class ReturnorderServiceImpl implements ReturnorderService {
	private ReturnorderDao returnorderDao;
	
	
	public ReturnorderDao getReturnorderDao() {
		return returnorderDao;
	}

	public void setReturnorderDao(ReturnorderDao returnorderDao) {
		this.returnorderDao = returnorderDao;
	}

	@Override
	public int addReturn(ReturnOrder returnOrder) {
		int row=this.returnorderDao.addReturn(returnOrder);
		System.out.println("22222222222222222");
		return row;
	}

	@Override
	public List<ReturnOrder> selectReturn() {
		List<ReturnOrder> ls=this.returnorderDao.selectReturn();
		return ls;
	}

	@Override
	public ReturnOrder selectReturnbyid(int returnid) {
		ReturnOrder order=this.returnorderDao.selectReturnbyid(returnid);
		return order;
	}

	@Override
	public int deleteReturn(ReturnOrder order) {
		int row=this.returnorderDao.deleteReturn(order);
		return row;
	}

	@Override
	public int pageCount() {
		int row=this.returnorderDao.pageCount();
		return row;
	}

	@Override
	public List<ReturnOrder> findbypage(int orderid) {
		List<ReturnOrder> ls=this.returnorderDao.findbypage(orderid);
		return ls;
	}

	@Override
	public int pageCount2(String userid) {
		int row=this.returnorderDao.pageCount2(userid);
		return row;
	}

	@Override
	public List<ReturnOrder> findbyuserid(Map<String, Object> map) {
		List<ReturnOrder> ls=this.returnorderDao.findbyuserid(map);
		return ls;
	}

	@Override
	public List<ReturnOrder> findbygoodsidPage(Map<String, Object> map) {
		List<ReturnOrder> ls=this.returnorderDao.findbygoodsidPage(map);
		return ls;
	}

	@Override
	public int findbygoodsidCount(String goodsid) {
		int row=this.returnorderDao.findbygoodsidCount(goodsid);
		return row;
	}
	
}
