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
	public List<Comment> findbypage(int page);
	public int pageCount(String userid);
	public List<Comment> findbyuserid(Map<String, Object> map);
	public int pageCountbyGoodsid(String goodsid);
	public List<Comment> findbygoodsid(Map<String, Object> map);
}
