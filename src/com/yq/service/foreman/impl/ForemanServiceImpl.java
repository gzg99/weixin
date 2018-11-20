package com.yq.service.foreman.impl;

import com.yq.dao.foreman.JdbForemanMapper;
import com.yq.entity.foreman.JdbForeman;
import com.yq.service.foreman.ForemanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
