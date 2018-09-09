package com.yq.dao.message;

import java.util.List;
import java.util.Map;

import com.yq.entity.message.JdbMessage;

public interface JdbMessageMapper {
	int deleteByPrimaryKey(Long id);

	int insert(JdbMessage record);

	int insertSelective(JdbMessage record);

	JdbMessage selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(JdbMessage record);

	int updateByPrimaryKeyWithBLOBs(JdbMessage record);

	int updateByPrimaryKey(JdbMessage record);

	List<Map<String,Object>> listMessage();
}