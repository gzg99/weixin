package com.yq.dao.message;

import java.util.List;
import java.util.Map;

import com.yq.entity.message.JdbMessageReplay;

public interface JdbMessageReplayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(JdbMessageReplay record);

    int insertSelective(JdbMessageReplay record);

    JdbMessageReplay selectByPrimaryKey(Long id);
    
    List<Map<String,Object>> selectByMapList(Long messageId);

    int updateByPrimaryKeySelective(JdbMessageReplay record);

    int updateByPrimaryKeyWithBLOBs(JdbMessageReplay record);

    int updateByPrimaryKey(JdbMessageReplay record);
}