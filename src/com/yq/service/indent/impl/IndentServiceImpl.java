package com.yq.service.indent.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.indent.JdbIndentMapper;
import com.yq.entity.indent.JdbIndent;
import com.yq.service.indent.IndentService;
import com.yq.util.PageUtil;

@Service
public class IndentServiceImpl implements IndentService {

	@Autowired
	JdbIndentMapper jdbIndentMapper;
	
	/**
	 * 订单列表
	 */
	@Override
	public Map<String,Object> selectIndentByList(JdbIndent jdbIndent) {
		Map<String,Object> map = new HashMap<String,Object>();
		jdbIndent.setPageSize(10);
		jdbIndent.setCurrentNum(PageUtil.currentNum(jdbIndent.getCurrentPage(), 10));
		
		int total = jdbIndentMapper.total(jdbIndent);
		List<JdbIndent> listIndent = jdbIndentMapper.selectIndentByList(jdbIndent);
		map.put("total", total);
		map.put("listIndent", listIndent);
		return map;
	}

	/**
	 * 发货,维权
	 */
	@Override
	public int updateByPrimaryKeySelective(JdbIndent record) {
		int a = jdbIndentMapper.updateByPrimaryKeySelective(record);
		return a;
	}

	/**
	 * 概况
	 */
	@Override
	public Map<String, Object> generalSituation() {
		String userId = "";
		JdbIndent record = new JdbIndent();
		record.setUserId(userId);
		record.setIndentState("1");
		int shipments = jdbIndentMapper.selecshipments(record);//待发货
		record.setIndentState("3");
		int safeguard = jdbIndentMapper.selecsafeguard(record);//维权中
		Map<String,Object> yesterday= jdbIndentMapper.yesterdayIndex(userId);//昨天关键指标
		yesterday.put("shipments", shipments);
		yesterday.put("safeguard", safeguard);
		return yesterday;
	}

	/**
	 * 发货查询单条
	 * @param id
	 * @return
	 */
	@Override
	public JdbIndent selectByPrimaryKey(String id) {
		JdbIndent jdbIndent = jdbIndentMapper.selectByPrimaryKey(id);
		return jdbIndent;
	}

	/**
	 * 下载
	 */
	@Override
	public List<JdbIndent> downloadIndentByList(JdbIndent jdbIndent) {
		List<JdbIndent> downloadIndentByList = jdbIndentMapper.downloadIndentByList(jdbIndent);
		return downloadIndentByList;
	}

	@Override
	public int insert(JdbIndent jdbIndent) {
		// TODO Auto-generated method stub
		return jdbIndentMapper.insert(jdbIndent);
	}
}
