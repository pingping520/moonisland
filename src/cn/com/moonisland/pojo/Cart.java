package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Cart 实体类
    * Fri Sep 22 17:20:24 CST 2017
    */ 
@SuppressWarnings("serial")
public class Cart implements Serializable{
	private int cartId; //购物车id
	private User user; //用户id
	private Optometry optometry ; //验光单id
	private String isFrameonly; //是否只有镜框(0 表示不仅有镜架还有镜框，1 只有镜架)，默认为0
	private Goods goods; //商品id
	private String bothNum; //商品数量
	private Glass glass; //镜片id
	private Pic pic; //商品图片id
	private GoodsAttr goodsAttr; //商品属性id
	private String cartTime; //添加时间
	private String cartStatus; //购物车状态（1 待发货， 2 已发货，默认为1）
	
	public Cart() {
		super();
	}

	public Cart(int cartId, User user, Optometry optometry, String isFrameonly, Goods goods, String bothNum,
			Glass glass, Pic pic, GoodsAttr goodsAttr, String cartTime, String cartStatus) {
		super();
		this.cartId = cartId;
		this.user = user;
		this.optometry = optometry;
		this.isFrameonly = isFrameonly;
		this.goods = goods;
		this.bothNum = bothNum;
		this.glass = glass;
		this.pic = pic;
		this.goodsAttr = goodsAttr;
		this.cartTime = cartTime;
		this.cartStatus = cartStatus;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Optometry getOptometry() {
		return optometry;
	}

	public void setOptometry(Optometry optometry) {
		this.optometry = optometry;
	}

	public String getIsFrameonly() {
		return isFrameonly;
	}

	public void setIsFrameonly(String isFrameonly) {
		this.isFrameonly = isFrameonly;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getBothNum() {
		return bothNum;
	}

	public void setBothNum(String bothNum) {
		this.bothNum = bothNum;
	}

	public Glass getGlass() {
		return glass;
	}

	public void setGlass(Glass glass) {
		this.glass = glass;
	}

	public Pic getPic() {
		return pic;
	}

	public void setPic(Pic pic) {
		this.pic = pic;
	}

	public GoodsAttr getGoodsAttr() {
		return goodsAttr;
	}

	public void setGoodsAttr(GoodsAttr goodsAttr) {
		this.goodsAttr = goodsAttr;
	}

	public String getCartTime() {
		return cartTime;
	}

	public void setCartTime(String cartTime) {
		this.cartTime = cartTime;
	}

	public String getCartStatus() {
		return cartStatus;
	}

	public void setCartStatus(String cartStatus) {
		this.cartStatus = cartStatus;
	}
}

