package com.yq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.CategoryEnter;
import com.yq.service.CategoryEnterService;

@Controller
@RequestMapping("/")
public class categoryEnterCtrl {
	@Autowired
	private CategoryEnterService categoryEnterService;
	
	@RequestMapping(value = "/main/ctgBuildListById.html")
	@ResponseBody
	public ModelAndView ctgBuildListById(Long id) {
		CategoryEnter ctg = categoryEnterService.selectById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("category", ctg);
		mv.setViewName("/main/categoryBuild/info");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/categoryEnterAdd.html")
	public String addCategory(Long sellerId, String firstCategory, String secondCategory) {
		CategoryEnter category = new CategoryEnter();
		category.setSellerId(sellerId);
		category.setFirstCategory(firstCategory);
		category.setSecondCategory(secondCategory);
		return categoryEnterService.addCategory(category) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/categoryEnterDel.html")
	public String delCategory(Long id) {
		return categoryEnterService.delCategory(id) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/getCategoryEnterBySellerId.html")
	public List<CategoryEnter> getCategoryEnterBySellerId(Long sellerId) {
		return categoryEnterService.selectFirstBySellerId(sellerId);
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateCategoryEnter.html")
	public String updateCategoryEnter(Long id, Long sellerId, String firstCategory, String secondCategory) {
		//更新sellerId下的所有一级分类
		CategoryEnter category = new CategoryEnter();
		category.setFirstCategory(firstCategory); 
		category.setSellerId(sellerId);
		int i = categoryEnterService.updateCategoryEnter(category);
		CategoryEnter ctg = new CategoryEnter();
		ctg.setSecondCategory(secondCategory);
		ctg.setId(id);
		return categoryEnterService.updateCategoryEnterById(ctg) + "";
	}
}
