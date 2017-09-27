package cn.com.moonisland.pojo;

import java.io.Serializable;
/**
    * Area 实体类
    * Fri Sep 22 16:46:35 CST 2017
    */ 
@SuppressWarnings("serial")
public class Area implements Serializable{
	private String areaId;
	private String title;
	private String pid;
	
	public Area() {
		super();
	}
	
	public Area(String areaId, String title, String pid) {
		super();
		this.areaId = areaId;
		this.title = title;
		this.pid = pid;
	}

	public void setAreaId(String areaId){
		this.areaId=areaId;
	}

	public String getAreaId(){
		return areaId;
	}

	public void setTitle(String title){
		this.title=title;
	}

	public String getTitle(){
		return title;
	}

	public void setPid(String pid){
		this.pid=pid;
	}

	public String getPid(){
		return pid;
	}
}

