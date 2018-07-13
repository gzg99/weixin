package com.yq.service.jurisdiction;

import java.util.Map;

import com.yq.entity.jurisdiction.role.JdbMenuRole;
import com.yq.entity.jurisdiction.role.JdbRole;

public interface RoleService {

	int insertSelective(JdbRole record);
	
	Map<String,Object> listJdbRole(Integer currentPage);
	
	int insertMenuRole(JdbMenuRole jdbMenuRole);
	
	int deleteRoleById(String id);
}
