package com.yq.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Category;
import com.yq.entity.Goods;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;

@Controller
@RequestMapping("/")
public class CategoryCtrl {
	@Autowired
	private CategoryService categoryService;
	private Category category= new Category();
	
	@Autowired
	private  GoodsService  goodsService;
	private Goods goods= new Goods();
	
	Map<String, Object> map = new HashMap<String, Object>();
	
	
	@RequestMapping(value = "/main/ctgAddjsp.html")
	public ModelAndView addjsp() {
		return new ModelAndView("main/category/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/ctgInsert.html")
	public String insert(String ctg_name, String ctg_img, Integer status,
			Integer sort) {
			map.put("ctg_name", ctg_name);
			map.put("ctg_img", ctg_img);
			map.put("status", 1);
			map.put("sort", 0);
			return categoryService.insert(map)+"";
	}
	
	/**
	 * 更新操作
	 * */
	@ResponseBody
	@RequestMapping(value = "/main/ctgUpdate.html")
	public Object update(String ctg_name,String ctg_img,Integer ctg_id) {
		map.put("ctg_name", ctg_name);
		map.put("ctg_id", ctg_id);
		map.put("ctg_img", ctg_img);
		return categoryService.update(map)+"";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/ctgUpstatus.html")
	public Object upstatus(Integer ctg_id,Integer status) {
		map.put("status", status);
		map.put("ctg_id", ctg_id);
		return categoryService.upstatus(map)+"";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/ctgSort.html")
	public Object sort(Integer ctg_id,Integer sort) {
		map.put("sort", sort);
		map.put("ctg_id", ctg_id);
		return categoryService.sort(map)+"";
	}
	
	/**
	 * 商品管理 -> 分类查看
	 * */
	@RequestMapping(value = "/main/ctgList.html")
	public ModelAndView list(Integer status) {
		category.setStatus(status);
		List<Category> list = categoryService.list(category);
		ModelAndView ml = new ModelAndView();
		ml.addObject("list", list);
		ml.setViewName("main/category/list");
		return ml;
	}
	
	/**
	 * 编辑操作
	 * */
	@RequestMapping(value = "/main/ctgListById.html")
	public ModelAndView listById(Integer ctg_id) {
		category.setCtg_id(ctg_id);
		List<Category> list = categoryService.listById(category);
		ModelAndView ml = new ModelAndView();
		ml.addObject("list", list);
		ml.setViewName("main/category/info");
		return ml;
	}
	
	@RequestMapping(value = "/page/category.html")
	public ModelAndView ctgList(@RequestParam(defaultValue="0") Integer ctg_id) {
		category.setStatus(1);
		List<Category> ctgList = categoryService.list(category);
		List<Goods> goodsList = new ArrayList<Goods>();
		if(ctgList.size()>0){
			goods.setStatus(1);
		if(ctg_id==0){
			ctg_id=ctgList.get(0).getCtg_id();
		}
		goods.setCtg_id(ctg_id);
		goods.setType(1);
			goodsList =  goodsService.list(goods);
		}
		ModelAndView ml = new ModelAndView();
		ml.addObject("ctg_id", ctg_id);
		ml.addObject("ctgList", ctgList);
		ml.addObject("goodsList", goodsList);
		ml.setViewName("page/category");
		return ml;
	}
	
}
