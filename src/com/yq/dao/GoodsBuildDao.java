package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;

public interface GoodsBuildDao {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsBuild record);

    int insertSelective(GoodsBuild record);

    GoodsBuild selectById(Long id);

    int updateByPrimaryKeySelective(GoodsBuild record);

    int updateByPrimaryKeyWithBLOBs(GoodsBuild record);

    int updateByPrimaryKey(GoodsBuild record);
    
    int count(GoodsBuildSearchVo search);
    
    List<GoodsBuild> getGoodsBuildByCondition(GoodsBuildSearchVo search);
}