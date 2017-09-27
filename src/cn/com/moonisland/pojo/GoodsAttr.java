package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * GoodsAttr 实体类
    * Fri Sep 22 17:25:18 CST 2017
    */ 
@SuppressWarnings("serial")
public class GoodsAttr implements Serializable{
	private int attrId; //属性编号
	private String goodsId; //商品编号
	private String material; //材质
	private String border; //边框
	private String size; //大小
	private String function; //功能
	private String color; //颜色
	
	public GoodsAttr() {
		super();
	}
	
	public GoodsAttr(int attrId, String goodsId, String material, String border, String size, String function,
			String color) {
		super();
		this.attrId = attrId;
		this.goodsId = goodsId;
		this.material = material;
		this.border = border;
		this.size = size;
		this.function = function;
		this.color = color;
	}

	public void setAttrId(int attrId){
		this.attrId=attrId;
	}

	public int getAttrId(){
		return attrId;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setMaterial(String material){
		this.material=material;
	}

	public String getMaterial(){
		return material;
	}

	public void setBorder(String border){
		this.border=border;
	}

	public String getBorder(){
		return border;
	}

	public void setSize(String size){
		this.size=size;
	}

	public String getSize(){
		return size;
	}

	public void setFunction(String function){
		this.function=function;
	}

	public String getFunction(){
		return function;
	}

	public void setColor(String color){
		this.color=color;
	}

	public String getColor(){
		return color;
	}
}

