package com.yq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CardOrderDao;

@Service
public class CardOrderService {
	
	@Autowired
	private CardOrderDao cardOrderDao;

	public boolean insert(CardOrderDao order) {
		return cardOrderDao.insert(order);
	}
	
	public boolean delete(Long id) {
		return cardOrderDao.delete(id);
	}
	
	public boolean update(CardOrderDao order) {
		return cardOrderDao.update(order);
	}
	
	public CardOrderDao findById(Long id) {
		return cardOrderDao.findById(id);
	}
	
	public List<CardOrderDao> findByUserName(String userName) {
		return cardOrderDao.findByUserName(userName);
	}
	
	public List<CardOrderDao> findAll() {
		return cardOrderDao.findAll();
	}
}
