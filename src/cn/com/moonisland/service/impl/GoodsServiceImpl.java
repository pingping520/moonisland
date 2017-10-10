package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.GoodsDao;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	private GoodsDao goodsDao;
	
	public GoodsDao getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public int addGoods(Goods goods) {
		
		return this.goodsDao.addGoods(goods);
	}

	@Override
	public int updateGoods(Goods goods) {
		
		return this.goodsDao.updateGoods(goods);
	}

	@Override
	public int goodsCount() {
		
		return this.goodsDao.goodsCount();
	}

	@Override
	public List<Goods> goods(int page) {
		
		return this.goodsDao.goods(page);
	}

	@Override
	public int deleteGoods(Goods goods) {
		return this.goodsDao.deleteGoods(goods);
	}

	@Override
	public Goods findGood(Goods goods) {
		
		return this.goodsDao.findGood(goods);
	}

	@Override
	public List<Goods> selectStatus(Map<String, Object> map) {
		
		return this.goodsDao.selectStatus(map);
	}

	

}
