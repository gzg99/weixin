package com.yq.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.yq.entity.Card;
import com.yq.entity.Goods;
import com.yq.service.CardService;
import com.yq.util.PageUtil;

import net.sf.json.JSONArray;

/**
 * 家居卡管理
 * */
@Controller
@RequestMapping("/")
public class CardCtrl {

	@Autowired
	private CardService cardService;
	Map<String, Object> map = new HashMap<String, Object>();
	
	@ResponseBody
	@RequestMapping(value = "main/addCardjsp.html")
	public ModelAndView addCardjsp() {
		return new ModelAndView("main/card/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "main/cardInsert.html")
	public String cardInsert(String cardName, String cardImg, Float cardPrice, String cardDetail,int type) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Card card = new Card();
		card.setCardName(cardName);
		card.setCardImg(cardImg);
		card.setCardPrice(cardPrice);
		card.setCardDetail(cardDetail);
		card.setType(type);
		card.setAddTime(sdf.format(new Date()));
		card.setUpdateTime(sdf.format(new Date()));
		return cardService.insert(card) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "main/cardUpdate.html")
	public String cardUpdate(Long cardId,String cardName, String cardImg, Float cardPrice, String cardDetail) {
		Card card = new Card();
		card.setCardId(cardId);
		card.setCardName(cardName);
		card.setCardImg(cardImg);
		card.setCardPrice(cardPrice);
		card.setCardDetail(cardDetail);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		card.setUpdateTime(sdf.format(new Date()));
		return cardService.update(card) + "";
	}
	
	/**
	 * 卡券列表
	 * */
	@RequestMapping(value = "/main/cardList.html")
	public ModelAndView list(@RequestParam(defaultValue = "1") Integer currentPage, HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			Card card = new Card();
			int total = cardService.count();
			PageUtil.pager(currentPage, 10, total, request);
			card.setPageSize(10);
			card.setCurrentNum(PageUtil.currentNum(currentPage, 10));
			List<Card> list = cardService.getAllCard(card);
			ModelAndView ml = new ModelAndView();
			ml.addObject("cards", list);
			ml.setViewName("main/card/list");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 卡券列表
	 * */
	@RequestMapping(value = "/page/cardAll.html")
	public ModelAndView listAll(@RequestParam(defaultValue = "1") Integer currentPage, HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			Card card = new Card();
			List<Card> list = cardService.getAllCard(card);
			ModelAndView ml = new ModelAndView();
			ml.addObject("cards", list);
			ml.setViewName("page/ajk_index");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 卡券列表
	 * */
	@ResponseBody
	@RequestMapping(value = "/page/cardAllList.html")
	public void cardAllList(@RequestParam(defaultValue = "1") Integer currentPage, HttpServletResponse response,HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			Card card = new Card();
			List<Card> list = cardService.getAllCard(card);
			ModelAndView ml = new ModelAndView();
			JSONArray jsonStrs = JSONArray.fromObject(list);
			response.setContentType("text/html;charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(jsonStrs.toString());
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 根据id查询详情
	 * */
	@RequestMapping(value = "/main/findCardById.html")
	public ModelAndView findCardById(Long id) throws Exception {
		try {
			Card card = cardService.getCardById(id);
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
	@RequestMapping(value = "/main/deleteCardById.html")
	public String deleteCardById(Long id) throws Exception {
		try {
			boolean b = cardService.delete(id);
			return b + "";
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping(value = "/page/ajkDetail.html")
	public ModelAndView ajkDetail(Long id) {
		Card card = cardService.getCardById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("card", card);
		if(card.getType()==1)
		{
			mv.setViewName("page/ajk_detail");
		}else if(card.getType()==2){
			mv.setViewName("page/ajk_detail");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/page/ajkBd.html")
	public ModelAndView ajkBd(Long id,int type) {
		Card card = cardService.getCardById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("card", card);
		if(type==1)
		{
			mv.setViewName("page/ajk_bd_de");
		}else if(type==2)
		{
			mv.setViewName("page/ajk_bd_lr");
		}
		
		return mv;
	}
	
}
