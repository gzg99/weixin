package com.yq.service.layerCard.impl;

import com.yq.dao.layerCard.JdbLayerCardMapper;
import com.yq.entity.layerCard.JdbLayerCard;
import com.yq.service.layerCard.LayerCardService;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/11/29.
 */
@Service
public class LayerCardServiceImpl implements LayerCardService{

    @Autowired
    JdbLayerCardMapper jdbLayerCardMapper;
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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
    public int getCount(JdbLayerCard jdbLayerCard) {
        int count = jdbLayerCardMapper.getCount(jdbLayerCard);
        return count;
    }

    /**
    * @Description: 分页查询涂层卡数据
    * @Author: jkx
    * @Date: 2018/11/29 17:32
    */
    @Override
    public List<JdbLayerCard> getLayerCardList(JdbLayerCard jdbLayerCard) {
        List<JdbLayerCard> layerCardList = jdbLayerCardMapper.getLayerCardList(jdbLayerCard);
        return layerCardList;
    }

    /**
    * @Description: 涂层卡数据提交添加
    * @Author: jkx
    * @Date: 2018/11/30 9:55
    */
    @Override
    public String addLayerCard(String cardType, String cardNum) {
        JdbLayerCard jdbLayerCard = new JdbLayerCard();
        jdbLayerCard.setId(UUIDUtils.getUUID());
        jdbLayerCard.setCardType(cardType);
        jdbLayerCard.setCardNum(cardNum);
        jdbLayerCard.setCreateTime(sf.format(new Date()));
        JdbLayerCard layerCardData = jdbLayerCardMapper.selLayerCardByCardNum(jdbLayerCard);
        if(null == layerCardData){
            int insert = jdbLayerCardMapper.insert(jdbLayerCard);
            return insert+"";
        }else{
            return "卡号 及卡片类型已经存在！";
        }
    }
}
