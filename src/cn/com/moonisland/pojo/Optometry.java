package cn.com.moonisland.pojo;
   /**
    * Optometry 实体类
    * Fri Sep 22 17:31:28 CST 2017
    */ 
public class Optometry{
	private int optometryId; //验光单id
	private User user; //用户id
	private String rSph; //右眼球镜
	private String rCyl; //右眼柱镜
	private String rAxis; //右眼轴线
	private String lSph; //左眼球镜
	private String lCyl; //左眼柱镜
	private String lAxis; //左眼轴线
	private String pd; //瞳距
	private String optometryTime; //验光单添加时间
	

	public int getOptometryId() {
		return optometryId;
	}

	public void setOptometryId(int optometryId) {
		this.optometryId = optometryId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getrSph() {
		return rSph;
	}

	public void setrSph(String rSph) {
		this.rSph = rSph;
	}

	public String getrCyl() {
		return rCyl;
	}

	public void setrCyl(String rCyl) {
		this.rCyl = rCyl;
	}

	public String getrAxis() {
		return rAxis;
	}

	public void setrAxis(String rAxis) {
		this.rAxis = rAxis;
	}

	public String getlSph() {
		return lSph;
	}

	public void setlSph(String lSph) {
		this.lSph = lSph;
	}

	public String getlCyl() {
		return lCyl;
	}

	public void setlCyl(String lCyl) {
		this.lCyl = lCyl;
	}

	public String getlAxis() {
		return lAxis;
	}

	public void setlAxis(String lAxis) {
		this.lAxis = lAxis;
	}

	public String getPd() {
		return pd;
	}

	public void setPd(String pd) {
		this.pd = pd;
	}

	public String getOptometryTime() {
		return optometryTime;
	}

	public void setOptometryTime(String optometryTime) {
		this.optometryTime = optometryTime;
	}

	public Optometry(int optometryId, User user, String rSph, String rCyl, String rAxis, String lSph, String lCyl,
			String lAxis, String pd, String optometryTime) {
		super();
		this.optometryId = optometryId;
		this.user = user;
		this.rSph = rSph;
		this.rCyl = rCyl;
		this.rAxis = rAxis;
		this.lSph = lSph;
		this.lCyl = lCyl;
		this.lAxis = lAxis;
		this.pd = pd;
		this.optometryTime = optometryTime;
	}

	public Optometry() {
		super();
	}
}

