package com.yq.service.serviceCart;

import com.yq.entity.Goods;
import com.yq.entity.serviceCart.JdbServiceCart;

import java.util.List;


/**
 * Created by Administrator on 2018/11/23.
 */
public interface ServiceCartService {
    JdbServiceCart addOrder(Goods goodsData, String oppendId, JdbServiceCart jdbServiceCart);

    List<JdbServiceCart> selServiceList(String oppen_id);

    JdbServiceCart selServiceOrder(String id);

    int count(JdbServiceCart jdbServiceCart);

    List<JdbServiceCart> selServiceCartToWeb(JdbServiceCart jdbServiceCart);

    int delServiceOrder(String id);
}
