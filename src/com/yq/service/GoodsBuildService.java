package com.yq.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.GoodsBuildDao;
import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;

@Service
public class GoodsBuildService {

	@Autowired
	private GoodsBuildDao goodsBuildDao;
	
	public int goodsBuildAdd(GoodsBuild record) {
		return goodsBuildDao.insert(record);
	}
	
	public List<GoodsBuild> getGoodsBuildByCondition(GoodsBuildSearchVo search) {
		return goodsBuildDao.getGoodsBuildByCondition(search);
	}
	
	public int count(GoodsBuildSearchVo search) {
		return goodsBuildDao.count(search);
	}
	
	public int updateGoodsInfo(GoodsBuild record) {
		return goodsBuildDao.updateByPrimaryKeySelective(record);
	}
	
	public GoodsBuild getGoodsBuildById(Long id) {
		return goodsBuildDao.selectById(id);
	}
	
	public List<GoodsBuild> getGoodsBuildListBySellerId(Long sellerId, String firstCategory, String secondCategory) {
		Map<String, Object> map = new HashMap<>();
		map.put("sellerId", sellerId);
		map.put("firstCategory", firstCategory);
		map.put("secondCategory", secondCategory);
		return goodsBuildDao.getGoodsBuildListBySellerId(map);
	}
}
