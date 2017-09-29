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
	//根据条件查找
	public List<Comment> findCondition();
	//根据分页查询
	public List<Comment> findbypageComment(int page);
	
	//一共有几页
	public int pageCount();
	public int pageCount2(String userid);
	//根据userID查找
	public List<Comment> findbyuserid(Map<String, Object> map);
	
	//通过userID查询出来的列表
	public List<Comment> findbyuserid2(Map<String, Object> map);
	
	//通过userID查询出来的总条数
	public int pagebyuseridCount(int userid);
}
