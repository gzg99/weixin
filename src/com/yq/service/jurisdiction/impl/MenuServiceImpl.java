package com.yq.service.jurisdiction.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.jurisdiction.menu.JdbMenuMapper;
import com.yq.entity.jurisdiction.menu.JdbMenu;
import com.yq.service.jurisdiction.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	JdbMenuMapper jdbMenuMapper;
	
	@Override
	public int insertSelective(JdbMenu record) {
		int insert = jdbMenuMapper.insertSelective(record);
		return insert;
	}

	/**
	 * 查询所有菜单
	 */
	@Override
	public List<Map<String,Object>> selectByList() {
		List<Map<String,Object>> listMenu = jdbMenuMapper.selectByList();
		return listMenu;
	}
	
}
