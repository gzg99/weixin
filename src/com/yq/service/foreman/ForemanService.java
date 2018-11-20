package com.yq.service.foreman;

import com.yq.entity.foreman.JdbForeman;

import java.util.List;

/**
 * Created by Administrator on 2018/11/19.
 */
public interface ForemanService {
    List<JdbForeman> selForemanList();

    JdbForeman selForeman(String id);
}
