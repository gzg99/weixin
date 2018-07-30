package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.CategoryEnter;
import com.yq.entity.Goods;
import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;
import com.yq.entity.OrderEval;
import com.yq.service.CategoryEnterService;
import com.yq.service.GoodsBuildService;
import com.yq.util.PageUtil;

/**
 * 建材类商家入驻商品ctrl
 * */
@Controller
@RequestMapping("/")
public class GoodsBuildCtrl {

	@Autowired
	private GoodsBuildService goodsBuildService;
	
	@Autowired
	private CategoryEnterService categoryEnterService;
	
	@RequestMapping(value = "/main/goodsBuildAddjsp.html")
	public ModelAndView goodsBuildAddjsp(Long sellerId) {
		ModelAndView ml = new ModelAndView();
		List<CategoryEnter> list = categoryEnterService.selectFirstBySellerId(1l);
		ml.addObject("category", list);
		ml.setViewName("main/goodsBuild/add");
		return ml;
	}
	
	/**
	 * 初始化查询商品列表
	 * */
	@RequestMapping(value = "/main/goodsBuildList.html")
	public ModelAndView goodsBuildList(int pageNo, int pageSize, ModelAndView mv, HttpServletRequest request) {
		GoodsBuildSearchVo search = new GoodsBuildSearchVo();
		search.setPageNo(pageNo);
		search.setPageSize(pageSize);
		int total = goodsBuildService.count(search);
		PageUtil.pager(pageNo, pageSize, total, request);
		search.setStart(PageUtil.currentNum(pageNo, pageSize));
		search.setOrderStr("add_time");
		List<GoodsBuild> list = goodsBuildService.getGoodsBuildByCondition(search);
		mv.addObject("goods", list);
		mv.setViewName("main/goodsBuild/list");
		return mv;
	}
	
	
	/**
	 * 添加商品
	 * */
	@ResponseBody
	@RequestMapping(value = "/main/goodsBuildAdd.html")
	public String goodssBuildAdd(GoodsBuild goods) {
		if(goods.getSellerId() == null) {
			return 0+"";
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:MM:ss");
		goods.setAddTime(sdf.format(new Date()));
		return goodsBuildService.goodsBuildAdd(goods) + "";
	}
	
	/**
	 * 条件查询
	 * */
	@ResponseBody
	@RequestMapping(value = "/main/searchGoodsInfoByCondition.html")
	public ModelAndView searchGoodsInfoByCondition(String goodsName, @RequestParam(defaultValue = "0")Long sellerId, 
			@RequestParam(defaultValue = "0")Long firstCategory, 
			@RequestParam(defaultValue = "0")Long secondCategory, 
			@RequestParam(defaultValue = "0d")Double highPrice, 
			@RequestParam(defaultValue = "0d")Double lowerPrice, 
			@RequestParam(defaultValue = "0")Long salesVolHight ,
			@RequestParam(defaultValue = "0")Long salesVolLow,
			@RequestParam(defaultValue = "1")Integer pageNo ,
			@RequestParam(defaultValue = "10")Integer pageSize,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		GoodsBuildSearchVo goodsBuildSearchVo = new GoodsBuildSearchVo();
		goodsBuildSearchVo.setGoodsName(goodsName);
		goodsBuildSearchVo.setSellerId(sellerId);
		goodsBuildSearchVo.setFirstCategory(firstCategory);
		goodsBuildSearchVo.setSecondCategory(secondCategory);
		goodsBuildSearchVo.setHighPrice(highPrice);
		goodsBuildSearchVo.setLowerPrice(lowerPrice);
		goodsBuildSearchVo.setSalesVolHight(salesVolHight);
		goodsBuildSearchVo.setSalesVolLow(salesVolLow);
		goodsBuildSearchVo.setPageNo(pageNo);
		goodsBuildSearchVo.setPageSize(pageSize);
		int total = goodsBuildService.count(goodsBuildSearchVo);
		PageUtil.pager(pageNo, pageSize, total, request);
		goodsBuildSearchVo.setStart(PageUtil.currentNum(pageNo, pageSize));
		goodsBuildSearchVo.setOrderStr("add_time");
		List<GoodsBuild> list = goodsBuildService.getGoodsBuildByCondition(goodsBuildSearchVo);
		mv.addObject("goods", list);
		if(goodsName != null) {
			mv.addObject("goodsName", goodsName);
		}
		if(sellerId != null && sellerId != 0) {
			mv.addObject("sellerId", sellerId);
		}
		if(firstCategory != null && firstCategory != 0) {
			mv.addObject("firstCategory", firstCategory);
		}
		if(secondCategory != null && secondCategory != 0) {
			mv.addObject("secondCategory", secondCategory);
		}
		if(highPrice != null && highPrice != 0) {
			mv.addObject("highPrice", highPrice);
		}
		if(lowerPrice != null && lowerPrice != 0) {
			mv.addObject("lowerPrice", lowerPrice);
		}
		if(salesVolHight != null && salesVolHight != 0) {
			mv.addObject("salesVolHight", salesVolHight);
		}
		if(salesVolLow != null && salesVolLow != 0) {
			mv.addObject("salesVolLow", salesVolLow);
		}
		mv.setViewName("main/goodsBuild/list");
		return mv;
	}
	
	/**
	 * 商品修改
	 * */
	@RequestMapping("main/goodsBuildUpdate.html")
	@ResponseBody
	public String updateGoodsInfo(GoodsBuild goods) {
		if(goods.getId() == null) {
			return 0 + "";
		}
		return goodsBuildService.updateGoodsInfo(goods) + "";
	}
	
	/**
	 * 根据id查询商品
	 * */
	@RequestMapping("main/getGoodsBuildById.html")
	@ResponseBody
	public ModelAndView getGoodsBuildById(Long id) {
		ModelAndView mv = new ModelAndView();
		GoodsBuild goods = goodsBuildService.getGoodsBuildById(id);
		mv.addObject("goods", goods);
		mv.setViewName("main/goodsBuild/info");
		return mv;
	}
	
	/**
	 * 根据商家id查询
	 * */
	@RequestMapping("page/getGoodsBuildListBySellerId.html")
	@ResponseBody
	public ModelAndView getGoodsBuildListBySellerId(Long sellerId) {
		sellerId = 1L;
		ModelAndView mv = new ModelAndView();
		List<CategoryEnter> list =  categoryEnterService.selectFirstBySellerId(sellerId);
		Map<String, List<String>> map = new HashMap<>();
		//组装成需要的格式
		for(CategoryEnter category: list) {
			if(map.containsKey(category.getFirstCategory())) {
				map.get(category.getFirstCategory()).add(category.getSecondCategory());
			} else {
				List<String> listChild = new ArrayList<>();
				listChild.add(category.getSecondCategory());
				map.put(category.getFirstCategory(), listChild);
			}
		}
		mv.addObject("map", map);
		//默认查询第一个分类
		String firstCategory = list.get(0).getFirstCategory();
		String secondCategory = list.get(0).getSecondCategory();
		List<GoodsBuild> goodsList = goodsBuildService.getGoodsBuildListBySellerId(sellerId, firstCategory, secondCategory);
		mv.addObject("list", goodsList);
		mv.addObject("secondCategory", secondCategory);
		mv.setViewName("page/dpsy");
		return mv;
	}
	
	/**
	 * 根据商品id查询商品详情
	 * 
	 * @param goods_id
	 * @return
	 */
	@RequestMapping(value = "/page/goodsBuildListById.html")
	public ModelAndView goodsBuildListById(Long id) {
		GoodsBuild goods = goodsBuildService.getGoodsBuildById(id);
		ModelAndView ml = new ModelAndView();
		ml.addObject("goods", goods);
		ml.addObject("goods_id", id);
//		List<OrderEval> evalList = orderEvalService.getAllEvalByGoodId(goods_id);
//		ml.addObject("eval", evalList);
//		//全部评价
//		ml.addObject("allEvalCount", evalList.size());
//		//好评
//		int goodEvalCount = orderEvalService.getGoodCountByGoodId(goods_id);
//		ml.addObject("goodEvalCount", goodEvalCount);
//		//差评
//		int badEvalCount = orderEvalService.getBadCountByGoodId(goods_id);
//		ml.addObject("badEvalCount", badEvalCount);
//		//中评
//		ml.addObject("neutralEvalCount", evalList.size() - goodEvalCount - badEvalCount);
		ml.setViewName("page/goodsBuild-info");
		return ml;
	}
	
}
