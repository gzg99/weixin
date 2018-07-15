package com.yq.service;

import org.springframework.stereotype.Service;

import com.yq.dao.GoodsBuildDao;
import com.yq.entity.GoodsBuild;

@Service
public class GoodsBuildService {

	private GoodsBuildDao goodsBuildDao;
	
	public void goodsBuildAdd(GoodsBuild record) {
		goodsBuildDao.insert(record);
	}
}
