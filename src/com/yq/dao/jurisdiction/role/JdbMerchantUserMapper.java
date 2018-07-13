package com.yq.dao.jurisdiction.role;

import com.yq.entity.jurisdiction.role.JdbMerchantUser;

public interface JdbMerchantUserMapper {
   
    int deleteByPrimaryKey(String userId);

    int insert(JdbMerchantUser record);

    int insertSelective(JdbMerchantUser record);

    JdbMerchantUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(JdbMerchantUser record);

    int updateByPrimaryKey(JdbMerchantUser record);
}