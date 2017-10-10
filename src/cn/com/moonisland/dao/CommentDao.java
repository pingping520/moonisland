package cn.com.moonisland.dao;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Comment;

public interface CommentDao {
	/**
	 * 添加评论
	 * @param comment
	 */
	public int addComment(Comment comment);
	
	//全查评论
	public List<Comment> selectComment();
	//单条查询
	public Comment selectCommentbyid(Comment comment);
	//更新状态值
	public int deleteComment(Comment comment);
	//更新评论
	public int updateComment(Comment comment);
	//根据分页查询
	public List<Comment> findbypageComment(int page);
	
	//一共有几页
	public int pageCount(String userid);
	//根据userID查找
	public List<Comment> findbyuserid(Map<String, Object> map);
	
	//通过goodsID查询一共有几页
	public int pageCountbyGoodsid(String goodsid);
	
	//通过goodsID查询到的内容
	public List<Comment> findbygoodsid(Map<String, Object> map);
}
