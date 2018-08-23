package com.yq.dao.benefit;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yq.entity.benefit.JdbLoveRelay;

public interface JdbLoveRelayMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbLoveRelay record);

    int insertSelective(JdbLoveRelay record);

    JdbLoveRelay selectByPrimaryKey(String id);
    
    List<JdbLoveRelay> selectByPrimaryList(@Param(value="id")String id);

    int updateByPrimaryKeySelective(JdbLoveRelay record);

    int updateByPrimaryKey(JdbLoveRelay record);
}