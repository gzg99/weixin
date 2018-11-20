package com.yq.service.foreman;

import com.yq.entity.foreman.JdbForeman;
import com.yq.entity.jurisdiction.role.JdbRole;

import java.util.List;

/**
 * Created by Administrator on 2018/11/19.
 */
public interface ForemanService {
    List<JdbForeman> selForemanList();

    JdbForeman selForeman(String id);

    int insertForeman(JdbForeman jdbForeman);
}
