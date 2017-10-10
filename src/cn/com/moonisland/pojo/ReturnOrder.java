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
	private User user; //用户id
	private Goods goods; //商品id
	private String reason; //退货原因
	private String returnStatus; //退货状态(0 等待处理，1 处理完成)
	private String returnTime; //退货时间
	
	public ReturnOrder() {
		super();
	}
	public ReturnOrder(int returnId, String orderId, User user, Goods goods, String reason, String returnStatus,
			String returnTime) {
		super();
		this.returnId = returnId;
		this.orderId = orderId;
		this.user = user;
		this.goods = goods;
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
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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

