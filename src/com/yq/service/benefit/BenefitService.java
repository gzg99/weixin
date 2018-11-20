package com.yq.service.benefit;

import java.util.List;
import java.util.Map;

import com.yq.entity.benefit.JdbBenefit;
import com.yq.entity.benefit.JdbLoveRelay;
import com.yq.entity.benefit.JdbRelation;
import com.yq.entity.benefit.JdvLoveoldplan;

public interface BenefitService {

	JdbBenefit selectByPrimaryKey(String benefitid);

	Map<String, Object> selectBenefitByList();

	int updateByPrimaryKey(JdbBenefit record);

	int updateLoveoldplanKey(JdvLoveoldplan record);

	int updateLoveRelayKey(JdbLoveRelay record);

	int updateRelationKey(JdbRelation record);

	JdbLoveRelay selectLoveRelayKey(String id);

	int deleteByPrimaryKey(String id);
	
	JdvLoveoldplan selectLoveoldplanKey(String id);

	Map<String, Object> selectByPrimaryList(String id);// 公益组织——爱心接力
	
	JdbRelation selectByPrimary();

}
