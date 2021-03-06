package com.yq.controller;

import com.yq.entity.CategoryEnter;
import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;
import com.yq.service.CategoryEnterService;
import com.yq.service.GoodsBuildService;
import com.yq.service.evaluate.EvaluateService;
import com.yq.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;


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
	
	@Autowired
	EvaluateService evaluateService;
	
	@RequestMapping(value = "/main/goodsBuildAddjsp.html")
	public ModelAndView goodsBuildAddjsp(HttpSession session) {
		ModelAndView ml = new ModelAndView();
		List<CategoryEnter> list = categoryEnterService.selectFirstBySellerId((Long)session.getAttribute("id"));
		ml.addObject("category", list);
		ml.setViewName("main/goodsBuild/add");
		return ml;
	}
	
	/**
	 * 初始化查询商品列表
	 * */
	@RequestMapping(value = "/main/goodsBuildList.html")
	public ModelAndView goodsBuildList(Long sellerId, int pageNo, int pageSize, ModelAndView mv, HttpServletRequest request) {
		GoodsBuildSearchVo search = new GoodsBuildSearchVo();
		search.setPageNo(pageNo);
		search.setPageSize(pageSize);
		search.setSellerId(sellerId);
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
	public String goodsBuildAdd(String goodsName,String goodsSpe, String goodsImg, 
			@RequestParam(defaultValue="0")float goodsPrice, @RequestParam(defaultValue="0")float goodsOldPrice,
			String goodsDetail, String firstCategory, String secondCategory, 
			@RequestParam(defaultValue="0")Long goodsNum,
			String goodsBrand, String goodsMaterial, String goodsColor, HttpSession session) {
		GoodsBuild goods = new GoodsBuild();
		goods.setGoodsName(goodsName);
		goods.setGoodsSpe(goodsSpe);
		goods.setGoodsImg(goodsImg);
		goods.setGoodsPrice(goodsPrice);
		goods.setGoodsOldPrice(goodsOldPrice);
		goods.setGoodsDetail(goodsDetail);
		goods.setFirstCategory(firstCategory);
		goods.setSecondCategory(secondCategory);
		goods.setGoodsNum(goodsNum);
		goods.setGoodsBrand(goodsBrand);
		goods.setGoodsMaterial(goodsMaterial);
		goods.setGoodsColor(goodsColor);
		goods.setSellerId((Long)session.getAttribute("id"));
		if(goods.getSellerId() == null) {
			return 0+"";
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		goods.setAddTime(sdf.format(new Date()));
		goods.setType(1);
		goods.setGoodsSales(0L);
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
	public ModelAndView getGoodsBuildById(Long id, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<CategoryEnter> list = categoryEnterService.selectFirstBySellerId((Long)session.getAttribute("id"));
		mv.addObject("category", list);
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
		if(list.size()>0) {
			String firstCategory = list.get(0).getFirstCategory();
			String secondCategory = list.get(0).getSecondCategory();
			List<GoodsBuild> goodsList = goodsBuildService.getGoodsBuildListBySellerId(sellerId, firstCategory, secondCategory);
			mv.addObject("list", goodsList);
			mv.addObject("secondCategory", secondCategory);
		}
		mv.addObject("sellerId", sellerId);
		mv.setViewName("page/dpsy");
		return mv;
	}
	
	/**
	 * 根据商家id，一级目录及二级目录查询
	 * */
	@RequestMapping("page/getGoodsBuildListByCon.html")
	@ResponseBody
	public ModelAndView getGoodsBuildListByCon(Long sellerId, String firstCategory, String secondCategory) {
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
		List<GoodsBuild> goodsList = goodsBuildService.getGoodsBuildListBySellerId(sellerId, firstCategory, secondCategory);
		mv.addObject("list", goodsList);
		mv.addObject("secondCategory", secondCategory);
		mv.addObject("sellerId", sellerId);
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
		ml.addObject("id", id);
		Map<String,Object> evalList = evaluateService.showEvaluate(id+"");
		ml.addObject("eval", evalList);
		//全部评价
		ml.addObject("allEvalCount", evalList.size());
		ml.setViewName("page/goodsBuild-info");
		return ml;
	}
	
	
	
}
