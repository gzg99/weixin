package com.yq.controller.evaluate;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.GoodsBuild;
import com.yq.entity.evaluate.JdbEvaluate;
import com.yq.service.GoodsBuildService;
import com.yq.service.evaluate.EvaluateService;
import com.yq.util.StringUtil;
import com.yq.util.UUIDUtils;

import net.sf.json.JSONArray;

/**
 * 评价
 * 
 * @author 超
 *
 */
@Controller
@RequestMapping
public class EvaluateController extends StringUtil{

	@Autowired
	EvaluateService evaluateService;

	@Autowired
	private GoodsBuildService goodsBuildService;
	
	/**
	 * 进入评价页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "page/evaluate/toEvaluatePage.html")
	public ModelAndView toEvaluatePage(Long id) {
		GoodsBuild goods = goodsBuildService.getGoodsBuildById(id);
		ModelAndView view = new ModelAndView("page/evaluate/evaluate");
		view.addObject("goods", goods);
		view.addObject("goods_id", id);
		return view;
	}

	/**
	 * 评价
	 * 
	 * @param jdbEvaluate
	 * @return
	 */
	@RequestMapping(value = "page/evaluate/toevaluate.html", method = RequestMethod.POST)
	public @ResponseBody String evaluate(JdbEvaluate jdbEvaluate,HttpSession session) {
		String suc = "0";
		jdbEvaluate.setId(UUIDUtils.getUUID());
		jdbEvaluate.setUserId(this.getOppen_id(session));
		try {
			jdbEvaluate.setEvaluateContent(new String (jdbEvaluate.getEvaluateContent().getBytes("iso8859-1"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = evaluateService.insertSelective(jdbEvaluate);

		if (i > 0) {
			suc = "1";
		}
		return suc;

	}
	
	/**
	 * 评价列表
	 * @param commodityId
	 * @return
	 */
	@RequestMapping(value="page/showEvaluate.html")
	public ModelAndView showEvaluate(String commodityId) {
		ModelAndView view = new ModelAndView("page/showEvaluate");
		Map<String,Object> map = evaluateService.showEvaluate(commodityId);
		view.addObject("showEvaluate", map);
		view.addObject("commodityId", commodityId);
		return view;
	}
	
	
	/**
	 * 评价列表
	 * @param commodityId
	 * @return
	 */
	@RequestMapping(value="page/evaluate/showEvaluateAj.html")
	public @ResponseBody String showEvaluateAj(String commodityId,String grade) {
		Map<String,Object> mapData = new HashMap<String,Object>();
		mapData.put("commodityId", commodityId);
		mapData.put("grade", grade);
		
		List<Map<String,Object>> map = evaluateService.showEvaluateAj(mapData);
		
		JSONArray jsonStrs = JSONArray.fromObject(map);
		return jsonStrs.toString();
		
	}
	
	
}
