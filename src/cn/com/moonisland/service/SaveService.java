package cn.com.moonisland.service;

import java.util.List;

import cn.com.moonisland.pojo.Save;

public interface SaveService {

	public List<Save> findAll(String id);
	
	public int add(Save save);
	
	public int delete(int id);
}
