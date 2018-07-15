package com.yq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.CategoryEnterDao;
import com.yq.entity.CategoryEnter;

@Service
public class CategoryEnterService {

	@Autowired
	private CategoryEnterDao categoryEnterDao;
	
	public List<CategoryEnter> selectFirstBySellerId(Long sellerId) {
		return categoryEnterDao.categoryFirstBySellerId(sellerId);
	}
	
	public void addCategory(CategoryEnter record) {
		categoryEnterDao.insert(record);
	}
	
	public void delCategory(Long id) {
		categoryEnterDao.deleteByPrimaryKey(id);
	}
}
