package com.yq.controller;

import com.yq.entity.Category;
import com.yq.entity.Goods;
import com.yq.entity.serviceCart.JdbServiceCart;
import com.yq.service.AddressService;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;
import com.yq.service.serviceCart.ServiceCartService;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class GoodsCtrl extends StringUtil {
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private AddressService addressService;
	@Autowired
	private ServiceCartService serviceCartService;

	private Goods goods = new Goods();
	private Category category = new Category();
	
	Map<String, Object> map = new HashMap<String, Object>();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	
	@RequestMapping(value = "/main/goodsAddjsp.html")
	public ModelAndView addjsp() {
		ModelAndView ml = new ModelAndView();
		category.setStatus(1);
		List<Category> list = categoryService.list(category);
		ml.addObject("category", list);
		ml.setViewName("main/goods/add");
		return ml;
	}

	@ResponseBody
	@RequestMapping(value = "/main/goodsInsert.html")
	public String insert(String goods_name, String goods_img,String goods_spe,
			Float goods_price, String goods_detail, Integer ctg_id) {
		String add_time =sf.format(new Date());
		map.put("goods_name", goods_name);
		map.put("goods_img", goods_img);
		map.put("goods_spe", goods_spe);
		map.put("goods_price", goods_price);
		map.put("goods_detail", goods_detail);
		map.put("add_time", add_time);
		map.put("ctg_id", ctg_id);
		map.put("status", 1);
		map.put("type", 1);
		map.put("collection", "0");
		return goodsService.insert(map) + "";
	}

	@ResponseBody
	@RequestMapping(value = "/main/goodsUpdate.html")
	public Object update(String goods_name, String goods_img,String goods_spe,
			Float goods_price, String goods_detail, String add_time,
			Integer ctg_id, Integer goods_id) {
		map.put("goods_name", goods_name);
		map.put("goods_img", goods_img);		
		map.put("goods_spe", goods_spe);
		map.put("goods_price", goods_price);
		map.put("goods_detail", goods_detail);
		map.put("add_time", add_time);
		map.put("ctg_id", ctg_id);
		map.put("goods_id", goods_id);
		map.put("type", 1);
		return goodsService.update(map) + "";

	}

	@ResponseBody
	@RequestMapping(value = "/main/goodsUpstatus.html")
	public Object upstatus(Integer goods_id, Integer status) {
		map.put("status", status);
		map.put("goods_id", goods_id);
		return goodsService.upstatus(map) + "";
	}

	@ResponseBody
	@RequestMapping(value = "/main/goodsUpisrec.html")
	public Object upisrec(Integer goods_id, Integer is_recommend) {
		map.put("is_recommend", is_recommend);
		map.put("goods_id", goods_id);
		return goodsService.upisrec(map) + "";
	}

	/**
	 * 商品列表
	 * */
	@RequestMapping(value = "/main/goodsList.html")
	public ModelAndView list(Integer status,@RequestParam(defaultValue = "") String goods_name,
			@RequestParam(defaultValue = "0") Integer ctg_id,
			@RequestParam(defaultValue = "1") Integer currentPage,
			HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			goods_name = java.net.URLDecoder.decode(goods_name,"utf-8") ;
			goods.setStatus(status);
			goods.setGoods_name(goods_name);
			goods.setCtg_id(ctg_id);
			goods.setType(1);
			goods.setIs_recommend(0);
			int total = goodsService.count(goods);
			PageUtil.pager(currentPage, pagesize_1, total, request);
			goods.setPageSize(pagesize_1);
			goods.setCurrentNum(PageUtil.currentNum(currentPage, pagesize_1));
			List<Goods> list = goodsService.list(goods);
			ModelAndView ml = new ModelAndView();
			ml.addObject("goods", list);
			ml.addObject("goods_name", goods_name);
			ml.setViewName("main/goods/list");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@RequestMapping(value = "/main/goodsListById.html")
	public ModelAndView listById(Integer goods_id) {
		// addjsp();
		goods.setGoods_id(goods_id);
		List<Goods> list = goodsService.listById(goods);
		ModelAndView ml = new ModelAndView();
		category.setStatus(1);
		List<Category> ctg = categoryService.list(category);
		ml.addObject("category", ctg);
		ml.addObject("list", list);
		ml.setViewName("main/goods/info");
		return ml;
	}

	/**
	 * 根据商品id查询商品详情
	 * 
	 * @param goods_id
	 * @return
	 */
	@RequestMapping(value = "/page/goodsListById.html")
	public ModelAndView goodsListById(Integer goods_id) {
		goods.setGoods_id(goods_id);
		List<Goods> list = goodsService.listById(goods);
		ModelAndView ml = new ModelAndView();
		ml.addObject("list", list);
		ml.addObject("goods_id", goods_id);
		ml.setViewName("page/goods-info");
		return ml;
	}

	/**
	 * 根据商品id查询商品详情
	 * 
	 * @param goods_id
	 * @return
	 */
	@RequestMapping(value = "/page/goodsOrder.html")
	public ModelAndView goodsOrder(Integer goods_id) {
		goods.setGoods_id(goods_id);
		List<Goods> list = goodsService.listById(goods);
		list.get(0).setGoods_num("1");
		ModelAndView ml = new ModelAndView();
		ml.addObject("goods", list);
		ml.addObject("goods_id", goods_id);
		ml.setViewName("page/goods-order");
		return ml;
	}
	
	@RequestMapping(value = "/page/secGoodsList.html")
	public ModelAndView secGoodsList(String goods_name,
			@RequestParam(defaultValue = "0") Integer is_recommend,
			@RequestParam(defaultValue = "1") Integer status,
			@RequestParam(defaultValue = "1") Integer currentPage,
			HttpServletRequest request) {
		try {
			goods.setType(1);
			goods.setStatus(status);
			goods.setGoods_name(goods_name);
			goods.setIs_recommend(is_recommend);
			List<Goods> list = goodsService.list(goods);
			ModelAndView ml = new ModelAndView();
			ml.addObject("goods", list);
			ml.setViewName("page/goods-list");
			return ml;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	* @Description: 商品收藏
	* @Author: jkx
	* @Date: 2018/11/23 11:00
	*/
	@RequestMapping(value = "/page/goodsCollection.html")
	@ResponseBody
	public String goodsCollection(String goodsId, String collection){
		if(StringUtils.isNotBlank(collection)){
			if(StringUtils.equals("1",collection)){
				map.put("collection", "0");
			}else{
				map.put("collection", "1");
			}
		}else{
			map.put("collection", "1");
		}
		map.put("goods_id", Integer.parseInt(goodsId));
		int i = goodsService.goodsCollection(map);
		return i + "";
	}

	/**
	* @Description: 服务预约页面
	* @Author: jkx
	* @Date: 2018/11/23 13:30
	*/
	@RequestMapping(value = "/page/toGoodsReserva.html")
	@ResponseBody
	public ModelAndView toGoodsReserva(String goodsId, HttpSession session){
		ModelAndView mv = new ModelAndView("page/goods_reserva_edit");
		Goods goods = new Goods();
		goods.setGoods_id(Integer.parseInt(goodsId));
		Goods goodsData = goodsService.selGoodsById(goods);
		String oppen_id = getOppen_id(session);
//		addressService.getUserAddressList(oppen_id);
		mv.addObject("goodsData", goodsData);
		return mv;
	}

	/**
	* @Description: 预约服务提交
	* @Author: jkx
	* @Date: 2018/11/23 14:32
	*/
	@RequestMapping(value = "/page/goodsReserva.html")
	@ResponseBody
	public ModelAndView goodsReserva(String goodsId, String oppendId, String reservaTime, String remark ){
		ModelAndView mv = new ModelAndView("page/goods_reserva");
		// 返回页面信息
		Goods goods = new Goods();
		goods.setGoods_id(Integer.parseInt(goodsId));
		Goods goodsData = goodsService.selGoodsById(goods);

		// 将预约服务订单添加到购物车
		JdbServiceCart jdbServiceCart = new JdbServiceCart();
		jdbServiceCart.setReservaTime(reservaTime);
		jdbServiceCart.setRemark(remark);
		JdbServiceCart serviceCartData = serviceCartService.addOrder(goodsData, oppendId, jdbServiceCart);
		mv.addObject("serviceCartData", serviceCartData);
		return mv;
	}
}
