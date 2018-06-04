package com.yq.dao;

import java.util.List;

import com.yq.entity.Card;

public interface CardDao {

	public boolean insert(Card card);
	
	public boolean delete(Long id);
	
	public boolean update(Card card);
	
	public Card getCardById(Long id);
	
	public List<Card> getAllCard();
}
