package com.yq.service.serviceCart.impl;

import com.yq.dao.serviceCart.JdbServiceCartMapper;
import com.yq.dao.serviceEval.JdbServiceEvalMapper;
import com.yq.entity.Goods;
import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.entity.serviceEval.JdbServiceEval;
import com.yq.service.serviceCart.ServiceCartService;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/11/23.
 */
@Service
public class ServiceCartServiceImpl implements ServiceCartService{
    @Autowired
    JdbServiceCartMapper jdbServiceCartMapper;
    @Autowired
    JdbServiceEvalMapper jdbServiceEvalMapper;
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
    * @Description: 将预约服务订单添加到购物车
    * @Author: jkx
    * @Date: 2018/11/23 15:23
    */
    @Override
    public JdbServiceCart addOrder(Goods goodsData, String oppendId, JdbServiceCart jdbServiceCart) {
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
        return jdbServiceCart;
    }

    /**
    * @Description:
    * @Author: 根据用户公众号ID查询服务订单
    * @Date: 2018/11/24 10:59
    */
    @Override
    public List<JdbServiceCart> selServiceList(String oppen_id) {
        List<JdbServiceCart> jdbServiceCarts = jdbServiceCartMapper.selServiceList(oppen_id);
        return jdbServiceCarts;
    }

    /**
    * @Description: 服务订单查询
    * @Author: jkx
    * @Date: 2018/11/24 13:52
    */
    @Override
    public JdbServiceCart selServiceOrder(String id) {
        JdbServiceCart jdbServiceCart = jdbServiceCartMapper.selectByPrimaryKey(id);
        return jdbServiceCart;
    }

    /**
    * @Description: 分页查询，查询数据总条数
    * @Author: jkx
    * @Date: 2018/11/26 14:18
    */
    @Override
    public int count(JdbServiceCart jdbServiceCart) {
        int count = jdbServiceCartMapper.count(jdbServiceCart);
        return count;
    }

    /**
    * @Description: 分页查询所有服务订单
    * @Author: jkx
    * @Date: 2018/11/26 14:34
    */
    @Override
    public List<JdbServiceCart> selServiceCartToWeb(JdbServiceCart jdbServiceCart) {
        List<JdbServiceCart> jdbServiceCarts = jdbServiceCartMapper.selServiceCartToWeb(jdbServiceCart);
        return jdbServiceCarts;
    }

    /**
    * @Description: 删除订单（后台）
    * @Author: jkx
    * @Date: 2018/11/26 17:09
    */
    @Override
    public int delServiceOrder(String id) {
        int i = jdbServiceCartMapper.deleteByPrimaryKey(id);
        return i;
    }

    /**
    * @Description: 根据主键id更新订单数据状态
    * @Author: jkx
    * @Date: 2018/11/27 16:12
    */
    @Override
    public int updateTypeById(String id) {
        JdbServiceCart jdbServiceCart = new JdbServiceCart();
        jdbServiceCart.setId(id);
        jdbServiceCart.setType("3");
        jdbServiceCart.setUpdateTime(sf.format(new Date()));
        int i = jdbServiceCartMapper.updateServiceCartById(jdbServiceCart);
        return i;
    }

    /**
    * @Description: 服务订单支付金额提交
    * @Author: jkx
    * @Date: 2018/11/28 15:11
    */
    @Override
    public int serviceGoodsPayCommit(String id, String goodsTotal) {
        JdbServiceCart jdbServiceCart = new JdbServiceCart();
        jdbServiceCart.setId(id);
        jdbServiceCart.setType("3");// 将服务订单状态改为“已完成”
        jdbServiceCart.setGoodsTotal(Float.parseFloat(goodsTotal));
        jdbServiceCart.setUpdateTime(sf.format(new Date()));
        int i = jdbServiceCartMapper.updateServiceCartById(jdbServiceCart);
        return i;
    }

    /**
    * @Description: 服务订单评价
    * @Author: jkx
    * @Date: 2018/11/28 15:39
    */
    @Override
    public int serviceGoodsEvaluation(String id, String score) {
        JdbServiceEval jdbServiceEval = new JdbServiceEval();
        jdbServiceEval.setId(UUIDUtils.getUUID());
        jdbServiceEval.setOppenId(""); //TODO oppen_id
        jdbServiceEval.setContent("");
        jdbServiceEval.setScore(score);
        jdbServiceEval.setServiceGoodsId(id);
        jdbServiceEval.setCreatreTime(sf.format(new Date()));
        int i = jdbServiceEvalMapper.insert(jdbServiceEval);
        return i;
    }
}
