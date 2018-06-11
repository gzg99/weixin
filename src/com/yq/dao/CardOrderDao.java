package com.yq.dao;

import java.util.List;

import com.yq.entity.CardOrder;

public interface CardOrderDao {

	public boolean insert(CardOrder order);
	
	public boolean delete(Long id);
	
	public boolean update(CardOrder order);
	
	public CardOrder findById(Long id);
	
	public List<CardOrder> findByUserName(String userName);
	
	public List<CardOrder> findAll();
	
}
