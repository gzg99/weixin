package com.yq.service.serviceCart.impl;

import com.yq.dao.foreman.JdbForemanMapper;
import com.yq.dao.serviceCart.JdbServiceCartMapper;
import com.yq.entity.Goods;
import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.service.serviceCart.ServiceCartService;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2018/11/23.
 */
@Service
public class ServiceCartServiceImpl implements ServiceCartService{
    @Autowired
    JdbServiceCartMapper jdbServiceCartMapper;

    /**
    * @Description: 将预约服务订单添加到购物车
    * @Author: jkx
    * @Date: 2018/11/23 15:23
    */
    @Override
    public void addOrder(Goods goodsData, String oppendId, JdbServiceCart jdbServiceCart) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        jdbServiceCart.setId(UUIDUtils.getUUID());
        jdbServiceCart.setGoodsId(goodsData.getGoods_id());
        jdbServiceCart.setOppenId(oppendId);
        jdbServiceCart.setGoodsName(goodsData.getGoods_name());
        jdbServiceCart.setGoodsImg(goodsData.getGoods_img());
        jdbServiceCart.setGoodsSpe(goodsData.getGoods_spe());
        jdbServiceCart.setGoodsPrice(goodsData.getGoods_price());
//        jdbServiceCart.setGoodsNum(Integer.parseInt(goodsData.getGoods_num()));
        jdbServiceCart.setType("1");// 默认等待接单
        jdbServiceCart.setCreateTime(sf.format(new Date()));

        jdbServiceCartMapper.addOrder(jdbServiceCart);
    }
}
