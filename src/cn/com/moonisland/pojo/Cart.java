package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Cart 实体类
    * Fri Sep 22 17:20:24 CST 2017
    */ 
@SuppressWarnings("serial")
public class Cart implements Serializable{
	private int cartId; //购物车id
	private String userId; //用户id
	private String optometryId; //验光单id
	private String isFrameonly; //是否只有镜框(0 表示不仅有镜架还有镜框，1 只有镜架)，默认为0
	private String goodsId; //商品id
	private String bothNum; //商品数量
	private String glassId; //镜片id
	private String picId; //商品图片id
	private String attrId; //商品属性id
	private String cartTime; //添加时间
	private String cartStatus; //购物车状态（1 待发货， 2 已发货，默认为1）
	
	public Cart() {
		super();
	}
	
	public Cart(int cartId, String userId, String optometryId, String isFrameonly, String goodsId, String bothNum,
			String glassId, String picId, String attrId, String cartTime, String cartStatus) {
		super();
		this.cartId = cartId;
		this.userId = userId;
		this.optometryId = optometryId;
		this.isFrameonly = isFrameonly;
		this.goodsId = goodsId;
		this.bothNum = bothNum;
		this.glassId = glassId;
		this.picId = picId;
		this.attrId = attrId;
		this.cartTime = cartTime;
		this.cartStatus = cartStatus;
	}

	public void setCartId(int cartId){
		this.cartId=cartId;
	}

	public int getCartId(){
		return cartId;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setOptometryId(String optometryId){
		this.optometryId=optometryId;
	}

	public String getOptometryId(){
		return optometryId;
	}

	public void setIsFrameonly(String isFrameonly){
		this.isFrameonly=isFrameonly;
	}

	public String getIsFrameonly(){
		return isFrameonly;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setBothNum(String bothNum){
		this.bothNum=bothNum;
	}

	public String getBothNum(){
		return bothNum;
	}

	public void setGlassId(String glassId){
		this.glassId=glassId;
	}

	public String getGlassId(){
		return glassId;
	}

	public void setPicId(String picId){
		this.picId=picId;
	}

	public String getPicId(){
		return picId;
	}

	public void setAttrId(String attrId){
		this.attrId=attrId;
	}

	public String getAttrId(){
		return attrId;
	}

	public void setCartTime(String cartTime){
		this.cartTime=cartTime;
	}

	public String getCartTime(){
		return cartTime;
	}

	public void setCartStatus(String cartStatus){
		this.cartStatus=cartStatus;
	}

	public String getCartStatus(){
		return cartStatus;
	}
}

