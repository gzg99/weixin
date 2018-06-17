package com.yq.dao;

import java.util.List;

import com.yq.entity.Card;

public interface CardDao {

	public boolean insert(Card card);
	
	public boolean delete(Long id);
	
	public int update(Card card);
	
	public Card getCardById(Long id);
	
	public Card getCardByName(String name);
	
	public List<Card> getAllCard(Card card);
	
	public int count(); 
}
