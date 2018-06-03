package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Ad;

public interface AdDao {

	public boolean insert(Ad ad);
	
	public boolean delete(Long id);
	
	public List<Ad> seleteByTime(Map<String, Object> map);
	
	public boolean update(Map<String, Object> map);
	
	Ad selectById(Long id);
}
