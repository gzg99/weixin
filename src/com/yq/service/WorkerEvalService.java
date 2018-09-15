package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.WorkerEvalDao;
import com.yq.entity.WorkerEval;

@Service
public class WorkerEvalService {

	@Autowired
	private WorkerEvalDao workerEvalDao;
	
	public int insertEval(WorkerEval workerEval) {
		int i = workerEvalDao.insertEval(workerEval);
		return i;
	}
	
	public List<WorkerEval> getAllEvalByWorkerId(Long workerId) {
		return workerEvalDao.getAllEvalByWorkerId(workerId);
	}
	
	public List<WorkerEval> getAllEvalByWorkerIdOpenId(Map<String, Object> map) {
		return workerEvalDao.getAllEvalByWorkerIdOpenId(map);
	}
	
	public int getCountByWorkerId(Long workerId) {
		return workerEvalDao.getCountByWorkerId(workerId);
	}
	
	//查找好评的个数
	public int getGoodCountByWorkerId(Long workerId) {
		return workerEvalDao.getGoodCountByWorkerId(workerId);
	}
	
	//查找差评的个数
	public int getBadCountByWorkerId(Long workerId) {
		return workerEvalDao.getBadCountByWorkerId(workerId);
	}
	
	public List<WorkerEval> getEvalByWorkerAndScore(Map<String, Object> map) {
		return workerEvalDao.getEvalByWorkerAndScore(map);
	}
}
