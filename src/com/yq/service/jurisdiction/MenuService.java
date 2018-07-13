package com.yq.service.jurisdiction;

import java.util.List;
import java.util.Map;

import com.yq.entity.jurisdiction.menu.JdbMenu;

public interface MenuService {

	public int insertSelective(JdbMenu record);
	
	List<Map<String,Object>> selectByList();
}
