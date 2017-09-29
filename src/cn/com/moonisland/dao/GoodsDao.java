package cn.com.moonisland.dao;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Goods;

public interface GoodsDao {
	/**
	 * 添加商品
	 * */
	public int addGoods(Goods goods);
	/**
	 * 更新商品
	 * */
	public int updateGoods(Goods goods);
	/**
	 * 查询商品总数
	 * */
	public int goodsCount();
	/**
	 * 分页查询
	 * */
	public List<Goods> goods(int page);
	/**
	 * 删除商品
	 * */
	public int deleteGoods(Goods goods);
	/**
	 * 查询一条数据，做更新 删除可用
	 * */
	public Goods findGood(Goods goods);
	/**
	 * 查询是否在售
	 * */
	public List<Goods> selectStatus(Map<String, Object> map);
}