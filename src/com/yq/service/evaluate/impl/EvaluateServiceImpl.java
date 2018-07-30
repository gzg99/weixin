package com.yq.service.evaluate.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.evaluate.JdbEvaluateMapper;
import com.yq.entity.evaluate.JdbEvaluate;
import com.yq.service.evaluate.EvaluateService;

/**
 * 评价
 * @author 超
 *
 */
@Service
public class EvaluateServiceImpl implements EvaluateService{

	@Autowired
	JdbEvaluateMapper jdbEvaluateMapper;
	
	@Override
	public int insertSelective(JdbEvaluate record) {
		int i = jdbEvaluateMapper.insertSelective(record);
		return i;
	}

	
}
