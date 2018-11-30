package com.yq.service.layerCard;

import com.yq.entity.layerCard.JdbLayerCard;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2018/11/29.
 */
public interface LayerCardService {

    String cardBinding(String cardType, String cardNum, String userPhone, String userAddr, String code, HttpSession session);

    int getCount(JdbLayerCard jdbLayerCard);

    List<JdbLayerCard> getLayerCardList(JdbLayerCard jdbLayerCard);

    String addLayerCard(String cardType, String cardNum);
}
