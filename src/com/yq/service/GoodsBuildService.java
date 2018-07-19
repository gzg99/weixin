package com.yq.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yq.dao.GoodsBuildDao;
import com.yq.entity.GoodsBuild;
import com.yq.entity.GoodsBuildSearchVo;

@Service
public class GoodsBuildService {

	private GoodsBuildDao goodsBuildDao;
	
	public void goodsBuildAdd(GoodsBuild record) {
		goodsBuildDao.insert(record);
	}
	
	public List<GoodsBuild> getGoodsBuildByCondition(GoodsBuildSearchVo search) {
		return goodsBuildDao.getGoodsBuildByCondition(search);
	}
}
