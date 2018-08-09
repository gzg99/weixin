package com.yq.dao.community;

import com.yq.entity.community.JdbMessageReplay;

public interface JdbMessageReplayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(JdbMessageReplay record);

    int insertSelective(JdbMessageReplay record);

    JdbMessageReplay selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(JdbMessageReplay record);

    int updateByPrimaryKeyWithBLOBs(JdbMessageReplay record);

    int updateByPrimaryKey(JdbMessageReplay record);
}