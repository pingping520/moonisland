package cn.com.moonisland.pojo;
import java.io.Serializable;

@SuppressWarnings("serial")
public class Message implements Serializable{
	private int code;
	private String info;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

}
