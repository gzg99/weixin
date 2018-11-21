package com.yq.controller;

import com.yq.entity.DecorationEntity;
import com.yq.service.DecorationService;
import com.yq.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public String addDecoration(String companyName, String companyPhone, String companyImg, String companyIntrl,
			String companyDetail, String type, String isFineQuality, String companyAddress, String businessLicense) {
		DecorationEntity decoration = new DecorationEntity();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		decoration.setCompanyName(companyName);
		decoration.setCompanyPhone(companyPhone);
		decoration.setCompanyImg(companyImg);
		decoration.setCompanyIntrl(companyIntrl);
		decoration.setCompanyDetail(companyDetail);
		decoration.setType(type);
		decoration.setIsFineQuality(isFineQuality);
		decoration.setCompanyAddress(companyAddress);
		decoration.setBusinessLicense(businessLicense);
		decoration.setAddTime(sf.format(new Date()));
		return decorationService.insert(decoration) + "";
	}

	@RequestMapping(value = "/main/updateDecoration.html")
	@ResponseBody
	public String updateDecoration(Long id, String companyName, String companyPhone, String companyImg, String companyIntrl,
			String companyDetail, String type, String isFineQuality, String companyAddress, String businessLicense) {
		DecorationEntity decoration = new DecorationEntity();
		decoration.setId(id);
		decoration.setCompanyName(companyName);
		decoration.setCompanyPhone(companyPhone);
		decoration.setCompanyImg(companyImg);
		decoration.setCompanyIntrl(companyIntrl);
		decoration.setCompanyDetail(companyDetail);
		decoration.setType(type);
		decoration.setIsFineQuality(isFineQuality);
		decoration.setCompanyAddress(companyAddress);
		decoration.setBusinessLicense(businessLicense);
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
	
	@RequestMapping(value = "page/getAllDecorationFineQuality.html")
	@ResponseBody
	public ModelAndView getAllDecorationFineQuality() {
		ModelAndView mv = new ModelAndView();
		List<DecorationEntity> list = decorationService.getListFineQuality();
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

	/**
	* @Description: 商家加入-->跳转加入页面（手机端）
	* @Author: jkx
	* @Date: 2018/11/21 15:03
	*/
	@RequestMapping(value = "/page/toDecoration.html")
	@ResponseBody
	public ModelAndView toDecoration(){
		ModelAndView mv = new ModelAndView("page/decoration_sign_up");
		return mv;
	}

	/**
	* @Description: 商家加入（手机端）
	* @Author: jkx
	* @Date: 2018/11/21 15:57
	*/
	@RequestMapping(value = "/page/decorationSignUp.html")
	@ResponseBody
	public String decorationSignUp(String companyName, String companyPhone, String companyImg, String companyIntrl,
								   String companyDetail, String type, String isFineQuality, String companyAddress, String businessLicense){
		DecorationEntity decoration = new DecorationEntity();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		decoration.setCompanyName(companyName);
		decoration.setCompanyPhone(companyPhone);
		decoration.setCompanyImg(companyImg);
		decoration.setCompanyIntrl(companyIntrl);
		decoration.setCompanyDetail(companyDetail);
		decoration.setType(type);
		decoration.setIsFineQuality(isFineQuality);
		decoration.setCompanyAddress(companyAddress);
		decoration.setBusinessLicense(businessLicense);
		decoration.setAddTime(sf.format(new Date()));
		int i = decorationService.insert(decoration);
		return i + "";
	}
	
}
