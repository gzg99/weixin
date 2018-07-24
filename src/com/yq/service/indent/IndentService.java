package com.yq.service.indent;

import java.util.Map;

import com.yq.entity.indent.JdbIndent;

public interface IndentService {

	public Map<String, Object> selectIndentByList(JdbIndent jdbIndent);

	int updateByPrimaryKeySelective(JdbIndent record);

	Map<String, Object> generalSituation();
	
	JdbIndent selectByPrimaryKey(String id);
}
