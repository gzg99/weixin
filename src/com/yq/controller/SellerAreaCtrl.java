package com.yq.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
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

import com.yq.entity.Goods;
import com.yq.entity.OrderEval;
import com.yq.entity.Seller;
import com.yq.entity.SellerArea;
import com.yq.service.SellerAreaService;
import com.yq.service.SellerService;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;

@Controller
@RequestMapping("/")
public class SellerAreaCtrl extends StringUtil {
	
	@Autowired
	private SellerAreaService sellerAreaService;
	
	@Autowired
	private SellerService sellerService;

	@RequestMapping(value = "page/getAllSellerAreaList.html")
	public ModelAndView getAllSellerAreaList() {
		ModelAndView mv = new ModelAndView();
		List<SellerArea> list = sellerAreaService.getAllSellerArea();
		mv.addObject("list", list);
		mv.setViewName("page/jjsy");
		return mv;
	}
	
	@RequestMapping(value = "page/getSellerListBySellerAreaId.html")
	public ModelAndView getSellerListBySellerAreaId(Long sellerAreaId, String firstLink, String secondLink) {
		ModelAndView mv = new ModelAndView();
		List<Seller> list = sellerService.getSellerListBySellerAreaId(sellerAreaId);
		mv.addObject("list", list);
		mv.addObject("firstLink", firstLink);
		mv.addObject("secondLink", secondLink);
		mv.setViewName("page/sqnr");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/sellerAreaInsert.html")
	public String sellerAreaInsert(String sellerArea, String firstLink, String secondLink,
			String sellerImg, String sellerDetail ) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String addTime =sf.format(new Date());
		Map<String, Object> map = new HashMap<>();
		map.put("sellerArea", sellerArea);
		map.put("firstLink", firstLink);
		map.put("secondLink", secondLink);
		map.put("sellerImg", sellerImg);
		map.put("sellerDetail", sellerDetail);
		map.put("addTime", addTime);
		return sellerAreaService.insert(map) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateSellerArea.html")
	public Object updateSellerArea(Long id, String sellerArea, String firstLink, String secondLink,
			String sellerImg, String sellerDetail) {
		Map<String, Object> map = new HashMap<>();
		map.put("sellerArea", sellerArea);
		map.put("firstLink", firstLink);
		map.put("secondLink", secondLink);
		map.put("sellerImg", sellerImg);
		map.put("sellerDetail", sellerDetail);
		map.put("id", id);
		return sellerAreaService.update(map) + "";

	}
	
	/**
	 * 商圈列表
	 * */
	@RequestMapping(value = "/main/sellerAreaList.html")
	public ModelAndView list(@RequestParam(defaultValue = "1") Integer currentPage,
			HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			int total = sellerAreaService.count();
			PageUtil.pager(currentPage, pagesize_1, total, request);
			Map<String, Object> map = new HashMap<>();
			map.put("pageSize", pagesize_1);
			map.put("currentNum", PageUtil.currentNum(currentPage, pagesize_1));
			List<SellerArea> list = sellerAreaService.list(map);
			ModelAndView ml = new ModelAndView();
			ml.addObject("list", list);
			ml.setViewName("main/sellerArea/list");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 根据商圈id查询商圈详情
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/main/getSellerAreaById.html")
	public ModelAndView getSellerAreaById(Long id) {
		ModelAndView mv = new ModelAndView();
		SellerArea sellerArea = sellerAreaService.getSellerAreaById(id);
		mv.addObject("sellerArea", sellerArea);
		mv.setViewName("main/sellerArea/info");
		return mv ;
	}

	
}
