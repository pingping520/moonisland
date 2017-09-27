package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Comment 实体类
    * Fri Sep 22 17:26:53 CST 2017
    */ 
@SuppressWarnings("serial")
public class Comment implements Serializable{
	private int commentId; //评论编号
	private String goodsId; //商品编号
	private String userId; //用户编号
	private String orderId; //订单编号
	private String commentContentword; //商品评论文字
	private String commentContentimg; //商品评论图片(存储所有图片路径，以|分割)，最多3张，单张不大于2M
	private String guarantee; //商品质量星级（以1--5表示）
	private String server; //服务态度星级(以1--5表示)，可以为null
	private String logistics; //物流态度星级(以1--5表示)，可以为null
	private String commentStatus; //是否显示该评论(默认0不显示，1显示，默认为1)
	private String commentTime; //评论时间
	
	public Comment() {
		super();
	}
	
	public Comment(int commentId, String goodsId, String userId, String orderId, String commentContentword,
			String commentContentimg, String guarantee, String server, String logistics, String commentStatus,
			String commentTime) {
		super();
		this.commentId = commentId;
		this.goodsId = goodsId;
		this.userId = userId;
		this.orderId = orderId;
		this.commentContentword = commentContentword;
		this.commentContentimg = commentContentimg;
		this.guarantee = guarantee;
		this.server = server;
		this.logistics = logistics;
		this.commentStatus = commentStatus;
		this.commentTime = commentTime;
	}

	public void setCommentId(int commentId){
		this.commentId=commentId;
	}

	public int getCommentId(){
		return commentId;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setOrderId(String orderId){
		this.orderId=orderId;
	}

	public String getOrderId(){
		return orderId;
	}

	public void setCommentContentword(String commentContentword){
		this.commentContentword=commentContentword;
	}

	public String getCommentContentword(){
		return commentContentword;
	}

	public void setCommentContentimg(String commentContentimg){
		this.commentContentimg=commentContentimg;
	}

	public String getCommentContentimg(){
		return commentContentimg;
	}

	public void setGuarantee(String guarantee){
		this.guarantee=guarantee;
	}

	public String getGuarantee(){
		return guarantee;
	}

	public void setServer(String server){
		this.server=server;
	}

	public String getServer(){
		return server;
	}

	public void setLogistics(String logistics){
		this.logistics=logistics;
	}

	public String getLogistics(){
		return logistics;
	}

	public void setCommentStatus(String commentStatus){
		this.commentStatus=commentStatus;
	}

	public String getCommentStatus(){
		return commentStatus;
	}

	public void setCommentTime(String commentTime){
		this.commentTime=commentTime;
	}

	public String getCommentTime(){
		return commentTime;
	}
}

