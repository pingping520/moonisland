package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * PhotoWall 实体类
    * Fri Sep 22 17:37:38 CST 2017
    */ 
@SuppressWarnings("serial")
public class PhotoWall implements Serializable{
	private int photoId; //图片id
	private String photoUrl; //图片地址
	private String photoWord; //图片描述
	private String photoTime; //上传时间
	private String photoStatus; //是否使用 1：使用  2：不使用
	
	public PhotoWall() {
		super();
	}

	public PhotoWall(int photoId, String photoUrl, String photoWord, String photoTime, String photoStatus) {
		super();
		this.photoId = photoId;
		this.photoUrl = photoUrl;
		this.photoWord = photoWord;
		this.photoTime = photoTime;
		this.photoStatus = photoStatus;
	}

	public int getPhotoId() {
		return photoId;
	}

	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public String getPhotoWord() {
		return photoWord;
	}

	public void setPhotoWord(String photoWord) {
		this.photoWord = photoWord;
	}

	public String getPhotoTime() {
		return photoTime;
	}

	public void setPhotoTime(String photoTime) {
		this.photoTime = photoTime;
	}

	public String getPhotoStatus() {
		return photoStatus;
	}

	public void setPhotoStatus(String photoStatus) {
		this.photoStatus = photoStatus;
	}
	
}

