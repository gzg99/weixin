package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.WorkerEval;

public interface WorkerEvalDao {

	Long insertEval(WorkerEval orderEval);
	
	List<WorkerEval> getAllEvalByWorkerId(Long workerId);
	
	List<WorkerEval> getAllEvalByGoodIdOpenId(Map<String, Object> map);
	
	List<WorkerEval> getEvalByWorkerAndScore(Map<String, Object> map);
	
	int getCountByGoodId(Integer workerId);
	
	//查找好评的个数
	int getGoodCountByGoodId(Integer workerId);
	
	//查找差评的个数
	int getBadCountByGoodId(Integer workerId);
}
