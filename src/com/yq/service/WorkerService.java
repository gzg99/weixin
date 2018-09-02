package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.WorkerDao;
import com.yq.entity.Worker;

@Service
public class WorkerService {
	@Autowired
	private WorkerDao workerDao;
	
	/**
	 * 工匠添加
	 * */
	public int add(Worker worker) {
		return workerDao.add(worker);
	}
	
	/**
	 * 工匠修改
	 * */
	public int update(Worker worker) {
		return workerDao.update(worker);
	}
	
	/**
	 * 工匠删除
	 * */
	public int delete(Long id) {
		return workerDao.delete(id);
	}
	
	/**
	 * 查询所有的工匠
	 * */
	public List<Worker> getWorkerPage(Map<String, Object> map) {
		return workerDao.getWorkerPage(map);
	}
	
	public int count() {
		return workerDao.count();
	}
	
	/**
	 * 根据open_id查询
	 * */
	public Worker getWorkerByOpenId(String openId) {
		return workerDao.getWorkerByOpenId(openId);
	}
	
	/**
	 * 根据id查询
	 * */
	public Worker getWorkerById(Long id) {
		return workerDao.getWorkerById(id);
	}
	
	public List<Worker> getAllWorkerRangeCurDay(Map<String, Object> map) {
		return workerDao.getAllWorkerRangeCurDay(map);
	}

}
