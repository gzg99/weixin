package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.VillageDao;
import com.yq.entity.Village;

@Service
public class VillageService {
	
	@Autowired
	private VillageDao villageDao;
	/**
	 * 查询小区列表
	 * */
	public List<Village> getVillageList(Map<String, Object> map) {
		return villageDao.getVillageList(map);
	}
	
	public int count() {
		return villageDao.count();
	}
	
	/**
	 * 根据小区id查询信息
	 * */
	public Village getInfoById(Long id) {
		return villageDao.getInfoById(id);
	}
	
	/**
	 * 添加
	 * */
	public int add(Village village) {
		return villageDao.add(village);
	}
	
	/**
	 * 根据id删除
	 * */
	public int del(Long id) {
		return villageDao.del(id);
	}
	
	/**
	 * 根据id进行更新
	 * */
	public int updateVillageById(Village village) {
		return villageDao.updateVillageById(village);
	}
}
