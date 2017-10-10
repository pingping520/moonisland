package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Pic 实体类
    * Fri Sep 22 17:29:46 CST 2017
    */ 
@SuppressWarnings("serial")
public class Pic implements Serializable{
	private int picId; //图片编号
	private String goodsId; //商品编号
	Goods goods;
	private String pic1; //图片1
	private String pic2; //图片2
	private String pic3; //图片3
	private String pic4; //图片4
	private String pic1Thumb; //缩略图1
	private String pic2Thumb; //缩略图2
	private String pic3Thumb; //缩略图3
	private String pic4Thumb; //缩略图4
	
	public Pic() {
		super();
	}
	
	

	public Pic(int picId, String goodsId, Goods goods, String pic1, String pic2, String pic3, String pic4,
			String pic1Thumb, String pic2Thumb, String pic3Thumb, String pic4Thumb) {
		super();
		this.picId = picId;
		this.goodsId = goodsId;
		this.goods = goods;
		this.pic1 = pic1;
		this.pic2 = pic2;
		this.pic3 = pic3;
		this.pic4 = pic4;
		this.pic1Thumb = pic1Thumb;
		this.pic2Thumb = pic2Thumb;
		this.pic3Thumb = pic3Thumb;
		this.pic4Thumb = pic4Thumb;
	}



	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public void setPicId(int picId){
		this.picId=picId;
	}

	public int getPicId(){
		return picId;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setPic1(String pic1){
		this.pic1=pic1;
	}

	public String getPic1(){
		return pic1;
	}

	public void setPic2(String pic2){
		this.pic2=pic2;
	}

	public String getPic2(){
		return pic2;
	}

	public void setPic3(String pic3){
		this.pic3=pic3;
	}

	public String getPic3(){
		return pic3;
	}

	public void setPic4(String pic4){
		this.pic4=pic4;
	}

	public String getPic4(){
		return pic4;
	}

	public void setPic1Thumb(String pic1Thumb){
		this.pic1Thumb=pic1Thumb;
	}

	public String getPic1Thumb(){
		return pic1Thumb;
	}

	public void setPic2Thumb(String pic2Thumb){
		this.pic2Thumb=pic2Thumb;
	}

	public String getPic2Thumb(){
		return pic2Thumb;
	}

	public void setPic3Thumb(String pic3Thumb){
		this.pic3Thumb=pic3Thumb;
	}

	public String getPic3Thumb(){
		return pic3Thumb;
	}

	public void setPic4Thumb(String pic4Thumb){
		this.pic4Thumb=pic4Thumb;
	}

	public String getPic4Thumb(){
		return pic4Thumb;
	}
}

