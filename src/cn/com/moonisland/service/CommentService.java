package cn.com.moonisland.service;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Comment;

public interface CommentService {
	//添加评论
	public int addComment(Comment comment);
	
	//全表查询
	public List<Comment> selectComment();
	
	//更新状态值
	public int deleteComment(Comment comment);
	
	//更新评论
	public int updateComment(Comment comment);
	
	//通过id查询
	public Comment selectbyidComment(Comment comment);
	
	//根据条件查询
	public List<Comment> findCondition();
	
	//分页查询
	public List<Comment> findbypage(int page);
	
	//查询一共有几页
	public int pageCount();
	public int pageCount2(String userid);
	//根据userID查询
	public List<Comment> findbyuserid(Map<String, Object> map);
	
	//通过userID查询出来的列表
	public List<Comment> findbyuserid2(Map<String, Object> map);
	
	//通过userID查询出来的列表条数
	public int pageuseridCount(int userid);
}
