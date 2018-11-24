package com.yq.dao.goodsCollection;

import com.yq.entity.goodsCollection.JdbGoodsCollection;

import java.util.Map;

public interface JdbGoodsCollectionMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbGoodsCollection record);

    int insertSelective(JdbGoodsCollection record);

    JdbGoodsCollection selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbGoodsCollection record);

    int updateByPrimaryKey(JdbGoodsCollection record);

    JdbGoodsCollection selCollection(Map<String, Object> map);
}