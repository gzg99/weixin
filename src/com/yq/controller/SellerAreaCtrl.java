package com.yq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Seller;
import com.yq.entity.SellerArea;
import com.yq.service.SellerAreaService;
import com.yq.service.SellerService;
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
}
