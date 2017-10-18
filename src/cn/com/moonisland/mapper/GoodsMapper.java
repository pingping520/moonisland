package cn.com.moonisland.mapper;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Goods;

public interface GoodsMapper {
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
	 * 查询所有商品信息
	 * */
	public List<Goods> findallGoods();
	/**
	 * 删除商品
	 * */
	public int deleteGoods(Goods goods);
	/**
	 * 查询单条记录
	 * */
	public Goods findGood(Goods goods); 
	
	/**
	 * 查询是否在售
	 * */
	public List<Goods> selectStatus(Map<String, Object> map);
}
