package com.yq.dao.community;

import com.yq.entity.community.JdbUserVillage;

public interface JdbUserVillageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(JdbUserVillage record);

    int insertSelective(JdbUserVillage record);

    JdbUserVillage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(JdbUserVillage record);

    int updateByPrimaryKey(JdbUserVillage record);
}