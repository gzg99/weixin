package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Ad;
import com.yq.service.AdService;

@Controller
@RequestMapping
public class AdCtrl {

	@Autowired
	private AdService adService;
	
	@RequestMapping("/main/adList.html")
	public ModelAndView adList(Integer status) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Ad> list = adService.seleteByTime(new Date(), status);
		for(Ad ad: list) {
			ad.setStartTimeStr(sdf.format(ad.getStartTime()));
			ad.setEndTimeStr(sdf.format(ad.getEndTime()));
		}
		ModelAndView m1 = new ModelAndView();
		m1.addObject("list", list);
		m1.setViewName("main/ad/list");
		return m1;
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/adDeleteById.html")
	public String deleteById(Long id) {
		return adService.delete(id) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/adInsert.html") 
	public String insert(String name, String content, String startTime, String endTime) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Ad ad = new Ad();
		ad.setName(name);
		ad.setContent(content);
		ad.setStatus(1);
		if(StringUtils.isEmpty(startTime) || StringUtils.isEmpty(endTime)) {
			return "false";
		}
		try {
			ad.setStartTime(sdf.parse(startTime));
			ad.setEndTime(sdf.parse(endTime));
		} catch (Exception e) {
			e.printStackTrace();
			return "false";
		}
		return adService.insert(ad) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/delById.html")
	public String delete(Long id) {
		return adService.delete(id) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateAd.html")
	public String updateAd(String content, Long id) {
		return adService.update(content, id) + "";
	}
	
	@RequestMapping(value = "/main/findAdById.html")
	public ModelAndView listById(Long id) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Ad ad = adService.selectById(id);
		ad.setStartTimeStr(sdf.format(ad.getStartTime()));
		ad.setEndTimeStr(sdf.format(ad.getEndTime()));
		ModelAndView ml = new ModelAndView();
		ml.addObject("ad", ad);
		ml.setViewName("main/ad/info");
		return ml;
	}
	
	@RequestMapping(value = "/main/adAddjsp.html")
	public ModelAndView addjsp() {
		return new ModelAndView("main/ad/add");
	}
	
}
