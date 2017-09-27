package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * ReturnOrder 实体类
    * Fri Sep 22 17:39:20 CST 2017
    */ 
@SuppressWarnings("serial")
public class ReturnOrder implements Serializable{
	private int returnId; //退货id
	private String orderId; //订单id
	private String userId; //用户id
	private String goodsId; //商品id
	private String reason; //退货原因
	private String returnStatus; //退货状态(0 等待处理，1 处理完成)
	private String returnTime; //退货时间
	
	public ReturnOrder() {
		super();
	}
	
	public ReturnOrder(int returnId, String orderId, String userId, String goodsId, String reason, String returnStatus,
			String returnTime) {
		super();
		this.returnId = returnId;
		this.orderId = orderId;
		this.userId = userId;
		this.goodsId = goodsId;
		this.reason = reason;
		this.returnStatus = returnStatus;
		this.returnTime = returnTime;
	}

	public void setReturnId(int returnId){
		this.returnId=returnId;
	}

	public int getReturnId(){
		return returnId;
	}

	public void setOrderId(String orderId){
		this.orderId=orderId;
	}

	public String getOrderId(){
		return orderId;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setReason(String reason){
		this.reason=reason;
	}

	public String getReason(){
		return reason;
	}

	public void setReturnStatus(String returnStatus){
		this.returnStatus=returnStatus;
	}

	public String getReturnStatus(){
		return returnStatus;
	}

	public void setReturnTime(String returnTime){
		this.returnTime=returnTime;
	}

	public String getReturnTime(){
		return returnTime;
	}
}

