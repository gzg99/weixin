package com.yq.dao;

import java.util.List;

public interface CardOrderDao {

	public boolean insert(CardOrderDao order);
	
	public boolean delete(Long id);
	
	public boolean update(CardOrderDao order);
	
	public CardOrderDao findById(Long id);
	
	public List<CardOrderDao> findByUserName(String userName);
	
	public List<CardOrderDao> findAll();
	
}
