package com.yq.service.indent;

import java.util.List;
import java.util.Map;

import com.yq.entity.indent.JdbIndent;

public interface IndentService {

	public Map<String, Object> selectIndentByList(JdbIndent jdbIndent);

	int updateByPrimaryKeySelective(JdbIndent record);

	Map<String, Object> generalSituation(String userId);
	
	JdbIndent selectByPrimaryKey(String id);
	
	List<JdbIndent> downloadIndentByList(JdbIndent jdbIndent);
	
	int insert(JdbIndent jdbIndent);
}
