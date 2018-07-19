package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;
import com.yq.service.GoodsBuildService;

/**
 * 建材类商家入驻商品ctrl
 * */
@Controller
@RequestMapping("/")
public class GoodsBuildCtrl {

	@Autowired
	private GoodsBuildService goodsBuildService;
	
	/**
	 * 添加商品
	 * */
	@ResponseBody
	@RequestMapping(value = "/page/goodsBuildAdd.html")
	public void goodssBuildAdd(JSONObject json) {
		Long firstCategory = json.getLong("firstCategory");
		Long secondCategory = json.getLong("secondCategory");
		Long sellerId = json.getLong("sellerId");
		String goodsName = json.getString("goodsName");
		String goodsBrand = json.getString("goodsBrand");
		String goodsColor = json.getString("goodsColor");
		String goodsDetail = json.getString("goodsDetail");
		String goodsImg = json.getString("goodsImg");
		String goodsMaterial = json.getString("goodsMaterial");
		Long goodsNum = json.getLong("goodsNum");
		String goodsSpe = json.getString("goodsSpe");
		GoodsBuild goods = new GoodsBuild();
		goods.setFirstCategory(firstCategory);
		goods.setSecondCategory(secondCategory);
		goods.setSellerId(sellerId);
		goods.setGoodsName(goodsName);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:MM:ss");
		goods.setAddTime(sdf.format(new Date()));
		goods.setGoodsBrand(goodsBrand);
		goods.setGoodsColor(goodsColor);
		goods.setGoodsDetail(goodsDetail);
		goods.setGoodsImg(goodsImg);
		goods.setGoodsMaterial(goodsMaterial);
		goods.setGoodsNum(goodsNum);
		goods.setGoodsSales(0L);
		goods.setGoodsSpe(goodsSpe);
		goodsBuildService.goodsBuildAdd(goods);
	}
	
	/**
	 * 条件查询
	 * */
	public List<GoodsBuild> searchGoodsInfoByCondition(@RequestBody GoodsBuildSearchVo goodsBuildSearchVo) {
		return goodsBuildService.getGoodsBuildByCondition(goodsBuildSearchVo);
	}
	
	
}
