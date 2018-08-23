package com.yq.dao.benefit;

import com.yq.entity.benefit.JdbOldcard;

public interface JdbOldcardMapper {
    int deleteByPrimaryKey(String cardId);

    int insert(JdbOldcard record);

    int insertSelective(JdbOldcard record);

    JdbOldcard selectByPrimaryKey(String cardId);
    
    JdbOldcard selectByPrimary();

    int updateByPrimaryKeySelective(JdbOldcard record);

    int updateByPrimaryKey(JdbOldcard record);
}