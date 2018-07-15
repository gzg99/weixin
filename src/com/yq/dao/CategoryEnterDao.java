package com.yq.dao;

import java.util.List;

import com.yq.entity.CategoryEnter;

public interface CategoryEnterDao {
    int deleteByPrimaryKey(Long id);

    int insert(CategoryEnter record);

    int insertSelective(CategoryEnter record);

    CategoryEnter selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CategoryEnter record);

    int updateByPrimaryKey(CategoryEnter record);
    
    List<CategoryEnter> categoryFirstBySellerId(Long sellerId);
}