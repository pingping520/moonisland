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
	
	//分页查询
	public List<Comment> findbypage(int page);
	
	//查询一共有几页
	public int pageCount(String userid);
	
	//查询全表页数
	public int findpagecount();
	
	//根据userID查询
	public List<Comment> findbyuserid(Map<String, Object> map);
	

	//通过goodsID查询一共有几页
	public int pageCountbyGoodsid(String goodsid);
	
	//通过goodsID查询到的内容
	public List<Comment> findbygoodsid(Map<String, Object> map);
	
}
