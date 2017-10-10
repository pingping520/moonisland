package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Order 实体类
    * Fri Sep 22 17:33:53 CST 2017 
    */ 
@SuppressWarnings("serial")
public class Order implements Serializable{
	private int orderId; //订单id
	private String orderNumber; //订单号
	private String goodsId; //商品id
	private Goods goods; //商品id
	private Glass glass;
	private User user;
	private String glassId; //镜片id
	private String userId; //用户id
	private String optometryId; //验光单id
	private String orderStatus; //订单状态（0 未确认，1 确认，2 已取消，3 退款中,4 已退款）
	private String shippingStatus; //配送情况（0 未发货，1 已发货，2 已收货，4退货）
	private String payStatus; //支付状态（0 未付款，1 已付款）
	private String consignee; //收货人姓名
	private String province; //收货人省份
	private String city; //收货人城市
	private String district; //收货人地区
	private String address; //收货人详细地址
	private String zipcode; //邮编
	private String phone; //收货人手机
	private String payNum; //购买数量
	private String orderMoney; //订单金额
	private String postscript; //留言
	private String shippingName; //配送方式名称
	private String shippingNum; //快递单号
	private String payName; //支付方式名称
	private String orderTime; //订单生成时间
	private String picId;
	private String attrId;
	
	public Order() {
		super();
	}

	public Order(int orderId, String orderNumber, String goodsId, Goods goods, Glass glass, User user, String glassId,
			String userId, String optometryId, String orderStatus, String shippingStatus, String payStatus,
			String consignee, String province, String city, String district, String address, String zipcode,
			String phone, String payNum, String orderMoney, String postscript, String shippingName, String shippingNum,
			String payName, String orderTime, String picId, String attrId) {
		super();
		this.orderId = orderId;
		this.orderNumber = orderNumber;
		this.goodsId = goodsId;
		this.goods = goods;
		this.glass = glass;
		this.user = user;
		this.glassId = glassId;
		this.userId = userId;
		this.optometryId = optometryId;
		this.orderStatus = orderStatus;
		this.shippingStatus = shippingStatus;
		this.payStatus = payStatus;
		this.consignee = consignee;
		this.province = province;
		this.city = city;
		this.district = district;
		this.address = address;
		this.zipcode = zipcode;
		this.phone = phone;
		this.payNum = payNum;
		this.orderMoney = orderMoney;
		this.postscript = postscript;
		this.shippingName = shippingName;
		this.shippingNum = shippingNum;
		this.payName = payName;
		this.orderTime = orderTime;
		this.picId = picId;
		this.attrId = attrId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Glass getGlass() {
		return glass;
	}

	public void setGlass(Glass glass) {
		this.glass = glass;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getGlassId() {
		return glassId;
	}

	public void setGlassId(String glassId) {
		this.glassId = glassId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getOptometryId() {
		return optometryId;
	}

	public void setOptometryId(String optometryId) {
		this.optometryId = optometryId;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getShippingStatus() {
		return shippingStatus;
	}

	public void setShippingStatus(String shippingStatus) {
		this.shippingStatus = shippingStatus;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPayNum() {
		return payNum;
	}

	public void setPayNum(String payNum) {
		this.payNum = payNum;
	}

	public String getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(String orderMoney) {
		this.orderMoney = orderMoney;
	}

	public String getPostscript() {
		return postscript;
	}

	public void setPostscript(String postscript) {
		this.postscript = postscript;
	}

	public String getShippingName() {
		return shippingName;
	}

	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}

	public String getShippingNum() {
		return shippingNum;
	}

	public void setShippingNum(String shippingNum) {
		this.shippingNum = shippingNum;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public String getPicId() {
		return picId;
	}

	public void setPicId(String picId) {
		this.picId = picId;
	}

	public String getAttrId() {
		return attrId;
	}

	public void setAttrId(String attrId) {
		this.attrId = attrId;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderNumber=" + orderNumber + ", goodsId=" + goodsId + ", goods="
				+ goods + ", glass=" + glass + ", user=" + user + ", glassId=" + glassId + ", userId=" + userId
				+ ", optometryId=" + optometryId + ", orderStatus=" + orderStatus + ", shippingStatus=" + shippingStatus
				+ ", payStatus=" + payStatus + ", consignee=" + consignee + ", province=" + province + ", city=" + city
				+ ", district=" + district + ", address=" + address + ", zipcode=" + zipcode + ", phone=" + phone
				+ ", payNum=" + payNum + ", orderMoney=" + orderMoney + ", postscript=" + postscript + ", shippingName="
				+ shippingName + ", shippingNum=" + shippingNum + ", payName=" + payName + ", orderTime=" + orderTime
				+ ", picId=" + picId + ", attrId=" + attrId + "]";
	}
	
	
}

