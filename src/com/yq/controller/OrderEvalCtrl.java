package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Goods;
import com.yq.entity.OrderEval;
import com.yq.service.GoodsService;
import com.yq.service.OrderEvalService;
import com.yq.util.StringUtil;

@Controller
@RequestMapping("/")
public class OrderEvalCtrl extends StringUtil {
	
	@Autowired
	private OrderEvalService orderEvalService;
	
	@Autowired
	private GoodsService goodsService;

	@RequestMapping(value="eval/insert.html")
	public void insertEval(HttpSession session, Long goodId, String content, int score) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		OrderEval eval = new OrderEval();
		eval.setAdd_time(format.format(new Date()));
		eval.setContent(content);
		eval.setGood_id(goodId);
		eval.setScore(score);
		eval.setOpen_id(getOppen_id(session));
		orderEvalService.insertEval(eval);
	}
	
	@RequestMapping(value="getListByGoodIdOpenId.html")
	public ModelAndView getListByGoodIdOpenId(Long goodId, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		map.put("goodId", goodId);
		map.put("openId", getOppen_id(session));
		List<OrderEval> list = orderEvalService.getAllEvalByGoodIdOpenId(map);
		Goods good = new Goods();
		good.setGoods_id(goodId.intValue());
		List<Goods> goodList = goodsService.list(good);
		ModelAndView mv = new ModelAndView();
		mv.addObject("goodList", goodList);
		mv.addObject("orderList", list);
		mv.setViewName("order-eval");
		return mv;
	}
}
 