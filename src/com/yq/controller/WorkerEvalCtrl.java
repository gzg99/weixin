package com.yq.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.yq.entity.User;
import com.yq.entity.WorkerEval;
import com.yq.service.UserService;
import com.yq.service.WorkerEvalService;
import com.yq.util.StringUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping
public class WorkerEvalCtrl extends StringUtil {

	@Autowired
	private WorkerEvalService workerEvalService;
	
	@Autowired
	private UserService userService;
	
	/**
	 * 发布评价
	 * */
	@RequestMapping(value = "page/addWorkerEval.html")
	@ResponseBody
	public String addWorkerEval(Long workerId, String content, String score, HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		WorkerEval workerEval = new WorkerEval();
		workerEval.setWorkerId(workerId);
		workerEval.setContent(content);
		workerEval.setScore(score);
		workerEval.setOpenId(getOppen_id(session));
		workerEval.setAdd_time(format.format(new Date()));
		return workerEvalService.insertEval(workerEval) + "";
	}
	
	/**
	 * 评价列表(工人)
	 * @param workerId
	 * @return
	 */
	@RequestMapping(value="page/showWorkerEval.html")
	public ModelAndView showWorkerEval(Long workerId) {
		ModelAndView view = new ModelAndView("page/workerEvaluate");
		List<WorkerEval> list = workerEvalService.getAllEvalByWorkerId(workerId);
		for(WorkerEval eval: list) {
			if(eval.getOpenId() != null) {
				User user = userService.getUserByOpenId(eval.getOpenId());
				if(user != null) {
					eval.setHeadImgStr(user.getHead_img());
				}
			}
		}
		view.addObject("showEvaluate", list);
		view.addObject("workerId", workerId);
		int goodEval = workerEvalService.getGoodCountByWorkerId(workerId);
		int badEval = workerEvalService.getBadCountByWorkerId(workerId);
		view.addObject("goodEval", goodEval);
		view.addObject("badEval", badEval);
		view.addObject("allEval", list.size());
		int neutralEval = list.size() - goodEval - badEval;
		view.addObject("neutralEval", neutralEval);
		return view;
	}
	
	/**
	 * 评价列表
	 * @param commodityId
	 * @return
	 */
	@RequestMapping(value="page/showWorkerEvaluate.html")
	@ResponseBody
	public String showWorkerEvaluate(String workerId,Integer score) {
		Map<String,Object> mapData = new HashMap<String,Object>();
		mapData.put("workerId", workerId);
		mapData.put("score", score);
		List<WorkerEval> list = workerEvalService.getEvalByWorkerAndScore(mapData);
		JSONArray jsonStrs = JSONArray.fromObject(list);
		return jsonStrs.toString();
	}
	
	/**
	 * 评价
	 * 
	 * @param jdbEvaluate
	 * @return
	 */
	@RequestMapping(value = "page/addWorkerEval.html", method = RequestMethod.POST)
	@ResponseBody
	public String evaluate(WorkerEval workerEval,HttpSession session) {
		String suc = "0";
		try {
			workerEval.setContent(new String (workerEval.getContent().getBytes("iso8859-1"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = workerEvalService.insertEval(workerEval);
		if (i > 0) {
			suc = "1";
		}
		return suc;
	}
	
}
