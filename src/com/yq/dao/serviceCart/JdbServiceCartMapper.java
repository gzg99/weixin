package com.yq.dao.serviceCart;

import com.yq.entity.serviceCart.JdbServiceCart;

public interface JdbServiceCartMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbServiceCart record);

    int insertSelective(JdbServiceCart record);

    JdbServiceCart selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbServiceCart record);

    int updateByPrimaryKey(JdbServiceCart record);

    void addOrder(JdbServiceCart jdbServiceCart);
}