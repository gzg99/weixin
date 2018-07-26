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
	
	public CategoryEnter selectById(Long id) {
		return categoryEnterDao.selectByPrimaryKey(id);
	}
	
	public int addCategory(CategoryEnter record) {
		return categoryEnterDao.insert(record);
	}
	
	public int delCategory(Long id) {
		return categoryEnterDao.deleteByPrimaryKey(id);
	}
	
	public int updateCategoryEnter(CategoryEnter record) {
		return categoryEnterDao.updateCategoryEnter(record);
	}
	
	public int updateCategoryEnterById(CategoryEnter record) {
		return categoryEnterDao.updateByPrimaryKey(record);
	}
}
