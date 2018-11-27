package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.yq.util.MD5Util;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.annotation.Repeat;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Worker;
import com.yq.service.WorkerService;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;

@Controller
@RequestMapping
public class WorkerCtrl extends StringUtil {
	
	@Autowired
	private WorkerService workerService;

	@RequestMapping(value = "page/workersShowjsp.html")
	public ModelAndView villageAddjsp(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Worker worker = workerService.getWorkerByOpenId(getOppen_id(session));
		mv.addObject("worker", worker);
		mv.setViewName("page/showWorkersLocation");
		return mv;
	}
	
	
	
	@RequestMapping(value = "main/workersAddjsp.html")
	public ModelAndView workersAddjsp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/worker/add");
		return mv;
	}
	
	@RequestMapping(value = "main/updateWorker.html")
	@ResponseBody
	public String updateWorker(Long id, String name, int age, String sex, Long telPhone,String credentials, 
			String credentialsImg, String workerId, String workerImg, String workerIntro, int isVip, String type, 
			HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Worker worker = new Worker();
		worker.setUpdateTime(format.format(new Date()));
		worker.setId(id);
		worker.setName(name);
		worker.setAge(age);
		worker.setSex(sex);
		worker.setTelPhone(telPhone);
		worker.setCredentials(credentials);
		worker.setCredentialsImg(credentialsImg);
		worker.setWorkerId(workerId);
		worker.setWorkerImg(workerImg);
		worker.setWorkerIntro(workerIntro);
		worker.setIsVip(isVip);
		worker.setType(type);
		return workerService.update(worker) + "";
	}
	
	@RequestMapping(value = "page/updateWorkerLocation.html")
	@ResponseBody
	public String updateWorkerLocation(Long id, String longitude, String latitude) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Worker worker = new Worker();
		worker.setId(id);
		worker.setLongitude(longitude);
		worker.setLatitude(latitude);
		worker.setUpdateTime(format.format(new Date()));
		return workerService.update(worker) + "";
	}
	
	@RequestMapping(value = "main/getWorkerById.html")
	public ModelAndView getWorkerById(Long id) {
		ModelAndView mv = new ModelAndView();
		Worker worker = workerService.getWorkerById(id);
		mv.addObject("worker", worker);
		mv.setViewName("main/worker/info");
		return mv;
	}
	
	@RequestMapping(value = "page/deleteWorkerById.html")
	@ResponseBody
	public String deleteWorkerById(Long id) {
		return workerService.delete(id) + "";
	}
	
	@RequestMapping(value = "main/getAllWorkerList.html")
	@ResponseBody
	public ModelAndView getAllWorkerList(int pageNo, int pageSize, ModelAndView mv, 
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		int total = workerService.count();
		PageUtil.pager(pageNo, pageSize, total, request);
		map.put("currentNum", PageUtil.currentNum(pageNo, pageSize));
		map.put("pageSize", pageSize);
		List<Worker> list = workerService.getWorkerPage(map);
		mv.addObject("list", list);
		mv.setViewName("main/worker/list");
		return mv;
	}
	
	@RequestMapping(value = "main/addWorker.html")
	@ResponseBody
	public String addWorker(String name, int age, String sex, Long telPhone,String credentials, String credentialsImg,
			String workerId, String workerImg, String workerIntro, int isVip, String type, HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Worker worker = new Worker();
		worker.setName(name);
		worker.setAge(age);
		worker.setSex(sex);
		worker.setTelPhone(telPhone);
		worker.setCredentials(credentials);
		worker.setCredentialsImg(credentialsImg);
		worker.setWorkerId(workerId);
		worker.setWorkerImg(workerImg);
		worker.setWorkerIntro(workerIntro);
		worker.setIsVip(isVip);
		worker.setAddTime(format.format(new Date()));
		worker.setUpdateTime(format.format(new Date()));
		worker.setOpenId(getOppen_id(session));
		worker.setServiceCount(0);
		worker.setType(type);
		int i = workerService.add(worker);
		return i + "";
	}
	
	/**
	 * 获取当天有更新的所有工人信息
	 * */
	@RequestMapping(value = "page/getAllWorkerRangeCurDay.html")
	@ResponseBody
	public String getAllWorkerRangeCurDay(String type) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String startTime = format.format(new Date()) + " 00:00:00";
		String endTime = format.format(new Date()) + " 23:59:59";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		List<Worker> list = workerService.getAllWorkerRangeCurDay(map);
		return JSONObject.valueToString(list);
	}
	
	@RequestMapping(value = "page/getWorkerInfoById.html")
	@ResponseBody
	public ModelAndView getWorkerInfoById(Long id) {
		Worker worker = workerService.getWorkerById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("worker", worker);
		mv.setViewName("page/workerInfo");
		return mv;
	}
	
	/**
	 * 发表评价
	 * 
	 * @return
	 */
	@RequestMapping(value = "page/publishWorkerEval.html")
	public ModelAndView toEvaluatePage(Long id) {
		Worker worker = workerService.getWorkerById(id);
		ModelAndView view = new ModelAndView("page/publishWorkerEval");
		view.addObject("worker", worker);
		return view;
	}

	/**
	* @Description: 跳转工匠注册页面
	* @Author: jkx
	* @Date: 2018/11/22 13:15
	*/
	@RequestMapping(value = "page/toWorkerSignUp.html")
	@ResponseBody
	public ModelAndView toWorkerSignUp(){
		ModelAndView mv = new ModelAndView("page/worker_sign_up");
		return mv;
	}

	/**
	* @Description: 工匠注册提交页面
	* @Author: jkx
	* @Date: 2018/11/22 13:39
	*/
	@RequestMapping(value = "page/workerSignUp.html")
	@ResponseBody
	public String workerSignUp(String name, Long telPhone, String workerId, String passwordId, int age, String type,
							   String serviceArea, String serviceDetail, String workerIntro, String worderAlbum, HttpSession session){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Worker worker = new Worker();
		worker.setName(name);
		worker.setTelPhone(telPhone);
		worker.setWorkerId(workerId);
		worker.setPassword(MD5Util.MD5Encode(passwordId, ""));
		worker.setAge(age);
		worker.setType(type);
		worker.setServiceArea(serviceArea);
		worker.setServiceDetail(serviceDetail);
		worker.setWorkerIntro(workerIntro);
		worker.setWorderAlbum(worderAlbum);
		worker.setIsVip(0);
		worker.setAddTime(format.format(new Date()));
		worker.setUpdateTime(format.format(new Date()));
		worker.setOpenId(getOppen_id(session));
		worker.setServiceCount(0);

		int i = workerService.add(worker);
		return i + "";
	}
}
