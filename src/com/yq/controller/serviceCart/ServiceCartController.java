package com.yq.controller.serviceCart;

import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.service.GoodsService;
import com.yq.service.serviceCart.ServiceCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/11/23.
 * 预约服务订单
 */
@Controller
public class ServiceCartController {
    @Autowired
    ServiceCartService serviceCartService;
    @Autowired
    GoodsService goodsService;

    Map<String, Object> map = new HashMap<String, Object>();
    
    @RequestMapping(value = "/page/serviceCart/selServiceCart.html")
    @ResponseBody
    public ModelAndView selServiceCart(HttpSession session){
        ModelAndView mv = new ModelAndView("page/goods_reserva_list");
//        String oppen_id = (String) session.getAttribute("oppen_id");
        String oppen_id = "000000";

        List<JdbServiceCart> serviceCartList = serviceCartService.selServiceList(oppen_id);
        mv.addObject("serviceCartList", serviceCartList);
        return mv;
    }

    /**
    * @Description: 服务订单查询
    * @Author: jkx
    * @Date: 2018/11/24 13:41
    */
    @RequestMapping(value = "/page/serviceCart/selServiceOrder.html")
    @ResponseBody
    public ModelAndView selServiceOrder(String id){
        ModelAndView mv = new ModelAndView("page/goods_reserva");
        JdbServiceCart serviceCartData = serviceCartService.selServiceOrder(id);
        mv.addObject("serviceCartData", serviceCartData);
        return mv;
    }

    /**
    * @Description: 服务订单收藏
    * @Author: jkx
    * @Date: 2018/11/24 14:14
    */
    @RequestMapping(value = "")
    @ResponseBody
    public ModelAndView selServiceList(HttpSession session){
        ModelAndView mv = new ModelAndView("");
//                String oppen_id = (String) session.getAttribute("oppen_id");
        String oppen_id = "000000";
        map.put("oppen_id", oppen_id);
//        goodsService.goodsCollectionList(map);

        return mv;
    }
}
