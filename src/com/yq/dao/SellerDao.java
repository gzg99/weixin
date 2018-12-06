package com.yq.dao;

import com.yq.entity.Seller;

import java.util.List;
import java.util.Map;

public interface SellerDao {

	public List<Seller> getSellerListBySellerAreaId(Long sellerAreaId);
	
	public int insertSeller(Seller seller);
	
	public Seller getSellerByCondition(Map<String, Object> map);
	
	public Seller getSeller(String id);
	
	public List<Seller> getSellerByList(Map<String, Object> map);
	
	public int total(Map<String, Object> map);
	
	int deleteByPrimaryKey(Long id);
	
	int updateByPrimaryKeySelective(Seller seller);

    int selAllCount(Map<String, Object> map);

    List<Seller> selStreetSellerList(Map<String, Object> map);

	List<Seller> selStreetSellers(String status);
}
