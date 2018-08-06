package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Seller;

public interface SellerDao {

	public List<Seller> getSellerListBySellerAreaId(Long sellerAreaId);
	
	public int insertSeller(Seller seller);
	
	public Seller getSellerByCondition(Map<String, Object> map);
	
	public Seller getSeller(String id);
	
	public List<Seller> getSellerByList(Map<String, Object> map);
	
	public int total(Map<String, Object> map);
	
	int deleteByPrimaryKey(Long id);
	
	int updateByPrimaryKeySelective(Seller seller);
}
