package cn.com.moonisland.pojo;
import java.io.Serializable;
/**
    * Goods 实体类
    * Fri Sep 22 17:23:44 CST 2017
    */ 
@SuppressWarnings("serial")
public class Goods implements Serializable{
	private int goodsId; //商品id
	private String brandId; //品牌Id
	Brand brand;//多对一，多个商品属于一种品牌
	Pic pic;
	private String goodsName; //商品名称
	private String category; //商品分类（1太阳镜，2 男士，3女士）
	private String originalPrice; //原价
	private String salesPrice; //现价
	private String goodsColor; //商品颜色
	private String goodsContent; //商品内容
	private String browseNum; //浏览记录数量
	private String saveNum; //收藏次数（在用户收藏的时候一并添加）
	private String salesNum; //销售数量
	private String goodsKeywords; //商品关键字
	private String isOnsale; //是否在售
	private String stockNum; //库存数量
	private String minusPrice; //立减价格(填写减去的数字)
	private String privilege; //特权改价（填写可改价最高价格,普通会员无此项）
	private String points; //积分(设置0或者1,0为不参与积分活动，1参与)
	private String style; //款式（只有male或者female,男女同款就都选择上）
	private String styleA; //尺码A
	private String styleB; //尺码B
	private String styleC; //尺码C
	private String styleD; //尺码D
	private String styleE; //尺码E
	private String addTime; //时间
	private String isSale; //1代表促销、0代表未促销，默认为0
	
	public Goods() {
		super();
	}
	
	public Goods(int goodsId, String brandId, String goodsName, String category, String originalPrice,
			String salesPrice, String goodsColor, String goodsContent, String browseNum, String saveNum,
			String salesNum, String goodsKeywords, String isOnsale, String stockNum, String minusPrice,
			String privilege, String points, String style, String styleA, String styleB, String styleC, String styleD,
			String styleE, String addTime, String isSale) {
		super();
		this.goodsId = goodsId;
		this.brandId = brandId;
		this.goodsName = goodsName;
		this.category = category;
		this.originalPrice = originalPrice;
		this.salesPrice = salesPrice;
		this.goodsColor = goodsColor;
		this.goodsContent = goodsContent;
		this.browseNum = browseNum;
		this.saveNum = saveNum;
		this.salesNum = salesNum;
		this.goodsKeywords = goodsKeywords;
		this.isOnsale = isOnsale;
		this.stockNum = stockNum;
		this.minusPrice = minusPrice;
		this.privilege = privilege;
		this.points = points;
		this.style = style;
		this.styleA = styleA;
		this.styleB = styleB;
		this.styleC = styleC;
		this.styleD = styleD;
		this.styleE = styleE;
		this.addTime = addTime;
		this.isSale = isSale;
	}
     
	public Pic getPic() {
		return pic;
	}

	public void setPic(Pic pic) {
		this.pic = pic;
	}

	public void setGoodsId(int goodsId){
		this.goodsId=goodsId;
	}

	public int getGoodsId(){
		return goodsId;
	}

	public void setBrandId(String brandId){
		this.brandId=brandId;
	}

	public String getBrandId(){
		return brandId;
	}

	public void setGoodsName(String goodsName){
		this.goodsName=goodsName;
	}

	public String getGoodsName(){
		return goodsName;
	}

	public void setCategory(String category){
		this.category=category;
	}

	public String getCategory(){
		return category;
	}

	public void setOriginalPrice(String originalPrice){
		this.originalPrice=originalPrice;
	}

	public String getOriginalPrice(){
		return originalPrice;
	}

	public void setSalesPrice(String salesPrice){
		this.salesPrice=salesPrice;
	}

	public String getSalesPrice(){
		return salesPrice;
	}

	public void setGoodsColor(String goodsColor){
		this.goodsColor=goodsColor;
	}

	public String getGoodsColor(){
		return goodsColor;
	}

	public void setGoodsContent(String goodsContent){
		this.goodsContent=goodsContent;
	}

	public String getGoodsContent(){
		return goodsContent;
	}

	public void setBrowseNum(String browseNum){
		this.browseNum=browseNum;
	}

	public String getBrowseNum(){
		return browseNum;
	}

	public void setSaveNum(String saveNum){
		this.saveNum=saveNum;
	}

	public String getSaveNum(){
		return saveNum;
	}

	public void setSalesNum(String salesNum){
		this.salesNum=salesNum;
	}

	public String getSalesNum(){
		return salesNum;
	}

	public void setGoodsKeywords(String goodsKeywords){
		this.goodsKeywords=goodsKeywords;
	}

	public String getGoodsKeywords(){
		return goodsKeywords;
	}

	public void setIsOnsale(String isOnsale){
		this.isOnsale=isOnsale;
	}

	public String getIsOnsale(){
		return isOnsale;
	}

	public void setStockNum(String stockNum){
		this.stockNum=stockNum;
	}

	public String getStockNum(){
		return stockNum;
	}

	public void setMinusPrice(String minusPrice){
		this.minusPrice=minusPrice;
	}

	public String getMinusPrice(){
		return minusPrice;
	}

	public void setPrivilege(String privilege){
		this.privilege=privilege;
	}

	public String getPrivilege(){
		return privilege;
	}

	public void setPoints(String points){
		this.points=points;
	}

	public String getPoints(){
		return points;
	}

	public void setStyle(String style){
		this.style=style;
	}

	public String getStyle(){
		return style;
	}

	public void setStyleA(String styleA){
		this.styleA=styleA;
	}

	public String getStyleA(){
		return styleA;
	}

	public void setStyleB(String styleB){
		this.styleB=styleB;
	}

	public String getStyleB(){
		return styleB;
	}

	public void setStyleC(String styleC){
		this.styleC=styleC;
	}

	public String getStyleC(){
		return styleC;
	}

	public void setStyleD(String styleD){
		this.styleD=styleD;
	}

	public String getStyleD(){
		return styleD;
	}

	public void setStyleE(String styleE){
		this.styleE=styleE;
	}

	public String getStyleE(){
		return styleE;
	}

	public void setAddTime(String addTime){
		this.addTime=addTime;
	}

	public String getAddTime(){
		return addTime;
	}

	public void setIsSale(String isSale){
		this.isSale=isSale;
	}

	public String getIsSale(){
		return isSale;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	
	
}

