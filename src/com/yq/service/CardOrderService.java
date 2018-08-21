package com.yq.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CardOrderDao;
import com.yq.entity.CardOrder;

@Service
public class CardOrderService {
	
	@Autowired
	private CardOrderDao cardOrderDao;

	public int insert(CardOrder order) {
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
	
	public List<CardOrder> findByUserPhone(Long userPhone) {
		return cardOrderDao.findByUserPhone(userPhone);
	}
	
	public Integer count() {
		return cardOrderDao.count();
	}
	
	public List<CardOrder> findAll(Map<String, Object> map) {
		return cardOrderDao.findAll(map);
	}
	
	/**
	 * 更改订单状态
	 * */
	public void upstatus(Map<String, Object> map) {
		cardOrderDao.upstatus(map);
	}
}
