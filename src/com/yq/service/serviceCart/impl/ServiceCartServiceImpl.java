package com.yq.service.serviceCart.impl;

import com.alibaba.fastjson.JSONObject;
import com.weixin.util.AdvancedUtil;
import com.yq.dao.WorkerDao;
import com.yq.dao.serviceCart.JdbServiceCartMapper;
import com.yq.dao.serviceEval.JdbServiceEvalMapper;
import com.yq.entity.Goods;
import com.yq.entity.TemplateData;
import com.yq.entity.Worker;
import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.entity.serviceEval.JdbServiceEval;
import com.yq.service.serviceCart.ServiceCartService;
import com.yq.util.UUIDUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServlet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/11/23.
 */
@Service
public class ServiceCartServiceImpl extends HttpServlet implements ServiceCartService{
    Logger logger = LoggerFactory.getLogger(ServiceCartServiceImpl.class);
    @Autowired
    JdbServiceCartMapper jdbServiceCartMapper;
    @Autowired
    JdbServiceEvalMapper jdbServiceEvalMapper;
    @Autowired
    WorkerDao workerDao;

    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
    * @Description: 将预约服务订单添加到购物车
    * @Author: jkx
    * @Date: 2018/11/23 15:23
    */
    @Override
    public JdbServiceCart addOrder(Goods goodsData, String oppendId, JdbServiceCart jdbServiceCart) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // 读取配置文件信息
        String appid = getInitParameter("appid");;
        String appsecret = getInitParameter("appsecret");

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
        // 添加订单服务到订单数据表
        jdbServiceCartMapper.addOrder(jdbServiceCart);
        logger.info("服务订单入库成功！");

        // 获取微信接口访问凭证
        String accessToken = AdvancedUtil.getAccessToken(appid, appsecret);
        logger.info("获取微信接口访问凭证成功！accessToken：{}"+accessToken);

        // 获取工匠信息（open_id）
        for (Worker worker : workerDao.selWorker()) {
            if(null != worker){
                // 组装发送模板信息
                String sendMessage = buildMessage(worker.getOpenId());
                // 发送订单消息给工匠
                AdvancedUtil.sendTemplateMessage(accessToken, "sendMessage");
            }
        }


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

    /**
    * @Description: 组装模板消息
    * @Author: jkx
    * @Date: 2018/12/4 15:43
    */
    public String buildMessage(String opendId){
        JSONObject json = new JSONObject();
        Map<String,TemplateData> param = new HashMap<>();
        param.put("first",new TemplateData("恭喜您注册成功！","#696969"));
        param.put("keyword1",new TemplateData("15618551533","#696969"));
        param.put("keyword2",new TemplateData("2017年05月06日","#696969"));
        param.put("remark",new TemplateData("祝投资愉快！","#696969"));

        json.put("touser", opendId);// 接收消息人的openId
        json.put("template_id", ""); // 模板消息id
        json.put("url", "");
        json.put("topcolor", "");
        json.put("data", param);// 发送的消息
        return json.toJSONString();
    }
}
