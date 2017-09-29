package cn.com.moonisland.mapper;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Comment;

public interface CommentMapper {
	public int addComment(Comment comment);
	public List<Comment> selectComment();
	public int deleteComment(Comment comment);
	public int updateComment(Comment comment);
	public Comment selectCommentbyid(Comment comment);
	public List<Comment> findCondition();
	public List<Comment> findbypage(int page);
	public int pageCount();
	public int pageCount2(String userid);
	public List<Comment> findbyuserid(Map<String, Object> map);
	public List<Comment> findbyuserid2(Map<String, Object> map);
	public int pagebyuseridCount(int userid);
}
