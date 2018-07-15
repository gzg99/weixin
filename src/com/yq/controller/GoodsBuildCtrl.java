package com.yq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.GoodsBuild;
import com.yq.service.GoodsBuildService;

/**
 * 建材类商家入驻商品ctrl
 * */
@Controller
@RequestMapping("/")
public class GoodsBuildCtrl {

	@Autowired
	private GoodsBuildService goodsBuildService;
	
	@ResponseBody
	@RequestMapping(value = "/page/goodsBuildAdd.html")
	public void goodssBuildAdd(Long categoryId, Long sellerId) {
		GoodsBuild goods = new GoodsBuild();
		
	}
	
}
