package com.yq.service.evaluate;

import java.util.Map;

import com.yq.entity.evaluate.JdbEvaluate;

public interface EvaluateService {

	 int insertSelective(JdbEvaluate record);
	 
	 Map<String,Object> showEvaluate(String commodityId);
	 
	 
}
