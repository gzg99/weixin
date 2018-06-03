package com.yq.controller;

import com.yq.entity.RepairOrder;
import com.yq.service.RepairOrderService;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping({"/"})
public class RepairOrderCtrl extends StringUtil
{
  Logger logger = LoggerFactory.getLogger(RepairOrderCtrl.class);

  @Autowired
  private RepairOrderService repairOrderService;

  @RequestMapping({"main/repairOrderList.html"})
  public ModelAndView repairOrderList(@RequestParam(defaultValue="1") Integer currentPage, @RequestParam(defaultValue="") String start_time, @RequestParam(defaultValue="") String end_time, @RequestParam(defaultValue="") String status, HttpServletRequest request)
  {
    try {
      start_time = URLDecoder.decode(start_time, "utf-8");
      end_time = URLDecoder.decode(end_time, "utf-8");
      status = URLDecoder.decode(status, "utf-8");
      RepairOrder order = new RepairOrder();
      order.setStart_time(start_time);
      order.setEnd_time(end_time);
      order.setStatus(status);
      int total = this.repairOrderService.count(order);
      PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
      order.setPageSize(this.pagesize_1.intValue());
      order.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
      List<RepairOrder> list = this.repairOrderService.list(order);
      ModelAndView ml = new ModelAndView();
      ml.addObject("data", list);
      ml.setViewName("main/order/repairList");
      return ml;
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  @RequestMapping({"page/insert.html"})
  @ResponseBody
  public String insert(RepairOrder repairOrder) {
    try {
      if ((repairOrder.getOrderTime() == null) || ("".equals(repairOrder.getOrderTime()))) {
        return "请输入时间";
      }
      if ((repairOrder.getUserAddr() == null) || ("".equals(repairOrder.getUserAddr()))) {
        return "请输入地址";
      }
      if ((repairOrder.getUserHouseNum() == null) || ("".equals(repairOrder.getUserHouseNum()))) {
        return "请输入门牌号";
      }
      if ((repairOrder.getUserName() == null) || ("".equals(repairOrder.getUserName()))) {
        return "请输入姓名";
      }
      if ((repairOrder.getUserTel() == null) || ("".equals(repairOrder.getUserTel()))) {
        return "请输入手机号";
      }
      repairOrder.setStatus("未完成");
      int i = this.repairOrderService.insert(repairOrder);
      if (i == 1) {
        return "成功";
      }
      return "提交失败，请联系客服或稍后重试"; } catch (Exception e) {
    }
    return "提交异常，请联系客服或稍后重试";
  }
  @ResponseBody
  @RequestMapping({"/main/repairOrderUpstatus.html"})
  public String upstatus(Integer id, String status) {
    try {
      status = URLDecoder.decode(status, "UTF-8");
      Map<String, Object> map = new HashMap<>();
      map.put("id", id);
      map.put("status", status);
      int rs = this.repairOrderService.upstatus(map);
      return rs + ""; 
      } catch (Exception e) {
    
      }
    return "0";
  }
  @ResponseBody
  @RequestMapping({"/main/deleteRepairOrder.html"})
  public String deleteRepairOrder(Integer id) {
    try {
      int rs = this.repairOrderService.delete(id);
      return rs + ""; 
      } catch (Exception e) {
    	  e.printStackTrace();
    }
    return "0";
  }
}