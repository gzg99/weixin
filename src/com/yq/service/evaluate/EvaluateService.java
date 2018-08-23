package com.yq.service.evaluate;

import java.util.List;
import java.util.Map;

import com.yq.entity.evaluate.JdbEvaluate;

public interface EvaluateService {

	 int insertSelective(JdbEvaluate record);
	 
	 Map<String,Object> showEvaluate(String commodityId);
	 
	 Map<String,Object> showjdbEvaluate(String commodityId);
	 
	 List<Map<String,Object>> showEvaluateAj(Map<String,Object> mapData);
	 
	 List<Map<String,Object>> showjdbEvaluateAj(Map<String,Object> mapData);
	 
	 
}
