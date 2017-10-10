package cn.com.moonisland.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.GoodsAttrDao;
import cn.com.moonisland.mapper.GoodsAttrMapper;
import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.GoodsAttr;

public class GoodsAttrDaoImpl extends SqlSessionDaoSupport implements GoodsAttrDao{
	
	private GoodsAttrMapper mapper;
	
	@Override
	public int addGoodsAttr(GoodsAttr goodsAttr) {
		this.mapper = this.getSqlSession().getMapper(GoodsAttrMapper.class);
		return this.mapper.addGoodsAttr(goodsAttr);
	}

	@Override
	public int updateGoodsAttr(GoodsAttr goodsAttr) {
		this.mapper = this.getSqlSession().getMapper(GoodsAttrMapper.class);
		return this.mapper.updateGoodsAttr(goodsAttr);
	}

	@Override
	public List<GoodsAttr> findAll() {
		this.mapper = this.getSqlSession().getMapper(GoodsAttrMapper.class);
		return this.mapper.findAll();
	}

	@Override
	public List<GoodsAttr> findByGoods(Goods Goods) {
		this.mapper = this.getSqlSession().getMapper(GoodsAttrMapper.class);
		return this.mapper.findByGoods(Goods);
	}

	@Override
	public GoodsAttr findGoodsAttr(GoodsAttr goodsAttr) {
		this.mapper = this.getSqlSession().getMapper(GoodsAttrMapper.class);
		return this.mapper.findGoodsAttr(goodsAttr);
	}

}
