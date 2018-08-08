package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Village;

public interface VillageDao {

	/**
	 * 查询小区列表
	 * */
	public List<Village> getVillageList(Map<String, Object> map);
	
	public int count();
	
	/**
	 * 根据小区id查询信息
	 * */
	public Village getInfoById(Long id);
	
	/**
	 * 添加
	 * */
	public int add(Village village);
	
	/**
	 * 根据id删除
	 * */
	public int del(Long id);
	
	/**
	 * 根据id进行更新
	 * */
	public int updateVillageById(Village village);
}
