package cn.com.moonisland.service.impl;

import java.util.List;

import cn.com.moonisland.dao.GoodsAttrDao;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;
import cn.com.moonisland.service.GoodsAttrService;

public class GoodsAttrServiceImpl implements GoodsAttrService {
	
	private GoodsAttrDao goodsAttrDao;
	
	
	public GoodsAttrDao getGoodsAttrDao() {
		return goodsAttrDao;
	}

	public void setGoodsAttrDao(GoodsAttrDao goodsAttrDao) {
		this.goodsAttrDao = goodsAttrDao;
	}

	@Override
	public int addGoodsAttr(GoodsAttr goodsAttr) {
		return this.goodsAttrDao.addGoodsAttr(goodsAttr);
	}

	@Override
	public int updateGoodsAttr(GoodsAttr goodsAttr) {
		return this.goodsAttrDao.updateGoodsAttr(goodsAttr);
	}

	@Override
	public List<GoodsAttr> findAll() {
		return this.goodsAttrDao.findAll();
	}

	@Override
	public List<GoodsAttr> findByGoods(Goods Goods) {
		return this.goodsAttrDao.findByGoods(Goods);
	}

}
