package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.CardOrder;

public interface CardOrderDao {

	public int insert(CardOrder order);
	
	public boolean delete(Long id);
	
	public boolean update(CardOrder order);
	
	public CardOrder findById(Long id);
	
	public List<CardOrder> findByUserName(String userName);
	
	public List<CardOrder> findAll(Map<String, Object> map);
	
	public int count();
	
	public void upstatus(Map<String, Object> map);
	
}
