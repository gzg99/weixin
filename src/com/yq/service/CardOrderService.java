package com.yq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CardOrderDao;
import com.yq.entity.CardOrder;

@Service
public class CardOrderService {
	
	@Autowired
	private CardOrderDao cardOrderDao;

	public boolean insert(CardOrder order) {
		return cardOrderDao.insert(order);
	}
	
	public boolean delete(Long id) {
		return cardOrderDao.delete(id);
	}
	
	public boolean update(CardOrder order) {
		return cardOrderDao.update(order);
	}
	
	public CardOrder findById(Long id) {
		return cardOrderDao.findById(id);
	}
	
	public List<CardOrder> findByUserName(String userName) {
		return cardOrderDao.findByUserName(userName);
	}
	
	public List<CardOrder> findAll() {
		return cardOrderDao.findAll();
	}
}
