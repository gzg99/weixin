package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.DecorationEntity;

public interface DecorationDao {

	List<DecorationEntity> getListByType(String type);
	
	DecorationEntity getInfoById(Long id);
	
	int insert(DecorationEntity decoration);
	
	int update(DecorationEntity decoration);
	
	int deleteById(Long id);
	
	int count();
	
	List<DecorationEntity> getDecorationListByPage(Map<String, Object> map);
	
	List<DecorationEntity> getListFineQuality();
}
