package com.yq.service.layerCard.impl;

import com.yq.entity.layerCard.JdbLayerCard;
import com.yq.service.layerCard.LayerCardService;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2018/11/29.
 */
@Service
public class LayerCardServiceImpl implements LayerCardService{

    /**
    * @Description: 卡片线下绑定
    * @Author: jkx
    * @Date: 2018/11/29 16:37
    */
    @Override
    public String cardBinding(HttpServletRequest req) {
        JdbLayerCard jdbLayerCard = new JdbLayerCard();

        return null;
    }

    /**
    * @Description: 分页查询数据总条数
    * @Author: jkx
    * @Date: 2018/11/29 16:53
    */
    @Override
    public int getCount() {
        return 0;
    }
}
