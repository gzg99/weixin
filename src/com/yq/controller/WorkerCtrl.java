package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		mv.setViewName("page/showWorksLocation");
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
	public String updateWorker(Worker worker) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		worker.setUpdateTime(format.format(new Date()));
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
	public String addVillage(String name, int age, Long telPhone,String credentials, String credentialsImg,
			String workerId, String workerImg, String workerIntro, int isVip, HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Worker worker = new Worker();
		worker.setName(name);
		worker.setAge(age);
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
		int i = workerService.add(worker);
		return i + "";
	}
	
	/**
	 * 获取当天有更新的所有工人信息
	 * */
	@RequestMapping(value = "page/getAllWorkerRangeCurDay.html")
	@ResponseBody
	public String getAllWorkerRangeCurDay() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String startTime = format.format(new Date()) + " 00:00:00";
		String endTime = format.format(new Date()) + " 23:59:59";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		List<Worker> list = workerService.getAllWorkerRangeCurDay(map);
		return JSONObject.valueToString(list);
	}
	
}
