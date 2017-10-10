package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Save 实体类
    * Fri Sep 22 17:40:43 CST 2017 
    */ 
@SuppressWarnings("serial")
public class Save implements Serializable{
	private int saveId; //收藏id
	private Goods goods; //商品id
	private User user; //用户id
	private String saveTime; //收藏时间
	
	public Save() {
		super();
	}

	public Save(int saveId, Goods goods, User user, String saveTime) {
		super();
		this.saveId = saveId;
		this.goods = goods;
		this.user = user;
		this.saveTime = saveTime;
	}

	public int getSaveId() {
		return saveId;
	}

	public void setSaveId(int saveId) {
		this.saveId = saveId;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSaveTime() {
		return saveTime;
	}

	public void setSaveTime(String saveTime) {
		this.saveTime = saveTime;
	}

	@Override
	public String toString() {
		return "Save [saveId=" + saveId + ", goods=" + goods + ", user=" + user + ", saveTime=" + saveTime + "]";
	}
	
	
}

