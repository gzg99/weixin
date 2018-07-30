package com.yq.dao.evaluate;

import java.util.List;

import com.yq.entity.evaluate.JdbEvaluate;

public interface JdbEvaluateMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbEvaluate record);

    int insertSelective(JdbEvaluate record);

    JdbEvaluate selectByPrimaryKey(String id);
    
    List<JdbEvaluate> showEvaluate(String commodityId);

    int updateByPrimaryKeySelective(JdbEvaluate record);

    int updateByPrimaryKey(JdbEvaluate record);
}