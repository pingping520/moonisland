package cn.com.moonisland.pojo;

import java.io.Serializable;
import java.util.List;

/**
    * Cart 实体类
    * Fri Sep 22 17:20:24 CST 2017
    */ 
@SuppressWarnings("serial")
public class Cart implements Serializable{
	private int cartId; //购物车id
	private List<User> users; //用户id
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
	
	
}

