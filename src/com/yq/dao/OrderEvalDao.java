package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.OrderEval;

public interface OrderEvalDao {

	Long insertEval(OrderEval orderEval);
	
	List<OrderEval> getAllEvalByGoodId(Integer goodId);
	
	List<OrderEval> getAllEvalByGoodIdOpenId(Map<String, Object> map);
	
	int getCountByGoodId(Integer goodId);
	
	//查找好评的个数
	int getGoodCountByGoodId(Integer goodId);
	
	//查找差评的个数
	int getBadCountByGoodId(Integer goodId);
}
