package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.DecorationDao;
import com.yq.entity.DecorationEntity;

@Service
public class DecorationService {

	@Autowired
	private DecorationDao decorationDao;
	
	public List<DecorationEntity> getListByType(String type) {
		return decorationDao.getListByType(type);
	}
	
	public DecorationEntity getInfoById(Long id) {
		return decorationDao.getInfoById(id);
	}
	
	public int insert(DecorationEntity decoration) {
		return decorationDao.insert(decoration);
	}
	
	public int update(DecorationEntity decoration) {
		return decorationDao.update(decoration);
	}
	
	public int deleteById(Long id) {
		return decorationDao.deleteById(id);
	}
	
	public int count() {
		return decorationDao.count();
	}
	
	public List<DecorationEntity> getDecorationListByPage(Map<String, Object> map) {
		return decorationDao.getDecorationListByPage(map);
	}
	
	public List<DecorationEntity> getListFineQuality() {
		return decorationDao.getListFineQuality();
	}
}
