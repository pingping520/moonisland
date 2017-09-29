package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * GoodsAttr 实体类
    * Fri Sep 22 17:25:18 CST 2017
    */ 
@SuppressWarnings("serial")
public class GoodsAttr implements Serializable{
	private int attrId; //属性编号
	private Goods goods; //商品编号
	private String material; //材质
	private String border; //边框
	private String size; //大小
	private String function; //功能
	private String color; //颜色
	
	public GoodsAttr() {
		super();
	}

	public GoodsAttr(int attrId, Goods goods, String material, String border, String size, String function,
			String color) {
		super();
		this.attrId = attrId;
		this.goods = goods;
		this.material = material;
		this.border = border;
		this.size = size;
		this.function = function;
		this.color = color;
	}

	public int getAttrId() {
		return attrId;
	}

	public void setAttrId(int attrId) {
		this.attrId = attrId;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getBorder() {
		return border;
	}

	public void setBorder(String border) {
		this.border = border;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
}

