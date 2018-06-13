package com.yq.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Card;
import com.yq.entity.CardOrder;
import com.yq.entity.Goods;
import com.yq.entity.Order;
import com.yq.service.CardOrderService;
import com.yq.util.PageUtil;

/**
 * 家居卡管理
 * */
@Controller
@RequestMapping("/")
public class CardOrderCtrl {

	@Autowired
	private CardOrderService service;
	
	@ResponseBody
	@RequestMapping(value = "main/addCardOrderjsp.html")
	public ModelAndView addCardOrderjsp() {
		return new ModelAndView("main/card/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "main/cardOrderInsert.html")
	public String cardInsert(String cardName, Long userNumber, String cardDetail) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		CardOrder card = new CardOrder();
		card.setCardName(cardName);
		card.setAddTime(sdf.format(new Date()));
		card.setUserPhone(userNumber);
		card.setUpdateTime(sdf.format(new Date()));
		return service.insert(card) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "main/cardOrderUpdate.html")
	public String cardOrderUpdate(Long cardId,String cardName, String cardImg, Float cardPrice, String cardDetail) {
		CardOrder card = new CardOrder();
		card.setCardName(cardName);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		card.setUpdateTime(sdf.format(new Date()));
		return service.update(card) + "";
	}
	
	
	/**
	 * 根据id查询详情
	 * */
	@RequestMapping(value = "/main/findCardOrderById.html")
	public ModelAndView findCardOrderById(Long id) throws Exception {
		try {
			CardOrder card = service.findById(id);
			ModelAndView ml = new ModelAndView();
			ml.addObject("card", card);
			ml.setViewName("main/card/info");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 删除卡券
	 * */
	@RequestMapping(value = "/main/deleteCardOrderById.html")
	public String deleteCardOrderById(Long id) throws Exception {
		try {
			boolean b = service.delete(id);
			return b + "";
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
