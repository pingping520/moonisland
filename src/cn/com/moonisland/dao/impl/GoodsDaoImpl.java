package cn.com.moonisland.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.GoodsDao;
import cn.com.moonisland.mapper.GoodsMapper;
import cn.com.moonisland.pojo.Goods;

public class GoodsDaoImpl extends SqlSessionDaoSupport implements GoodsDao {

	private GoodsMapper mapper;
	@Override
	public int addGoods(Goods goods) {
		this.mapper = this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.addGoods(goods);
	}

	@Override
	public int updateGoods(Goods goods) {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.updateGoods(goods);
	}

	@Override
	public int goodsCount() {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.goodsCount();
	}

	@Override
	public List<Goods> goods(int page) {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		// TODO Auto-generated method stub
		return this.mapper.goods(page);
	}

	@Override
	public int deleteGoods(Goods goods) {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.deleteGoods(goods);
	}

	@Override
	public Goods findGood(Goods goods) {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.findGood(goods);
	}

	@Override
	public List<Goods> selectStatus(Map<String, Object> map) {
		this.mapper=this.getSqlSession().getMapper(GoodsMapper.class);
		return this.mapper.selectStatus(map);
	}

}
