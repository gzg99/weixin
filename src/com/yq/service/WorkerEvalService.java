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
	
	public boolean insertEval(WorkerEval orderEval) {
		Long i = workerEvalDao.insertEval(orderEval);
		if(i > 0) {
			return true;
		}
		return false;
	}
	
	public List<WorkerEval> getAllEvalByWorkerId(Long workerId) {
		return workerEvalDao.getAllEvalByWorkerId(workerId);
	}
	
	public List<WorkerEval> getAllEvalByGoodIdOpenId(Map<String, Object> map) {
		return workerEvalDao.getAllEvalByGoodIdOpenId(map);
	}
	
	public int getCountByGoodId(Integer workerId) {
		return workerEvalDao.getCountByGoodId(workerId);
	}
	
	//查找好评的个数
	public int getGoodCountByGoodId(Integer workerId) {
		return workerEvalDao.getGoodCountByGoodId(workerId);
	}
	
	//查找差评的个数
	public int getBadCountByGoodId(Integer workerId) {
		return workerEvalDao.getBadCountByGoodId(workerId);
	}
	
	public List<WorkerEval> getEvalByWorkerAndScore(Map<String, Object> map) {
		return workerEvalDao.getEvalByWorkerAndScore(map);
	}
}
