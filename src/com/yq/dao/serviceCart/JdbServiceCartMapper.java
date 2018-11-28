package com.yq.dao.serviceCart;

import com.yq.entity.serviceCart.JdbServiceCart;

import java.util.List;

public interface JdbServiceCartMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbServiceCart record);

    int insertSelective(JdbServiceCart record);

    JdbServiceCart selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbServiceCart record);

    int updateByPrimaryKey(JdbServiceCart record);

    void addOrder(JdbServiceCart jdbServiceCart);

    List<JdbServiceCart> selServiceList(String oppenId);

    int count(JdbServiceCart jdbServiceCart);

    List<JdbServiceCart> selServiceCartToWeb(JdbServiceCart jdbServiceCart);

    int updateServiceCartById(JdbServiceCart jdbServiceCart);
}