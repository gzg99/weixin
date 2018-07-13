package com.yq.service.jurisdiction.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.jurisdiction.role.JdbMenuRoleMapper;
import com.yq.dao.jurisdiction.role.JdbRoleMapper;
import com.yq.dao.jurisdiction.role.JdbUserRoleMapper;
import com.yq.entity.jurisdiction.role.JdbMenuRole;
import com.yq.entity.jurisdiction.role.JdbRole;
import com.yq.service.jurisdiction.RoleService;
import com.yq.util.PageUtil;
import com.yq.util.UUIDUtils;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	JdbRoleMapper jdbRoleMapper;
	
	@Autowired
	JdbUserRoleMapper jdbUserRoleMapper;
	
	@Autowired
	JdbMenuRoleMapper jdbMenuRoleMapper;
	
	/**
	 * 增加角色
	 */
	@Override
	public int insertSelective(JdbRole record) {
		record.setRoleId(UUIDUtils.getUUID());
		int insert = jdbRoleMapper.insertSelective(record);
		return insert; 
	}

	/**
	 * 角色列表
	 */
	@Override
	public Map<String, Object> listJdbRole(Integer currentPage) {
		Map<String, Object> map = new HashMap<String, Object>();
		JdbRole jdbRole = new JdbRole();
		jdbRole.setPageSize(10);
		jdbRole.setCurrentNum(PageUtil.currentNum(currentPage, 10));
		int total = jdbRoleMapper.countJbRole();
		List<JdbRole> listRole = jdbRoleMapper.listJdbRole(jdbRole);
		map.put("total", total);
		map.put("listRole", listRole);
		return map;
	}

	/**
	 * 给角色增加权限
	 */
	@Override
	public int insertMenuRole(JdbMenuRole jdbMenuRole) {
		List<JdbMenuRole> MenuRoles = new ArrayList<JdbMenuRole>();
		String[] menuId = jdbMenuRole.getMenuId().split(",");
		for(String id : menuId) {
			JdbMenuRole menuRole = new JdbMenuRole();
			menuRole.setMenuId(id);
			menuRole.setRoleId(jdbMenuRole.getRoleId());
			MenuRoles.add(menuRole);
		}
		jdbMenuRoleMapper.deleteByPrimaryKey(jdbMenuRole.getRoleId());//删除原来的权限
		
		int insert = jdbMenuRoleMapper.insertList(MenuRoles);//给角色授权
		
		return insert;
	}

	/**
	 * 删除角色
	 */
	@Override
	public int deleteRoleById(String id) {
        int del = jdbRoleMapper.deleteByPrimaryKey(id);
		return del;
	}
	
	
}
