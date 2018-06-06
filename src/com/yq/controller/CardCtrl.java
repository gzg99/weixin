package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.Card;
import com.yq.service.CardService;

/**
 * 家居卡管理
 * */
@Controller
@RequestMapping("/card")
public class CardCtrl {

	@Autowired
	private CardService cardService;
	
	@ResponseBody
	@RequestMapping(value = "/cardtInsert.html")
	public void cardInsert(@RequestBody Card card) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		card.setAddTime(sdf.format(new Date()));
		card.setUpdateTime(sdf.format(new Date()));
		cardService.insert(card);
	}
	
	@ResponseBody
	@RequestMapping(value = "/cardtUpdate.html")
	public void cardUpdate(@RequestBody Card card) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		card.setUpdateTime(sdf.format(new Date()));
		cardService.update(card);
	}
	
	
	
}
