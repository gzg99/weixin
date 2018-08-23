package com.yq.controller.benefit;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.benefit.JdbBenefit;
import com.yq.entity.benefit.JdbLoveRelay;
import com.yq.entity.benefit.JdbRelation;
import com.yq.entity.benefit.JdvLoveoldplan;
import com.yq.service.benefit.BenefitService;

/**
 * 公益
 * 
 * @author 超
 *
 */
@Controller
public class BenefitController {

	@Autowired
	BenefitService benefitService;

	/**
	 * 公益后台管理
	 * 
	 * @return 超
	 */
	@RequestMapping(value = "/main/listBenfit")
	public ModelAndView listBenefit() {
		ModelAndView view = new ModelAndView("main/benefit/list");
		Map<String, Object> mapList = benefitService.selectBenefitByList();
		view.addObject("mapList",mapList);
		return view;
	}

	/**
	 * 公益前台管理
	 * 
	 * @return 超
	 */
	@RequestMapping(value = "/page/benfitlist")
	public ModelAndView benfitlist() {
		ModelAndView view = new ModelAndView("page/benefit/benefitlist");
		Map<String, Object> mapList = benefitService.selectBenefitByList();
		view.addObject("mapList",mapList);
		return view;
	}

	
	
	/**
	 * 进入修改首页图页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/toUpdateBenfit.html")
	public ModelAndView toUpdateBenfit() {
		ModelAndView view = new ModelAndView("main/benefit/addBenefit");
		return view;
	}

	/**
	 * 修改首页图
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/updateView.html")
	@ResponseBody
	public String updateView(JdbBenefit record) {
		record.setBenefitid("1");
		int i = benefitService.updateByPrimaryKey(record);
		return i + "";
	}
	
	/**
	 * 进入前台首页图页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/page/firstList.html")
	public ModelAndView firstList() {
		JdbBenefit jdbBenefit = benefitService.selectByPrimaryKey("1");
		ModelAndView view = new ModelAndView("page/benefit/firstList");
		view.addObject("jdbBenefit",jdbBenefit);
		return view;
	}
	
	
	/**
	 * 进入修改爱老计划图页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/toUpdateLoveoldplan")
	public ModelAndView toUpdateLoveoldplan() {
//		JdvLoveoldplan jdvLoveoldplan = benefitService.selectLoveoldplanKey("1");
		ModelAndView view = new ModelAndView("/main/benefit/addLoveoldplan");
//		view.addObject("jdvLoveoldplan",jdvLoveoldplan);
		return view;
	}
	
	/**
	 * 进入前台爱老计划图页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/page/toUpdateLoveoldplan")
	public ModelAndView toLoveoldplan() {
		JdvLoveoldplan jdvLoveoldplan =  benefitService.selectLoveoldplanKey("1");
		ModelAndView view = new ModelAndView("/page/benefit/loveoldplanList");
		view.addObject("jdvLoveoldplan",jdvLoveoldplan);
		return view;
	}
	
	/**
	 * 修改爱老计划图
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/updateLoveoldplan.html")
	@ResponseBody
	public String updateLoveoldplan(JdvLoveoldplan record) {
		record.setId("1");
		int i = benefitService.updateLoveoldplanKey(record);
		return i + "";
	}
	
	
	/**
	 * 进入公益组织——爱心接力页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/toLoveRelay.html")
	public ModelAndView toLoveRelay(String id) {
		
		ModelAndView view = new ModelAndView("/main/benefit/addLoveRelay");
		if(StringUtils.isNotBlank(id)) {
			JdbLoveRelay jdbLoveRelay= benefitService.selectLoveRelayKey(id);
			view.addObject("jdbLoveRelay",jdbLoveRelay);
		}
		
		return view;
	}
	
	
	/**
	 * 进入前台公益组织——爱心接力页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/page/toloveList.html")
	public ModelAndView toloveList(String id) {

		ModelAndView view = new ModelAndView("/page/benefit/loveList");
		JdbLoveRelay jdbLoveRelay = benefitService.selectByPrimaryList(id);
		view.addObject("jdbLoveRelay", jdbLoveRelay);

		return view;
	}
	
	
	/**
	 * 修改、增加公益组织——爱心接力页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/loveRelay")
	@ResponseBody
	public String loveRelay(JdbLoveRelay record) {
		int i = benefitService.updateLoveRelayKey(record);
		return i + "";
	}
	
	
	/**
	 * 删除公益组织——爱心接力页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/delLoveRelayById.html")
	@ResponseBody
	public String delLoveRelayById(String id) {
		int i = benefitService.deleteByPrimaryKey(id);
		return i + "";
	}
	
	/**
	 * 联系方式
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/toRelation.html")
	public ModelAndView toRelation() {
		ModelAndView view = new ModelAndView("/main/benefit/addRelation");
		return view;
	}
	
	/**
	 * 前台联系方式
	 * 
	 * @return
	 */
	@RequestMapping(value = "/page/torelationList.html")
	public ModelAndView torelationList() {
		JdbRelation jdbRelation = benefitService.selectByPrimary();
		ModelAndView view = new ModelAndView("/page/benefit/relationList");
		view.addObject("jdbRelation",jdbRelation);
		return view;
	}
	
	/**
	 * 联系方式修改
	 * 
	 * @return
	 */
	@RequestMapping(value = "/main/updateRelation")
	@ResponseBody
	public String updateRelation(JdbRelation record) {
		record.setId("1");
		int i = benefitService.updateRelationKey(record);
		return i + "";
	}
	
}
