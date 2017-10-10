package cn.com.moonisland.mapper;

import java.util.List;

import cn.com.moonisland.pojo.Save;

public interface SaveMapper {

	public List<Save> findAll(String id);
	
	public int add(Save save);
	
	public int delete(int id);
}
