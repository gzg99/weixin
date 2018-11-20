package com.yq.dao.foreman;

import com.yq.entity.foreman.JdbForeman;

import java.util.List;

public interface JdbForemanMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbForeman record);

    int insertSelective(JdbForeman record);

    JdbForeman selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbForeman record);

    int updateByPrimaryKey(JdbForeman record);

    List<JdbForeman> selForemanList();
}