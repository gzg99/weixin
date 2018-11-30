package com.yq.controller.layerCard;

import com.yq.entity.layerCard.JdbLayerCard;
import com.yq.service.layerCard.LayerCardService;
import com.yq.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

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
    public ModelAndView toLayerCardMain(@RequestParam(defaultValue = "1") Integer pageNo, @RequestParam(defaultValue = "10") Integer pageSize,
                                        @RequestParam(defaultValue = "") String start_time, @RequestParam(defaultValue = "") String end_time,
                                        HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
        ModelAndView mv = new ModelAndView("main/card/layerCardList");
        start_time = URLDecoder.decode(start_time, "utf-8");
        end_time = URLDecoder.decode(end_time, "utf-8");

        JdbLayerCard jdbLayerCard = new JdbLayerCard();
        jdbLayerCard.setStart_time(start_time);
        jdbLayerCard.setEnd_time(end_time);

        // 查询涂层卡数据总条数
        int total = layerCardService.getCount(jdbLayerCard);
        PageUtil.pager(pageNo, pageSize, total, request);

        jdbLayerCard.setPageSize(pageSize);
        jdbLayerCard.setCurrentNum(PageUtil.currentNum(pageNo, pageSize));
        // 查询涂层卡数据
        List<JdbLayerCard> layerCardList = layerCardService.getLayerCardList(jdbLayerCard);

        mv.addObject("layerCardList", layerCardList);
        mv.addObject("start_time", start_time);
        mv.addObject("end_time", end_time);
        return mv;
    }

    /**
    * @Description: 跳转涂层卡数据添加页面（后台）
    * @Author: jkx
    * @Date: 2018/11/30 9:30
    */
    @RequestMapping(value = "main/layerCard/toAddLayerCard.html")
    @ResponseBody
    public ModelAndView toAddLayerCard() {
        return new ModelAndView("main/card/layerCardAdd");
    }

    /**
    * @Description: 涂层卡数据提交添加
    * @Author: jkx
    * @Date: 2018/11/30 9:50
    */
    @RequestMapping(value = "main/layerCard/addLayerCard.html")
    @ResponseBody
    public String addLayerCard(String cardType, String cardNum){
        String str = layerCardService.addLayerCard(cardType, cardNum);
        return str;
    }

    /**
    * @Description: 卡片线下绑定
    * @Author: jkx
    * @Date: 2018/11/29 16:30
    */
    @RequestMapping(value = "/page/layerCard/cardBinding.html")
    @ResponseBody
    public String cardBinding(String cardType, String cardNum, String userPhone, String userAddr, String code, HttpSession session){
        String s = layerCardService.cardBinding(cardType, cardNum, userPhone, userAddr, code, session);
        return s;
    }
}
