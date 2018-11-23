package com.yq.service.serviceCart;

import com.yq.entity.Goods;
import com.yq.entity.serviceCart.JdbServiceCart;

/**
 * Created by Administrator on 2018/11/23.
 */
public interface ServiceCartService {
    void addOrder(Goods goodsData, String oppendId, JdbServiceCart jdbServiceCart);
}
