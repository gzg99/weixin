package com.yq.service.benefit.impl;

import java.text.SimpleDateFormat;
import java.util.*;

import com.yq.util.StringUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.benefit.JdbBenefitMapper;
import com.yq.dao.benefit.JdbLoveRelayMapper;
import com.yq.dao.benefit.JdbRelationMapper;
import com.yq.dao.benefit.JdvLoveoldplanMapper;
import com.yq.entity.benefit.JdbBenefit;
import com.yq.entity.benefit.JdbLoveRelay;
import com.yq.entity.benefit.JdbRelation;
import com.yq.entity.benefit.JdvLoveoldplan;
import com.yq.service.benefit.BenefitService;
import com.yq.util.UUIDUtils;

@Service
public class BenefitServiceImpl implements BenefitService {

	@Autowired
	JdbBenefitMapper jdbBenefitMapper;// 首图

	@Autowired
	JdbLoveRelayMapper jdbLoveRelayMapper;// 公益组织——爱心接力

	@Autowired
	JdvLoveoldplanMapper jdvLoveoldplanMapper;// 爱老计划

	@Autowired
	JdbRelationMapper jdbRelationMapper;// 联系方式

	@Override
	public JdbBenefit selectByPrimaryKey(String benefitid) {
		JdbBenefit jdbBenefit = jdbBenefitMapper.selectByPrimaryKey(benefitid);
		return jdbBenefit;
	}

	@Override
	public Map<String, Object> selectBenefitByList() {
		JdbBenefit jdbBenefit = jdbBenefitMapper.selectByPrimary();// 首图
		List<JdbLoveRelay> jdbLove = jdbLoveRelayMapper.selectByPrimaryList(null);// 公益组织——爱心接力
		JdbRelation jdbRelation = jdbRelationMapper.selectByPrimary();
		JdvLoveoldplan jdvLoveoldplan = jdvLoveoldplanMapper.selectByPrimary();// 爱老计划

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("jdbBenefit", jdbBenefit);
		map.put("jdbLove", jdbLove);
		map.put("jdbRelation", jdbRelation);
		map.put("jdvLoveoldplan", jdvLoveoldplan);
		return map;
	}

	/**
	 * 修改首页图
	 */
	@Override
	public int updateByPrimaryKey(JdbBenefit record) {
		int i = jdbBenefitMapper.updateByPrimaryKeySelective(record);
		return i;
	}

	/**
	 * 修改爱老计划图
	 */
	@Override
	public int updateLoveoldplanKey(JdvLoveoldplan record) {
		int i = jdvLoveoldplanMapper.updateByPrimaryKey(record);
		return i;
	}

	
	/**
	 * 修改公益组织——爱心接力
	 */
	@Override
	public int updateLoveRelayKey(JdbLoveRelay record) {
		int i = 0;
		String pictureNoteStr = record.getPictureNote();
		if(StringUtils.isNotBlank(pictureNoteStr)){
			String[] split = pictureNoteStr.split("<img");
			String pictureNote = split[0];
			record.setPictureNote(pictureNote);
			String pictureHelp = pictureNoteStr.replace(pictureNote, "");
			record.setPictureHelp(pictureHelp);
		}
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");
		String date =formatter.format(new Date());
		record.setCreateTime(date);
		if (StringUtils.isNotBlank(record.getId())) {// 有ID就修改
			i = jdbLoveRelayMapper.updateByPrimaryKey(record);
		} else {// 没ID就增加
			record.setId(UUIDUtils.getUUID());
			i = jdbLoveRelayMapper.insertSelective(record);
		}

		return i;
	}
	
	/**
	 * 修改联系方式
	 */
	@Override
	public int updateRelationKey(JdbRelation record) {
		int i = jdbRelationMapper.updateByPrimaryKey(record);
		return i;
	}

	@Override
	public JdbLoveRelay selectLoveRelayKey(String id) {
		JdbLoveRelay jdbLoveRelay = jdbLoveRelayMapper.selectByPrimaryKey(id);
		return jdbLoveRelay;
	}
	
	/**
	 * 爱老计划
	 */
	@Override
	public JdvLoveoldplan selectLoveoldplanKey(String id) {
		JdvLoveoldplan jdvLoveoldplan = jdvLoveoldplanMapper.selectByPrimaryKey(id);
		return jdvLoveoldplan;
	}

	@Override
	public int deleteByPrimaryKey(String id) {
		int i = jdbLoveRelayMapper.deleteByPrimaryKey(id);
		return i;
	}

	/**
	 * 公益组织——爱心接力
	 */
	@Override
	public Map<String, Object> selectByPrimaryList(String id) {
		List<String> pictureHelpList = new ArrayList<>();
		JdbLoveRelay jdbLove = jdbLoveRelayMapper.selectByPrimaryKey(id);// 公益组织——爱心接力
		String createTimeData = jdbLove.getCreateTime();
		if(StringUtils.isNotBlank(createTimeData)){
			String createTime = createTimeData.substring(5, 10);
			jdbLove.setCreateTime(createTime);
		}
		// 公益活动简图
		String pictureHelp = jdbLove.getPictureHelp();
		if(StringUtils.isNotBlank(pictureHelp)){
			String[] split = pictureHelp.split("<img");
			for (int i = 1; i < split.length; i++) {
				pictureHelpList.add("<img"+split[i]);
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("jdbLove", jdbLove);
		map.put("pictureHelpList", pictureHelpList);
		return map;
	}

	/**
	 * 联系我们
	 */
	@Override
	public JdbRelation selectByPrimary() {
		JdbRelation jdbRelation = jdbRelationMapper.selectByPrimary();
		return jdbRelation;
	}


}
