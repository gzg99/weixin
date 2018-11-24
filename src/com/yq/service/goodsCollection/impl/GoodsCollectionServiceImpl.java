package com.yq.service.goodsCollection.impl;

import com.yq.dao.goodsCollection.JdbGoodsCollectionMapper;
import com.yq.entity.goodsCollection.JdbGoodsCollection;
import com.yq.service.goodsCollection.GoodsCollectionService;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/11/24.
 */
@Service
public class GoodsCollectionServiceImpl implements GoodsCollectionService{
    @Autowired
    JdbGoodsCollectionMapper jdbGoodsCollectionMapper;

    /**
    * @Description: 商品收藏
    * @Author: jkx
    * @Date: 2018/11/24 15:26
    */
    @Override
    public int insertOrUpdateCollection(String goodsId, String oppen_id, String collection) {
        int i = 0;
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        JdbGoodsCollection goodsCollection = new JdbGoodsCollection();
        goodsCollection.setId(UUIDUtils.getUUID());
        goodsCollection.setGoodsId(Integer.parseInt(goodsId));
        oppen_id = "000000";
        goodsCollection.setOppenId(oppen_id);
        goodsCollection.setType(collection);
        goodsCollection.setCreateTime(sf.format(new Date()));

        // 判断此商品此人是否已经收藏
        map.put("goodsId", goodsId);
        map.put("oppenId", oppen_id);
        JdbGoodsCollection jdbGoodsCollection = jdbGoodsCollectionMapper.selCollection(map);
        if(null == jdbGoodsCollection){
            i = jdbGoodsCollectionMapper.insert(goodsCollection);
        }else{
            goodsCollection.setId(jdbGoodsCollection.getId());
            i = jdbGoodsCollectionMapper.updateByPrimaryKey(goodsCollection);
        }
        return i;
    }
}
