package com.yq.dao.jurisdiction.role;

import com.yq.entity.jurisdiction.role.JdbMerchantUser;

public interface JdbMerchantUserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    int insert(JdbMerchantUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    int insertSelective(JdbMerchantUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    JdbMerchantUser selectByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(JdbMerchantUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jdb_merchant_user
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(JdbMerchantUser record);
}