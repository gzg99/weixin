package com.yq.controller.layerCard;

import com.yq.dao.layerCard.JdbLayerCardMapper;
import com.yq.entity.layerCard.JdbLayerCard;
import com.yq.service.layerCard.LayerCardService;
import com.yq.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/11/29.
 * 安居卡下线帮定涂层卡
 */
@Controller
public class LayerCardController {

    @Autowired
    LayerCardService layerCardService;
    /**
    * @Description: 跳转安居卡线下绑定页面
    * @Author: jkx
    * @Date: 2018/11/29 16:16
    */
    @RequestMapping(value = "/page/layerCard/toLayerCardPage.html")
    @ResponseBody
    public ModelAndView toLayerCardPage(){
        ModelAndView mv = new ModelAndView("page/ajk_bd");
        return mv;
    }

    /**
    * @Description: 跳转涂层卡片添加页面（后台）
    * @Author: jkx
    * @Date: 2018/11/29 16:40
    */
    @RequestMapping(value = "/main/layerCard/toLayerCardMain.html")
    @ResponseBody
    public ModelAndView toLayerCardMain(int pageNo, int pageSize, HttpServletRequest request){
        ModelAndView mv = new ModelAndView("main/card/layerCardList");
        /*JdbLayerCard jdbLayerCard = new JdbLayerCard();

        int total = layerCardService.getCount();
        PageUtil.pager(pageNo, pageSize, total, request);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start", PageUtil.currentNum(pageNo, pageSize));
        map.put("pageSize", pageSize);
//        List<CardOrder> list = service.findAll(map);
        mv.addObject("cards", "");*/
        return mv;
    }

    /**
    * @Description: 卡片线下绑定
    * @Author: jkx
    * @Date: 2018/11/29 16:30
    */
    public String cardBinding(HttpServletRequest req, HttpServletResponse res){
        layerCardService.cardBinding(req);
        return null;
    }
}
