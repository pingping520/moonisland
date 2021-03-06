package cn.com.moonisland.dao;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Goods;
import cn.com.moonisland.pojo.Pic;

public interface PicDao {
	//查询全部
	public List<Pic> findall();
	//查询id
	public List<Pic> findbyid(int id);
	//添加
	public int insert(Pic p);
	//更新状态
	public int checkPic(Pic p);
	//更新
	public int update(Pic p);
	//分页查询
	public List<Pic> findlimit(Map<String, Integer> map);
	//总页数
	public int pagecount();
	
}



