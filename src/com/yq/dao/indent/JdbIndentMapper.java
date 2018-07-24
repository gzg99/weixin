package com.yq.dao.indent;

import java.util.List;
import java.util.Map;

import com.yq.entity.indent.JdbIndent;

public interface JdbIndentMapper {
    int deleteByPrimaryKey(String id);

    int insert(JdbIndent record);

    int insertSelective(JdbIndent record);

    JdbIndent selectByPrimaryKey(String id);

    List<JdbIndent> selectIndentByList(JdbIndent jdbIndent);
    
    List<JdbIndent> downloadIndentByList(JdbIndent jdbIndent);
    
    int total(JdbIndent jdbIndent);
    
    int updateByPrimaryKeySelective(JdbIndent record);
    
    int selecshipments(JdbIndent record);
    
    int selecsafeguard(JdbIndent record);
    
    Map<String,Object> yesterdayIndex(String userId);

    int updateByPrimaryKey(JdbIndent record);
}