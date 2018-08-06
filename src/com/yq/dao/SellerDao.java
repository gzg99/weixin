package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Seller;

public interface SellerDao {

	public List<Seller> getSellerListBySellerAreaId(Long sellerAreaId);
	
	public int insertSeller(Seller seller);
	
	public Seller getSellerByCondition(Map<String, Object> map);
}
