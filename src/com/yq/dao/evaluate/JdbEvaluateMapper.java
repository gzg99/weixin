package com.yq.dao.evaluate;

import com.yq.entity.evaluate.JdbEvaluate;

public interface JdbEvaluateMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbEvaluate record);

    int insertSelective(JdbEvaluate record);

    JdbEvaluate selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbEvaluate record);

    int updateByPrimaryKey(JdbEvaluate record);
}