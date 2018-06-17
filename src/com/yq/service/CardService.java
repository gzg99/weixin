package com.yq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CardDao;
import com.yq.entity.Card;
import com.yq.entity.Goods;

@Service
public class CardService {

	@Autowired
	private CardDao cardDao;
	
	public boolean insert(Card card) {
		return cardDao.insert(card);
	}
	
	public boolean delete(Long id) {
		return cardDao.delete(id);
	}
	
	public boolean update(Card card) {
		try {
			int i = cardDao.update(card);
			if(i > 0) {
				return true;
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public Card getCardById(Long id) {
		return cardDao.getCardById(id);
	}
	
	public Card getCardByName(String name) {
		return cardDao.getCardByName(name);
	}
	
	public List<Card> getAllCard(Card card) {
		return cardDao.getAllCard(card);
	}
	
	public int count() {
		return cardDao.count();
	}
}
