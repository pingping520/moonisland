package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
    * Admin 实体类
    * Fri Sep 22 16:37:10 CST 2017
    */ 
@SuppressWarnings("serial")
public class Admin implements Serializable{
	private int id; //管理员id
	private String name; //管理员名称
	private String pwd; //管理员密码
	private int status; //管理员状态（0 不可用，1 可用，默认为1）
	private String addTime; //注册时间
	
	public Admin() {
		super();
	}
	
	public Admin(int id, String name, String pwd, int status, String addTime) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.status = status;
		this.addTime = addTime;
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setName(String name){
		this.name=name;
	}

	public String getName(){
		return name;
	}

	public void setPwd(String pwd){
		this.pwd=pwd;
	}

	public String getPwd(){
		return pwd;
	}

	public void setStatus(int status){
		this.status=status;
	}

	public int getStatus(){
		return status;
	}

	public void setAddTime(String addTime){
		this.addTime=addTime;
	}

	public String getAddTime(){
		return addTime;
	}
}

