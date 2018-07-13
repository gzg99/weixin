package com.yq.dao.jurisdiction.menu;

import java.util.List;
import java.util.Map;

import com.yq.entity.jurisdiction.menu.JdbMenu;

public interface JdbMenuMapper {
     
    int deleteByPrimaryKey(String goodsId);

    
    int insert(JdbMenu record);

    
    int insertSelective(JdbMenu record);

    
    JdbMenu selectByPrimaryKey(String goodsId);
    
    List<Map<String,Object>> selectByList();
    
    int updateByPrimaryKeySelective(JdbMenu record);

    
    int updateByPrimaryKeyWithBLOBs(JdbMenu record);

    
    int updateByPrimaryKey(JdbMenu record);
}