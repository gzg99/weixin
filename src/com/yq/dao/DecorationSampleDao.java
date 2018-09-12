package com.yq.dao;

import java.util.List;

import com.yq.entity.DecorationSample;

public interface DecorationSampleDao {

	/**
	 * 根据type查询列表
	 * */
	List<DecorationSample> getSampleListByType(String type);
	
	/**
	 * 根据id查询详情
	 * */
	DecorationSample getSampleById(Long id);
	
	/**
	 * 添加装修样板
	 * */
	int addSample(DecorationSample decorationSample);
	
	/**
	 * 更新装修样板
	 * */
	int update(DecorationSample decorationSample);
	
	
}
