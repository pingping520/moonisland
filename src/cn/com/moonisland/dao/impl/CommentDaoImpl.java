package cn.com.moonisland.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.com.moonisland.dao.CommentDao;
import cn.com.moonisland.mapper.BrandMapper;
import cn.com.moonisland.mapper.CommentMapper;
import cn.com.moonisland.pojo.Comment;

public class CommentDaoImpl extends SqlSessionDaoSupport implements CommentDao {
	private CommentMapper mapper;
	
	@Override
	public int addComment(Comment comment) {
		this.mapper = this.getSqlSession().getMapper(CommentMapper.class);
		return this.mapper.addComment(comment);
	}

	@Override
	public List<Comment> selectComment() {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		List<Comment> ls=this.mapper.selectComment();
		return ls;
	}

	@Override
	public int deleteComment(Comment comment) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		return this.mapper.deleteComment(comment);
	}

	@Override
	public int updateComment(Comment comment) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		return this.mapper.updateComment(comment);
	}

	@Override
	public Comment selectCommentbyid(Comment comment) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		Comment comment2=this.mapper.selectCommentbyid(comment);
		return comment2;
	}

	@Override
	public List<Comment> findbypageComment(int page) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		List<Comment> ls=this.mapper.findbypage(page);
		return ls;
	}

	@Override
	public int pageCount(String userid) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		int count=this.mapper.pageCount(userid);
		return count;
	}

	@Override
	public List<Comment> findbyuserid(Map<String, Object> map) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		List<Comment> ls=this.mapper.findbyuserid(map);
		return ls;
	}

	@Override
	public int pageCountbyGoodsid(String goodsid) {
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		int count=this.mapper.pageCountbyGoodsid(goodsid);
		return count;
	}

	@Override
	public List<Comment> findbygoodsid(Map<String, Object> map) {
		System.out.println("99999999999999999999999"+map.get("goodsid"));
		this.mapper = (CommentMapper) this.getSqlSession().getMapper(CommentMapper.class);
		List<Comment> ls=this.mapper.findbygoodsid(map);
		return ls;
	}
}
