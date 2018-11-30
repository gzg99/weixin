package com.yq.service.layerCard;

import com.yq.entity.layerCard.JdbLayerCard;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/11/29.
 */
public interface LayerCardService {

    String cardBinding(HttpServletRequest req);

    int getCount(JdbLayerCard jdbLayerCard);

    List<JdbLayerCard> getLayerCardList(JdbLayerCard jdbLayerCard);

    String addLayerCard(String cardType, String cardNum);
}
