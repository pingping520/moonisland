package cn.com.moonisland.pojo;

import java.io.Serializable;

/**
 * Brand 实体类
 *
 */
@SuppressWarnings("serial")
public class Brand implements Serializable{
	private int brandId;
	private String brandName;
	private String brandLogo;
	private String brandContent;
	private String brandAddtime;
	private String brandStatus;

	public Brand() {
		super();
	}

	public Brand(int brandId, String brandName, String brandLogo, String brandContent, String brandAddtime,
			String brandStatus) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.brandLogo = brandLogo;
		this.brandContent = brandContent;
		this.brandAddtime = brandAddtime;
		this.brandStatus = brandStatus;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandLogo() {
		return brandLogo;
	}

	public void setBrandLogo(String brandLogo) {
		this.brandLogo = brandLogo;
	}

	public String getBrandContent() {
		return brandContent;
	}

	public void setBrandContent(String brandContent) {
		this.brandContent = brandContent;
	}

	public String getBrandAddtime() {
		return brandAddtime;
	}

	public void setBrandAddtime(String brandAddtime) {
		this.brandAddtime = brandAddtime;
	}

	public String getBrandStatus() {
		return brandStatus;
	}

	public void setBrandStatus(String brandStatus) {
		this.brandStatus = brandStatus;
	}
	
	
}
