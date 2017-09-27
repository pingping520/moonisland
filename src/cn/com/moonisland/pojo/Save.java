package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Save 实体类
    * Fri Sep 22 17:40:43 CST 2017 
    */ 
@SuppressWarnings("serial")
public class Save implements Serializable{
	private int saveId; //收藏id
	private String goodsId; //商品id
	private String userId; //用户id
	private String saveTime; //收藏时间
	
	public Save() {
		super();
	}
	
	public Save(int saveId, String goodsId, String userId, String saveTime) {
		super();
		this.saveId = saveId;
		this.goodsId = goodsId;
		this.userId = userId;
		this.saveTime = saveTime;
	}

	public void setSaveId(int saveId){
		this.saveId=saveId;
	}

	public int getSaveId(){
		return saveId;
	}

	public void setGoodsId(String goodsId){
		this.goodsId=goodsId;
	}

	public String getGoodsId(){
		return goodsId;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setSaveTime(String saveTime){
		this.saveTime=saveTime;
	}

	public String getSaveTime(){
		return saveTime;
	}
}

