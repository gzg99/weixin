package com.yq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.DecorationEntity;
import com.yq.service.DecorationService;
import com.yq.util.PageUtil;

@Controller
@RequestMapping("/")
public class DecorationCtrl {
	
	@Autowired
	private DecorationService decorationService;

	@RequestMapping(value = "/page/decorationIndex.html")
	public ModelAndView decorationIndex() {
		return new ModelAndView("page/decoration");
	}
	
	@RequestMapping(value = "main/decorationList.html")
	@ResponseBody
	public ModelAndView decorationList(int pageNo, int pageSize, ModelAndView mv, 
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		int total = decorationService.count();
		PageUtil.pager(pageNo, pageSize, total, request);
		map.put("currentNum", PageUtil.currentNum(pageNo, pageSize));
		map.put("pageSize", pageSize);
		List<DecorationEntity> list = decorationService.getDecorationListByPage(map);
		mv.addObject("list", list);
		mv.setViewName("main/decoration/list");
		return mv;
	}
	
	@RequestMapping(value = "main/decorationInfoById.html")
	@ResponseBody
	public ModelAndView decorationInfoById(Long id) {
		ModelAndView mv = new ModelAndView();
		DecorationEntity decoration = decorationService.getInfoById(id);
		mv.addObject("decoration", decoration);
		mv.setViewName("main/decoration/info");
		return mv;
	}
	
	@RequestMapping(value = "/main/decorationAddJsp.html")
	public ModelAndView decorationAddJsp() {
		return new ModelAndView("main/decoration/add");
	}
	
	@RequestMapping(value = "/main/addDecoration.html")
	@ResponseBody
	public String addDecoration(String companyName, String companyImg, String companyIntrl,
			String companyDetail, String type, String isFineQuality) {
		DecorationEntity decoration = new DecorationEntity();
		decoration.setCompanyName(companyName);
		decoration.setCompanyImg(companyImg);
		decoration.setCompanyIntrl(companyIntrl);
		decoration.setCompanyDetail(companyDetail);
		decoration.setType(type);
		decoration.setIsFineQuality(isFineQuality);
		return decorationService.insert(decoration) + "";
	}
	
	@RequestMapping(value = "/main/updateDecoration.html")
	@ResponseBody
	public String updateDecoration(Long id, String companyName, String companyImg, String companyIntrl,
			String companyDetail, String type, String isFineQuality) {
		DecorationEntity decoration = new DecorationEntity();
		decoration.setId(id);
		decoration.setCompanyName(companyName);
		decoration.setCompanyImg(companyImg);
		decoration.setCompanyIntrl(companyIntrl);
		decoration.setCompanyDetail(companyDetail);
		decoration.setType(type);
		decoration.setIsFineQuality(isFineQuality);
		return decorationService.update(decoration) + "";
	}
	
	@RequestMapping(value = "/main/deleteDecorationById.html")
	@ResponseBody
	public String deleteDecorationById(Long id) {
		return decorationService.deleteById(id) + "";
	}
	
	@RequestMapping(value = "page/getAllDecorationByType.html")
	@ResponseBody
	public ModelAndView getAllDecorationByType(String type) {
		ModelAndView mv = new ModelAndView();
		List<DecorationEntity> list = decorationService.getListByType(type);
		mv.addObject("list", list);
		mv.setViewName("page/decorationList");
		return mv;
	}
	
	@RequestMapping(value = "/page/getDecorationById.html")
	@ResponseBody
	public ModelAndView getDecorationById(Long id) {
		ModelAndView mv = new ModelAndView();
		DecorationEntity decoration = decorationService.getInfoById(id);
		mv.addObject("decoration", decoration);
		mv.setViewName("page/decorationInfo");
		return mv;
	}
	
}
