package com.yq.service.message.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.message.JdbMessageMapper;
import com.yq.dao.message.JdbMessageReplayMapper;
import com.yq.entity.message.JdbMessage;
import com.yq.entity.message.JdbMessageReplay;
import com.yq.service.message.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	JdbMessageMapper JdbMessageMapper;
	
	@Autowired
	JdbMessageReplayMapper jdbMessageReplayMapper;
	/**
	 * 删除社区信息
	 */
	@Override
	public int deleteByPrimaryKey(Long id) {
		int del = JdbMessageMapper.deleteByPrimaryKey(id);
		return del;
	}

	/**
	 * 增加社区信息
	 */
	@Override
	public int insertSelective(JdbMessage record) {
		int ins = JdbMessageMapper.insertSelective(record);
		return ins;
	}

	/**
	 * 列表查询社区信息
	 */
	@Override
	public List<Map<String,Object>> listMessage() {
		List<Map<String,Object>> messageList = JdbMessageMapper.listMessage();
		return messageList;
	}

	/**
	 * 点赞
	 */
	@Override
	public int insertSelectiveReplay(JdbMessageReplay record) {
		int i = jdbMessageReplayMapper.insertSelective(record);
		return i;
	}

	/**
	 * 评论列表
	 */
	@Override
	public List<Map<String, Object>> selectByMapList(Long messageId) {
		List<Map<String, Object>> selectByMapList = jdbMessageReplayMapper.selectByMapList(messageId);
		return selectByMapList;
	}

}
