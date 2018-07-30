package com.yq.service.evaluate.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	/**
	 * 增加评价
	 */
	@Override
	public int insertSelective(JdbEvaluate record) {
		record.setEvaluateDate(new Date());
		int i = jdbEvaluateMapper.insertSelective(record);
		return i;
	}

	/**
	 * 评价列表
	 */
	@Override
	public Map<String, Object> showEvaluate(String commodityId) {
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> showEvaluate = jdbEvaluateMapper.showEvaluate(commodityId);//总评价、好评百分比
		List<JdbEvaluate> showEvaluateBylist = jdbEvaluateMapper.showEvaluateBylist(commodityId);//评价详情
		map.put("showEvaluate", showEvaluate);
		map.put("showEvaluateBylist", showEvaluateBylist);
		return map;
	}

	
}
