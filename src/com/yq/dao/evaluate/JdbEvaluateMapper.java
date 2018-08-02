package com.yq.dao.evaluate;

import java.util.List;
import java.util.Map;

import com.yq.entity.evaluate.JdbEvaluate;

public interface JdbEvaluateMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbEvaluate record);

    int insertSelective(JdbEvaluate record);

    JdbEvaluate selectByPrimaryKey(String id);
    
    List<Map<String,Object>> showEvaluateBylist(Map<String,Object>mapData);

    int updateByPrimaryKeySelective(JdbEvaluate record);

    int updateByPrimaryKey(JdbEvaluate record);
    
    Map<String,Object> showEvaluate(String commodityId);
}