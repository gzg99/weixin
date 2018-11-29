package com.yq.dao.layerCard;

import com.yq.entity.layerCard.JdbLayerCard;

public interface JdbLayerCardMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbLayerCard record);

    int insertSelective(JdbLayerCard record);

    JdbLayerCard selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbLayerCard record);

    int updateByPrimaryKey(JdbLayerCard record);
}