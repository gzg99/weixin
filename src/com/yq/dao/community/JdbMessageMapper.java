package com.yq.dao.community;

import com.yq.entity.community.JdbMessage;

public interface JdbMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(JdbMessage record);

    int insertSelective(JdbMessage record);

    JdbMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(JdbMessage record);

    int updateByPrimaryKeyWithBLOBs(JdbMessage record);

    int updateByPrimaryKey(JdbMessage record);
}