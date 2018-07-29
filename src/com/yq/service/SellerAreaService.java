package com.yq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.SellerAreaDao;
import com.yq.entity.SellerArea;

@Service
public class SellerAreaService {
	
	@Autowired
	private SellerAreaDao sellerAreaDao;

	public List<SellerArea> getAllSellerArea(){
		return sellerAreaDao.getAllSellerArea();
	}
}
