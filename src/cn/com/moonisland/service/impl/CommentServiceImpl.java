package cn.com.moonisland.service.impl;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.dao.CommentDao;
import cn.com.moonisland.pojo.Comment;
import cn.com.moonisland.service.CommentService;

public class CommentServiceImpl implements CommentService {
	private CommentDao commentDao;
	
	
	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	@Override
	public int addComment(Comment comment) {
		int r=this.commentDao.addComment(comment);
		return r;
	}

	@Override
	public List<Comment> selectComment() {
		List<Comment> ls=this.commentDao.selectComment();
		return ls;
	}

	@Override
	public int deleteComment(Comment comment) {
		int r=this.commentDao.deleteComment(comment);
		return r;
	}

	@Override
	public int updateComment(Comment comment) {
		int r=this.commentDao.updateComment(comment);
		return r;
	}

	@Override
	public Comment selectbyidComment(Comment comment) {
		Comment comment2=this.commentDao.selectCommentbyid(comment);
		return comment2;
	}
	@Override
	public List<Comment> findbypage(int page) {
		List<Comment> ls=this.commentDao.findbypageComment(page);
		return ls;
	}

	@Override
	public int pageCount(String userid) {
		int count=this.commentDao.pageCount(userid);
		return count;
	}

	@Override
	public List<Comment> findbyuserid(Map<String, Object> map) {
		List<Comment> ls=this.commentDao.findbyuserid(map);
		return ls;
	}

	@Override
	public int pageCountbyGoodsid(String goodsid) {
		int count=this.commentDao.pageCountbyGoodsid(goodsid);
		return count;
	}

	@Override
	public List<Comment> findbygoodsid(Map<String, Object> map) {
		
		List<Comment> ls=this.commentDao.findbygoodsid(map);
		System.out.println("555555555555555555555"+map.get("goodsid"));
		return ls;
	}
}
