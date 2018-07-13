package com.yq.dao.jurisdiction.role;

import java.util.List;

import com.yq.entity.jurisdiction.role.JdbMenuRole;

public interface JdbMenuRoleMapper {
   
    int deleteByPrimaryKey(String roleId);

    int insert(JdbMenuRole record);
    
    int insertList(List<JdbMenuRole> record);

    int insertSelective(JdbMenuRole record);

    JdbMenuRole selectByPrimaryKey(String menuRoleId);

    int updateByPrimaryKeySelective(JdbMenuRole record);

    int updateByPrimaryKey(JdbMenuRole record);
}