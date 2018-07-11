package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.OrderEvalDao;
import com.yq.entity.OrderEval;

@Service
public class OrderEvalService {

	@Autowired
	private OrderEvalDao orderEvalDao;
	
	public boolean insertEval(OrderEval orderEval) {
		Long i = orderEvalDao.insertEval(orderEval);
		if(i > 0) {
			return true;
		}
		return false;
	}
	
	public List<OrderEval> getAllEvalByGoodId(Integer goodId) {
		return orderEvalDao.getAllEvalByGoodId(goodId);
	}
	
	public List<OrderEval> getAllEvalByGoodIdOpenId(Map<String, Object> map) {
		return orderEvalDao.getAllEvalByGoodIdOpenId(map);
	}
	
	public int getCountByGoodId(Integer goodId) {
		return orderEvalDao.getCountByGoodId(goodId);
	}
	
	//查找好评的个数
	public int getGoodCountByGoodId(Integer goodId) {
		return orderEvalDao.getGoodCountByGoodId(goodId);
	}
	
	//查找差评的个数
	public int getBadCountByGoodId(Integer goodId) {
		return orderEvalDao.getBadCountByGoodId(goodId);
	}
}
