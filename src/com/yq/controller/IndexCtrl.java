package com.yq.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Ad;
import com.yq.entity.Banner;
import com.yq.entity.Cart;
import com.yq.entity.Category;
import com.yq.entity.Goods;
import com.yq.entity.NewsFlash;
import com.yq.service.AdService;
import com.yq.service.BannerService;
import com.yq.service.CartService;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;
import com.yq.service.NewsFlashService;
import com.yq.util.StringUtil;

@Controller
@RequestMapping("/")
public class IndexCtrl extends StringUtil{
	
	@Autowired
	private  CartService  cartService;
	private Cart cart= new Cart();
	@Autowired
	private  GoodsService  goodsService;
	private Goods goods= new Goods();
	
	@Autowired
	private BannerService bannerService;
	private Banner banner= new Banner();
	
	@Autowired
	private CategoryService categoryService;
	private Category category= new Category();
	
	@Autowired
	private NewsFlashService newsFlashService;
	
	@Autowired
	private AdService adService;
	
	Map<String, Object> map = new HashMap<String, Object>();
	
	/**
	 * 后台登录
	 * */
	@RequestMapping(value="/main/main.html")
	public ModelAndView mainindex(){
		return new ModelAndView("main/index");
	}
	
	/**
	 * 商城展示页
	 * */
	@RequestMapping(value="/page/index.html")
	public ModelAndView index(HttpSession session){
		ModelAndView ml = new ModelAndView();
		goods.setType(1);
		goods.setStatus(1);
		
		banner.setType(1);
		banner.setStatus(1);
		
		goods.setIs_recommend(1);
		List<Banner> banList = bannerService.list(banner);//轮动图片
		for(Banner ban: banList) {
			if(ban.getUrl() != null) {
				ban.setBan_img(ban.getBan_img().replace("http://i.365jdb.cn", "http://localhost:8080/weixin"));
			}
		}
		banner.setType(2);
		List<Banner> advList = bannerService.list(banner);//轮动图片
		for(Banner ban: advList) {
			if(ban.getUrl() != null) {
				ban.setBan_img(ban.getBan_img().replace("http://i.365jdb.cn", "http://localhost:8080/weixin"));
			}
		}
		//获取轮播广告
		List<Ad> adList = adService.seleteByTime(new Date(),1);
		
		//家滴快报
		List<NewsFlash> newsList = newsFlashService.getList(1);
		
		
		goods.setCtg_id(0);
		List<Goods> hotGoodsList = goodsService.list(goods); //本周推荐商品
		for(Goods good: hotGoodsList) {
			if(good.getGoods_img() != null) {
				good.setGoods_img(good.getGoods_img().replace("http://i.365jdb.cn", "http://localhost:8080/weixin"));
			}
		}
		category.setStatus(1);
		List<Category> ctgList = categoryService.list(category); //1分类
		
		for(int i =0; i<ctgList.size(); i++){
			goods.setIs_recommend(0);
			goods.setCtg_id(ctgList.get(i).getCtg_id());
			List<Goods> goodsList  =  goodsService.list(goods);
			map.put("goodsList"+i, goodsList);
		
		}
		ml.addObject("map",map);
		ml.addObject("newsList", newsList);
		ml.addObject("ctgList",ctgList);
		ml.addObject("banList",banList);
		ml.addObject("advList",advList);
		ml.addObject("hotGoodsList",hotGoodsList);
		ml.addObject("adList", adList);
		String oppen_id=getOppen_id(session);
		cart.setOppen_id(oppen_id);
		int cart_num = cartService.goodstotalnum(cart);
		session.setAttribute("cart_num", cart_num);
		
		ml.setViewName("page/index");
		return ml;
	}

	
}
