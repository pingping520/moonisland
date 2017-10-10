package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Glass 实体类
    * Fri Sep 22 17:22:27 CST 2017
    */ 
@SuppressWarnings("serial")
public class Glass implements Serializable{
	private int glassId; //镜片id
	private String glassStyle; //镜片类型(1 标准镜片，2 防蓝光，3 偏光太阳镜片，4 变色镜片)
	private String glassName; //镜片名称
	private String glassPrice; //镜片价格
	private String sphPrice; //球镜超出范围价格增幅
	private String cylPrice; //柱镜超出范围价格增幅
	private String glassImg; //镜片图片路劲
	private String glassImgthumb;
	private String glassTime; //镜片时间
	private String color1;
	private String color2;
	private String color3;
	private String color4;
	private String color5;
	private String color6;
	private String color7;
	private String color8;
	private String color9;
	private String isActive; //是否选中
	
	public Glass() {
		super();
	}
	
	public Glass(int glassId, String glassStyle, String glassName, String glassPrice, String sphPrice, String cylPrice,
			String glassImg, String glassImgthumb, String glassTime, String color1, String color2, String color3,
			String color4, String color5, String color6, String color7, String color8, String color9, String isActive) {
		super();
		this.glassId = glassId;
		this.glassStyle = glassStyle;
		this.glassName = glassName;
		this.glassPrice = glassPrice;
		this.sphPrice = sphPrice;
		this.cylPrice = cylPrice;
		this.glassImg = glassImg;
		this.glassImgthumb = glassImgthumb;
		this.glassTime = glassTime;
		this.color1 = color1;
		this.color2 = color2;
		this.color3 = color3;
		this.color4 = color4;
		this.color5 = color5;
		this.color6 = color6;
		this.color7 = color7;
		this.color8 = color8;
		this.color9 = color9;
		this.isActive = isActive;
	}

	public void setGlassId(int glassId){
		this.glassId=glassId;
	}

	public int getGlassId(){
		return glassId;
	}

	public void setGlassStyle(String glassStyle){
		this.glassStyle=glassStyle;
	}

	public String getGlassStyle(){
		return glassStyle;
	}

	public void setGlassName(String glassName){
		this.glassName=glassName;
	}

	public String getGlassName(){
		return glassName;
	}

	public void setGlassPrice(String glassPrice){
		this.glassPrice=glassPrice;
	}

	public String getGlassPrice(){
		return glassPrice;
	}

	public void setSphPrice(String sphPrice){
		this.sphPrice=sphPrice;
	}

	public String getSphPrice(){
		return sphPrice;
	}

	public void setCylPrice(String cylPrice){
		this.cylPrice=cylPrice;
	}

	public String getCylPrice(){
		return cylPrice;
	}

	public void setGlassImg(String glassImg){
		this.glassImg=glassImg;
	}

	public String getGlassImg(){
		return glassImg;
	}

	public void setGlassImgthumb(String glassImgthumb){
		this.glassImgthumb=glassImgthumb;
	}

	public String getGlassImgthumb(){
		return glassImgthumb;
	}

	public void setGlassTime(String glassTime){
		this.glassTime=glassTime;
	}

	public String getGlassTime(){
		return glassTime;
	}

	public void setColor1(String color1){
		this.color1=color1;
	}

	public String getColor1(){
		return color1;
	}

	public void setColor2(String color2){
		this.color2=color2;
	}

	public String getColor2(){
		return color2;
	}

	public void setColor3(String color3){
		this.color3=color3;
	}

	public String getColor3(){
		return color3;
	}

	public void setColor4(String color4){
		this.color4=color4;
	}

	public String getColor4(){
		return color4;
	}

	public void setColor5(String color5){
		this.color5=color5;
	}

	public String getColor5(){
		return color5;
	}

	public void setColor6(String color6){
		this.color6=color6;
	}

	public String getColor6(){
		return color6;
	}

	public void setColor7(String color7){
		this.color7=color7;
	}

	public String getColor7(){
		return color7;
	}

	public void setColor8(String color8){
		this.color8=color8;
	}

	public String getColor8(){
		return color8;
	}

	public void setColor9(String color9){
		this.color9=color9;
	}

	public String getColor9(){
		return color9;
	}

	public void setIsActive(String isActive){
		this.isActive=isActive;
	}

	public String getIsActive(){
		return isActive;
	}

	@Override
	public String toString() {
		return "Glass [glassId=" + glassId + ", glassStyle=" + glassStyle + ", glassName=" + glassName + ", glassPrice="
				+ glassPrice + ", sphPrice=" + sphPrice + ", cylPrice=" + cylPrice + ", glassImg=" + glassImg
				+ ", glassImgthumb=" + glassImgthumb + ", glassTime=" + glassTime + ", color1=" + color1 + ", color2="
				+ color2 + ", color3=" + color3 + ", color4=" + color4 + ", color5=" + color5 + ", color6=" + color6
				+ ", color7=" + color7 + ", color8=" + color8 + ", color9=" + color9 + ", isActive=" + isActive + "]";
	}
	
}

