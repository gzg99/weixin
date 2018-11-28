package com.yq.controller.serviceCart;

import com.yq.entity.Address;
import com.yq.entity.Goods;
import com.yq.entity.Worker;
import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.service.AddressService;
import com.yq.service.GoodsService;
import com.yq.service.WorkerService;
import com.yq.service.serviceCart.ServiceCartService;
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
    @Autowired
    AddressService addressService;
    @Autowired
    WorkerService workerService;


    Map<String, Object> map = new HashMap<String, Object>();

    /**
    * @Description: 我的服务订单(手机端访问)
    * @Author: jkx
    * @Date: 2018/11/24 17:11
    */
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
     * @Description: 我的服务订单(后台访问)
     * @Author: jkx
     * @Date: 2018/11/24 17:11
     */
    @RequestMapping(value = "/main/serviceCart/selServiceCartToWeb.html")
    @ResponseBody
    public ModelAndView selServiceCartToWeb(@RequestParam(defaultValue = "1") Integer pageNo, @RequestParam(defaultValue = "10") Integer pageSize,
                                            @RequestParam(defaultValue = "") String start_time, @RequestParam(defaultValue = "") String end_time,
                                            @RequestParam(defaultValue = "") String type, @RequestParam(defaultValue = "") String goods_name,
                                            HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException{
        ModelAndView mv = new ModelAndView("main/order/serveList");

        start_time = URLDecoder.decode(start_time, "utf-8");
        end_time = URLDecoder.decode(end_time, "utf-8");
        goods_name = URLDecoder.decode(goods_name, "utf-8");

        JdbServiceCart jdbServiceCart = new JdbServiceCart();
        jdbServiceCart.setOppenId("");// TODO oppendId
        jdbServiceCart.setType(type);
        jdbServiceCart.setGoodsName(goods_name);
        jdbServiceCart.setStart_time(start_time);
        jdbServiceCart.setEnd_time(end_time);
        // 数据总条数
        int allCount = serviceCartService.count(jdbServiceCart);
        PageUtil.pager(pageNo, pageSize, allCount, request);
        jdbServiceCart.setPageSize(pageSize);
        jdbServiceCart.setCurrentNum(PageUtil.currentNum(pageNo, pageSize));
        // 服务全部订单
        List<JdbServiceCart> jdbServiceCarts = serviceCartService.selServiceCartToWeb(jdbServiceCart);

        mv.addObject("jdbServiceCarts", jdbServiceCarts);
        mv.addObject("type", type);
        mv.addObject("start_time", start_time);
        mv.addObject("end_time", end_time);
        mv.addObject("goods_name", goods_name);
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
    @RequestMapping(value = "/page/serviceCart/selServiceList.html")
    @ResponseBody
    public ModelAndView selServiceList(HttpSession session){
        ModelAndView mv = new ModelAndView("page/goods_collection_list");
//                String oppen_id = (String) session.getAttribute("oppen_id");
        String oppenId = "000000";
        List<Goods> goodses = goodsService.selServiceCollectionList(oppenId);
        mv.addObject("goodses", goodses);
        return mv;
    }

    /**
    * @Description: 删除订单（后台）
    * @Author: jkx
    * @Date: 2018/11/26 17:07
    */
    @RequestMapping(value = "/main/serviceCart/delServiceOrder.html")
    @ResponseBody
    public String delServiceOrder(String id){
        int i = serviceCartService.delServiceOrder(id);
        return i+"";
    }

    /**
    * @Description: 跳转服务订单支付页面
    * @Author: jkx
    * @Date: 2018/11/28 12:30
    */
    @RequestMapping(value = "/page/serviceCart/toServicePay.html")
    @ResponseBody
    public ModelAndView toServicePay(String id, String addrId){
        ModelAndView mv = new ModelAndView("page/goods_reserva_pay");
        // 服务地址信息
        Address address = addressService.selAddrBuId(addrId);
        // 服务订单信息
        JdbServiceCart serviceCartData = serviceCartService.selServiceOrder(id);
        // 根据商品信息查询工匠信息
        Worker worker = workerService.selWorkerByGoods(id);

        mv.addObject("serviceCartData", serviceCartData);
        mv.addObject("addressData", address);
        mv.addObject("workerData", worker);
        return mv;
    }

    /**
    * @Description: 服务完成，订单支付
    * @Author: jkx
    * @Date: 2018/11/28 11:42
    */
    @RequestMapping(value = "/page/serviceCart/serviceGoodsPayCommit.html")
    @ResponseBody
    public String serviceGoodsPayCommit(String id, String goodsTotal){
        int i = serviceCartService.serviceGoodsPayCommit(id, goodsTotal);
        return i+"";
    }
}
