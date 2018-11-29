package com.yq.service.layerCard;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2018/11/29.
 */
public interface LayerCardService {

    String cardBinding(HttpServletRequest req);

    int getCount();
}
