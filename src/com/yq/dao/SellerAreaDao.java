package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.SellerArea;

public interface SellerAreaDao {

	public List<SellerArea> getAllSellerArea(Integer type); 
	
	public int insert(Map<String, Object> map);
	
	public int update(Map<String, Object> map);
	
	public int count();
	
	public List<SellerArea> list(Map<String, Object> map);
	
	public SellerArea getSellerAreaById(Long id);
	
	public int sellerAreaDel(Long id);
	
}
