package com.yq.dao.layerCard;

import com.yq.entity.layerCard.JdbLayerCard;

import java.util.List;

public interface JdbLayerCardMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbLayerCard record);

    int insertSelective(JdbLayerCard record);

    JdbLayerCard selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(JdbLayerCard record);

    int updateByPrimaryKey(JdbLayerCard record);

    int getCount(JdbLayerCard jdbLayerCard);

    List<JdbLayerCard> getLayerCardList(JdbLayerCard jdbLayerCard);

    JdbLayerCard selLayerCardByCardNum(JdbLayerCard jdbLayerCard);

    int cardBinding(JdbLayerCard jdbLayerCard);
}