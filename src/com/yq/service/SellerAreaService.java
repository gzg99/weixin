package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.SellerAreaDao;
import com.yq.entity.SellerArea;

@Service
public class SellerAreaService {
	
	@Autowired
	private SellerAreaDao sellerAreaDao;

	public List<SellerArea> getAllSellerArea(String type){
		return sellerAreaDao.getAllSellerArea(type);
	}
	
	public int insert(Map<String, Object> map) {
		return sellerAreaDao.insert(map);
	}
	
	public int update(Map<String, Object> map) {
		return sellerAreaDao.update(map);
	}
	
	public int count() {
		return sellerAreaDao.count();
	}
	
	public List<SellerArea> list(Map<String, Object> map) {
		return sellerAreaDao.list(map);
	}
	
	public SellerArea getSellerAreaById(Long id) {
		return sellerAreaDao.getSellerAreaById(id);
	}
	
	public int delSellerArea(Long id) {
		return sellerAreaDao.sellerAreaDel(id);
	}
}
