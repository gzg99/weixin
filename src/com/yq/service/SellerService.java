package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.SellerDao;
import com.yq.entity.Seller;

@Service
public class SellerService {

	@Autowired
	private SellerDao sellerDao;
	
	public List<Seller> getSellerListBySellerAreaId(Long sellerAreaId) {
		return sellerDao.getSellerListBySellerAreaId(sellerAreaId);
	}
	
	
	public int insertSeller(Seller seller) {
		int i = sellerDao.insertSeller(seller);
		return i;
	}
	
	public Seller getSellerByCondition(Map<String, Object> map) {
		return sellerDao.getSellerByCondition(map);
	}
}
