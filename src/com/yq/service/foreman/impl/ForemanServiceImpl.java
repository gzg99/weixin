package com.yq.service.foreman.impl;

import com.yq.dao.foreman.JdbForemanMapper;
import com.yq.entity.foreman.JdbForeman;
import com.yq.service.foreman.ForemanService;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/11/19.
 */
@Service
public class ForemanServiceImpl implements ForemanService{

    @Autowired
    JdbForemanMapper jdbForemanMapper;

    /**
    * @Description: 查询工长
    * @Author: jkx
    * @Date: 2018/11/19 16:59
    */
    @Override
    public List<JdbForeman> selForemanList() {
        List<JdbForeman> jdbForemenList = jdbForemanMapper.selForemanList();
        return jdbForemenList;
    }

    /**
    * @Description: 查询工长信息
    * @Author: jkx
    * @Date: 2018/11/20 11:24
    */
    @Override
    public JdbForeman selForeman(String id) {
        JdbForeman jdbForeman = jdbForemanMapper.selForeman(id);
        return jdbForeman;
    }

    /**
    * @Description: 工长注册
    * @Author: jkx
    * @Date: 2018/11/20 13:44
    */
    @Override
    public int insertForeman(JdbForeman jdbForeman) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        jdbForeman.setId(UUIDUtils.getUUID());
        jdbForeman.setCreateTime(sf.format(new Date()));
        jdbForeman.setPraise(0);
        int i = jdbForemanMapper.insertForeman(jdbForeman);
        return i;
    }

    /**
    * @Description: 工长点赞
    * @Author: jkx
    * @Date: 2018/11/22 10:32
    */
    @Override
    public int foremanPraise(String id) {
        int i = jdbForemanMapper.foremanPraise(id);
        return i;
    }
}
