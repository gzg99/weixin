package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.NewsFlash;

public interface NewsFlashDao {

	List<NewsFlash> getList(Integer status);
	
	boolean deleteById(Long id);
	
	boolean add(NewsFlash newFlash);
	
	boolean update(Map<String, Object> map);
	
	NewsFlash selectById(Long id);
	
}
 