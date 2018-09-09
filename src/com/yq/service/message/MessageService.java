package com.yq.service.message;

import java.util.List;
import java.util.Map;

import com.yq.entity.message.JdbMessage;
import com.yq.entity.message.JdbMessageReplay;

public interface MessageService {
	int deleteByPrimaryKey(Long id);

	int insertSelective(JdbMessage record);

	List<Map<String, Object>> listMessage();

	List<Map<String, Object>> selectByMapList(Long messageId);

	int insertSelectiveReplay(JdbMessageReplay record);
}
