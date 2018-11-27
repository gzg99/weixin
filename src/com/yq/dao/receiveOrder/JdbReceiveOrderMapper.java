package com.yq.dao.receiveOrder;

import com.yq.entity.receiveOrder.JdbReceiveOrder;

public interface JdbReceiveOrderMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbReceiveOrder record);

    int insertSelective(JdbReceiveOrder record);

    JdbReceiveOrder selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbReceiveOrder record);

    int updateByPrimaryKey(JdbReceiveOrder record);
}