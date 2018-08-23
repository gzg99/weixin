package com.yq.dao.benefit;

import com.yq.entity.benefit.JdbBenefit;

public interface JdbBenefitMapper {
    int deleteByPrimaryKey(String benefitid);

    int insert(JdbBenefit record);

    int insertSelective(JdbBenefit record);

    JdbBenefit selectByPrimaryKey(String benefitid);
    
    JdbBenefit selectByPrimary();

    int updateByPrimaryKeySelective(JdbBenefit record);

    int updateByPrimaryKey(JdbBenefit record);
}