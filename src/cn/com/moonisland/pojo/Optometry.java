package cn.com.moonisland.pojo;
   /**
    * Optometry 实体类
    * Fri Sep 22 17:31:28 CST 2017
    */ 
public class Optometry{
	private int optometryId; //验光单id
	private String userId; //用户id
	private String rSph; //右眼球镜
	private String rCyl; //右眼柱镜
	private String rAxis; //右眼轴线
	private String lSph; //左眼球镜
	private String lCyl; //左眼柱镜
	private String lAxis; //左眼轴线
	private String pd; //瞳距
	private String optometryTime; //验光单添加时间
	
	public Optometry() {
		super();
	}
	
	public Optometry(int optometryId, String userId, String rSph, String rCyl, String rAxis, String lSph, String lCyl,
			String lAxis, String pd, String optometryTime) {
		super();
		this.optometryId = optometryId;
		this.userId = userId;
		this.rSph = rSph;
		this.rCyl = rCyl;
		this.rAxis = rAxis;
		this.lSph = lSph;
		this.lCyl = lCyl;
		this.lAxis = lAxis;
		this.pd = pd;
		this.optometryTime = optometryTime;
	}

	public void setOptometryId(int optometryId){
		this.optometryId=optometryId;
	}

	public int getOptometryId(){
		return optometryId;
	}

	public void setUserId(String userId){
		this.userId=userId;
	}

	public String getUserId(){
		return userId;
	}

	public void setRSph(String rSph){
		this.rSph=rSph;
	}

	public String getRSph(){
		return rSph;
	}

	public void setRCyl(String rCyl){
		this.rCyl=rCyl;
	}

	public String getRCyl(){
		return rCyl;
	}

	public void setRAxis(String rAxis){
		this.rAxis=rAxis;
	}

	public String getRAxis(){
		return rAxis;
	}

	public void setLSph(String lSph){
		this.lSph=lSph;
	}

	public String getLSph(){
		return lSph;
	}

	public void setLCyl(String lCyl){
		this.lCyl=lCyl;
	}

	public String getLCyl(){
		return lCyl;
	}

	public void setLAxis(String lAxis){
		this.lAxis=lAxis;
	}

	public String getLAxis(){
		return lAxis;
	}

	public void setPd(String pd){
		this.pd=pd;
	}

	public String getPd(){
		return pd;
	}

	public void setOptometryTime(String optometryTime){
		this.optometryTime=optometryTime;
	}

	public String getOptometryTime(){
		return optometryTime;
	}
}

