package com.yq.dao;

import com.yq.entity.GoodsBuild;

public interface GoodsBuildDao {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsBuild record);

    int insertSelective(GoodsBuild record);

    GoodsBuild selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsBuild record);

    int updateByPrimaryKeyWithBLOBs(GoodsBuild record);

    int updateByPrimaryKey(GoodsBuild record);
}