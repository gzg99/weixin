package com.yq.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Village;
import com.yq.service.VillageService;
import com.yq.util.PageUtil;

@Controller
@RequestMapping
public class VillageCtrl {

	@Autowired
	private VillageService villageService;
	
	@RequestMapping(value = "main/getVillageList.html")
	public ModelAndView getVillageList( int pageNo, int pageSize, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		int total = villageService.count();
		PageUtil.pager(pageNo, pageSize, total, request);
		map.put("start", PageUtil.currentNum(pageNo, pageSize));
		List<Village> list = villageService.getVillageList(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("main/village/list");
		return mv;
	}
	
	@RequestMapping(value = "main/villageAddjsp.html")
	public ModelAndView villageAddjsp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/village/add");
		return mv;
	}
	
	@RequestMapping(value = "main/addVillage")
	@ResponseBody
	public String addVillage(String villageName, float longitude, float latitude) {
		Village village = new Village();
		village.setLatitude(latitude);
		village.setLongitude(longitude);
		village.setVillageName(villageName);
		village.setAddTime(new Date());
		int i = villageService.add(village);
		return i + "";
	}
	
	@RequestMapping(value = "main/updateVillage.html")
	@ResponseBody
	public String updateVillage(Long id, String villageName, float longitude, float latitude) {
		Village village = new Village();
		village.setLatitude(latitude);
		village.setLongitude(longitude);
		village.setVillageName(villageName);
		village.setId(id);
		int i = villageService.updateVillageById(village);
		return i + "";
	}
	
	@RequestMapping(value = "main/getVillageById.html")
	@ResponseBody
	public ModelAndView getVillageById(Long id) {
		ModelAndView mv = new ModelAndView();
		Village village = villageService.getInfoById(id);
		mv.addObject("village", village);
		mv.setViewName("main/village/info");
		return mv;
	}
	
	@RequestMapping(value="main/deleteVillageById.html")
	@ResponseBody
	public String deleteVillageById(Long id) {
		return villageService.del(id) + "";
	}
	
}
