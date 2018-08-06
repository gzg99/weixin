package com.yq.dao;

import java.util.Map;

import com.yq.entity.Admin;

public interface AdminDao {
	
	public int isExist(Map<String, Object> map);
	
	public int update(Map<String, Object> map);
	
	public String listById(Map<String, Object> map);
	
	public Admin getAdmin(Map<String, Object> map);
}
