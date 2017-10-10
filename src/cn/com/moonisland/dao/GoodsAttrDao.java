package cn.com.moonisland.dao;

import java.util.List;

import cn.com.moonisland.pojo.About;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;

public interface GoodsAttrDao {
	/**
	 * 添加
	 */
	public int addGoodsAttr(GoodsAttr goodsAttr);
	/**
	 * 更新
	 */
	public int updateGoodsAttr(GoodsAttr goodsAttr);
	/**
	 * 查询单个
	 */
	public GoodsAttr findGoodsAttr(GoodsAttr goodsAttr);
	/**
	 * 查询全部
	 */
	public List<GoodsAttr> findAll();
	/**
	 * 查询商品属性
	 */
	public List<GoodsAttr> findByGoods(Goods Goods);
}
