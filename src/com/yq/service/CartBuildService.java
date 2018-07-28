package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CartBuildDao;
import com.yq.entity.CartBuild;

@Service
public class CartBuildService {
	@Autowired
	private CartBuildDao cartDao;

	public int insert(Map<String, Object> map) {
		return cartDao.insert(map);
	}

	public int update(Map<String, Object> map) {
		return cartDao.update(map);
	}

	public int delete(Map<String, Object> map) {
		return cartDao.delete(map);
	}

	public List<CartBuild> list(CartBuild cart) {
		return cartDao.list(cart);
	}
	
	public int count(CartBuild cart){
		return cartDao.count(cart);
	}
	
	public int goodsnum(CartBuild cart){
		return cartDao.goodsnum(cart);
	}
	
	public Float goodstotalprice(CartBuild cart){
		return cartDao.goodstotalprice(cart);
	}
	
	public int goodstotalnum(CartBuild cart){
		return cartDao.goodstotalnum(cart);
	}
}
