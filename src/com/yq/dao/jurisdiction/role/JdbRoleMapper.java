package com.yq.dao.jurisdiction.role;

import java.util.List;

import com.yq.entity.jurisdiction.role.JdbRole;

public interface JdbRoleMapper {
    
    int deleteByPrimaryKey(String roleId);

    int insert(JdbRole record);

    int insertSelective(JdbRole record);

    JdbRole selectByPrimaryKey(String roleId);

    int updateByPrimaryKeySelective(JdbRole record);

    int updateByPrimaryKey(JdbRole record);
    
    List<JdbRole> listJdbRole(JdbRole jdbRole);
    
    int countJbRole();
}