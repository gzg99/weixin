package com.yq.dao.serviceEval;

import com.yq.entity.serviceEval.JdbServiceEval;

public interface JdbServiceEvalMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbServiceEval record);

    int insertSelective(JdbServiceEval record);

    JdbServiceEval selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbServiceEval record);

    int updateByPrimaryKey(JdbServiceEval record);
}