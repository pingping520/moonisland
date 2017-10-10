package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.About;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;

public interface GoodsAttrMapper {
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
	 * 通过商品查询
	 */
	public List<GoodsAttr> findByGoods(Goods Goods);
}
