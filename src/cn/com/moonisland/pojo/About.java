package cn.com.moonisland.pojo;
import java.io.Serializable;
/**
    * About 实体类
    * Fri Sep 22 14:09:40 CST 2017
    */ 
@SuppressWarnings("serial")
public class About implements Serializable{
	private int aboutId; //关于我们id
	private String aboutStyle;	//关于我们类型(0 关于我们，1 新手指南，2 购物流程，3 退换货品，4 特权会员，5 镜片知识，6 其他优惠，7 联系我们 )
	private String aboutContent; //具体内容
	private String aboutTime; //时间
	
	public About() {
		super();
	}

	public About(int aboutId, String aboutStyle, String aboutContent, String aboutTime) {
		super();
		this.aboutId = aboutId;
		this.aboutStyle = aboutStyle;
		this.aboutContent = aboutContent;
		this.aboutTime = aboutTime;
	}



	public void setAboutId(int aboutId){
		this.aboutId=aboutId;
	}

	public int getAboutId(){
		return aboutId;
	}

	public void setAboutStyle(String aboutStyle){
		this.aboutStyle=aboutStyle;
	}

	public String getAboutStyle(){
		return aboutStyle;
	}

	public void setAboutContent(String aboutContent){
		this.aboutContent=aboutContent;
	}

	public String getAboutContent(){
		return aboutContent;
	}

	public void setAboutTime(String aboutTime){
		this.aboutTime=aboutTime;
	}

	public String getAboutTime(){
		return aboutTime;
	}
	
}

