package cn.com.moonisland.service;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.ReturnOrder;

public interface ReturnorderService {
	//添加退货订单
	public int addReturn(ReturnOrder returnOrder);
	
	//全表查询退货订单
	public List<ReturnOrder> selectReturn();
	
	//通过id查询退货订单
	public ReturnOrder selectReturnbyid(int returnid);
		
	//更改退货状态
	public int deleteReturn(ReturnOrder order);
	
	//查询一共有多少页
	public int pageCount();
	
	//分页查询
	public List<ReturnOrder> findbypage(int orderid);
	
	//通过查询userID一共有多少页
	public int pageCount2(String userid);
	
	//通过userID分页查询
	public List<ReturnOrder> findbyuserid(Map<String, Object> map);
	
	//通过goodsid 查询
	public List<ReturnOrder> findbygoodsidPage(Map<String, Object> map);

	//通过查询goodsid一共有多少页
	public int findbygoodsidCount (String goodsid);
}
