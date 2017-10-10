package cn.com.moonisland.dao;

import java.util.List;

import cn.com.moonisland.pojo.Save;

public interface SaveDao {

	public List<Save> findAll(String id);
	
	public int add(Save save);
	
	public int delete(int id);
}
