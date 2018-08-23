package com.yq.dao.benefit;

import com.yq.entity.benefit.JdvLoveoldplan;

public interface JdvLoveoldplanMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdvLoveoldplan record);

    int insertSelective(JdvLoveoldplan record);

    JdvLoveoldplan selectByPrimaryKey(String id);
    
    JdvLoveoldplan selectByPrimary();

    int updateByPrimaryKeySelective(JdvLoveoldplan record);

    int updateByPrimaryKey(JdvLoveoldplan record);
}