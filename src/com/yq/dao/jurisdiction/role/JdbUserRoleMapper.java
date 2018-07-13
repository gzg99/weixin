package com.yq.dao.jurisdiction.role;

import java.util.List;

import com.yq.entity.jurisdiction.role.JdbUserRole;

public interface JdbUserRoleMapper {

	int deleteByPrimaryKey(String id);

	int insert(JdbUserRole record);

	int insertSelective(JdbUserRole record);
	
	int insertListUserRole(List<JdbUserRole> record);

	JdbUserRole selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(JdbUserRole record);

	int updateByPrimaryKey(JdbUserRole record);
}