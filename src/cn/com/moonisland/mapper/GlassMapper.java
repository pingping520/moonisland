package cn.com.moonisland.mapper;

import java.util.List;
import java.util.Map;

import cn.com.moonisland.pojo.Glass;


public interface GlassMapper {
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
		//分页查询
		public List<Glass> findlimit(Map<String, Integer> map);
		//总页数
		public int pagecount();
		//更新状态值
		public int updateisActive(Glass glass);
}
