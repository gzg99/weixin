package com.yq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.Category;
import com.yq.entity.CategoryEnter;
import com.yq.entity.Goods;
import com.yq.service.CategoryEnterService;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;

@Controller
@RequestMapping("/")
public class categoryEnterCtrl {
	@Autowired
	private CategoryEnterService categoryEnterService;
	
	@ResponseBody
	@RequestMapping(value = "/page/categoryEnterAdd.html")
	public void addCategory(String name, int type, Long sellerId) {
		CategoryEnter category = new CategoryEnter();
		categoryEnterService.addCategory(category);
	}
	
	@ResponseBody
	@RequestMapping(value = "/page/categoryEnterDel.html")
	public void delCategory(Long id) {
		categoryEnterService.delCategory(id);
	}
	
	@ResponseBody
	@RequestMapping(value = "/page/getCategoryEnterBySellerId.html")
	public List<CategoryEnter> getCategoryEnterBySellerId(Long sellerId) {
		return categoryEnterService.selectFirstBySellerId(sellerId);
	}
}
