package com.yq.dao.benefit;

import com.yq.entity.benefit.JdbRelation;

public interface JdbRelationMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbRelation record);

    int insertSelective(JdbRelation record);

    JdbRelation selectByPrimaryKey(String id);
    
    JdbRelation selectByPrimary();

    int updateByPrimaryKeySelective(JdbRelation record);

    int updateByPrimaryKey(JdbRelation record);
}