package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Address 实体类
    * Fri Sep 22 16:35:26 CST 2017
    */ 
@SuppressWarnings("serial")
public class Address implements Serializable{
	private int addressId; //收货地址id
	private String province; //省
	private String city; //城市
	private String district; //地区
	private String address;	//详细地址
	private String zipcode; //邮编
	private String phone; //电话
	private String userId;	//用户id
	private String receiverName; //收货人姓名
	private String addressStatus; //收货地址状态（0 不可用， 1 可用，默认为1）
		
	public Address() {
		super();
	}
	
	public Address(int addressId, String province, String city, String district, String address, String zipcode,
			String phone, String userId, String receiverName, String addressStatus) {
		super();
		this.addressId = addressId;
		this.province = province;
		this.city = city;
		this.district = district;
		this.address = address;
		this.zipcode = zipcode;
		this.phone = phone;
		this.userId = userId;
		this.receiverName = receiverName;
		this.addressStatus = addressStatus;
	}

	public void setAddressId(int addressId){
		this.addressId=addressId;
	}

	public int getAddressId(){
		return addressId;
	}

	public void setProvince(String province){
		this.province=province;
	}

	public String getProvince(){
		return province;
	}

	public void setCity(String city){
		this.city=city;
	}

	public String getCity(){
		return city;
	}

	public void setDistrict(String district){
		this.district=district;
	}

	public String getDistrict(){
		return district;
	}

	public void setAddress(String address){
		this.address=address;
	}

	public String getAddress(){
		return address;
	}

	public void setZipcode(String zipcode){
		this.zipcode=zipcode;
	}

	public String getZipcode(){
		return zipcode;
	}

	public void setPhone(String phone){
		this.phone=phone;
	}

	public String getPhone(){
		return phone;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setReceiverName(String receiverName){
		this.receiverName=receiverName;
	}

	public String getReceiverName(){
		return receiverName;
	}

	public void setAddressStatus(String addressStatus){
		this.addressStatus=addressStatus;
	}

	public String getAddressStatus(){
		return addressStatus;
	}
}

