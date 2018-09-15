package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.WorkerEval;

public interface WorkerEvalDao {

	int insertEval(WorkerEval orderEval);
	
	List<WorkerEval> getAllEvalByWorkerId(Long workerId);
	
	List<WorkerEval> getAllEvalByWorkerIdOpenId(Map<String, Object> map);
	
	List<WorkerEval> getEvalByWorkerAndScore(Map<String, Object> map);
	
	int getCountByWorkerId(Long workerId);
	
	//查找好评的个数
	int getGoodCountByWorkerId(Long workerId);
	
	//查找差评的个数
	int getBadCountByWorkerId(Long workerId);
}
