package cn.com.moonisland.dao;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Glass;


public interface GlassDao {
	//全表查询
	public List<Glass> findall();
	//id查询
	public List<Glass> findbyid(int id);
	//添加
	public int insert(Glass g);
	//更新
	public int update(Glass g);
	//删除
	public void delete(Glass g);
	//总页数
	public int pagecount();
	//分页查询
	public List<Glass> findlimit(Map<String, Integer> map);
	
}

