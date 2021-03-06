package com.yq.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.CategoryEnter;
import com.yq.service.CategoryEnterService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/")
public class CategoryEnterCtrl {
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
	
	@RequestMapping(value = "/main/getSecondCategoryByFirst.html")
	@ResponseBody
	public void getSecondCategoryByFirst(String firstCategory, HttpServletResponse response,HttpSession session) {
		List<String> list = categoryEnterService.getSecondCategoryByFirst(firstCategory,(Long)session.getAttribute("id"));
		JSONArray jsonStrs = JSONArray.fromObject(list);
		 
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println(jsonStrs);
		try {
			response.getWriter().write(jsonStrs.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/main/ctgBuildAddjsp.html")
	public ModelAndView ctgBuildAddjsp() {
		return new ModelAndView("main/categoryBuild/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/categoryEnterAdd.html")
	public String addCategory(String firstCategory, String secondCategory,HttpSession session) {
		CategoryEnter category = new CategoryEnter();
		category.setSellerId((Long)session.getAttribute("id"));
		category.setFirstCategory(firstCategory);
		category.setSecondCategory(secondCategory);
		//查询分类名称是否重复
		List<CategoryEnter> list = categoryEnterService.getCategoryByRecord(category);
		if(list != null && list.size() > 0) {
			return 0+"";
		}
		return categoryEnterService.addCategory(category) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/categoryEnterDel.html")
	public String delCategory(Long id) {
		return categoryEnterService.delCategory(id) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateCategoryEnter.html")
	public String updateCategoryEnter(Long id, String firstCategory, String secondCategory) {
		//查询分类名称是否重复
		CategoryEnter category1 = new CategoryEnter();
		category1.setFirstCategory(firstCategory);
		category1.setSecondCategory(secondCategory);
		List<CategoryEnter> list = categoryEnterService.getCategoryByRecord(category1);
		if(list != null && list.size() > 0) {
			return 0+"";
		}
		//更新sellerId下的所有一级分类
		CategoryEnter category = new CategoryEnter();
		category.setFirstCategory(firstCategory); 
		categoryEnterService.updateCategoryEnter(category);
		CategoryEnter ctg = new CategoryEnter();
		ctg.setFirstCategory(firstCategory); 
		ctg.setSecondCategory(secondCategory);
		ctg.setId(id);
		return categoryEnterService.updateCategoryEnterById(ctg) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/categoryEnterList.html")
	public ModelAndView categoryEnterList(Long sellerId) {
		List<CategoryEnter> list = categoryEnterService.categoryEnterList(sellerId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("main/categoryBuild/list");
		return mv;
	}
	
	
}
