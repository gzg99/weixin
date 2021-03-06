package com.yq.dao;

import com.yq.entity.Goods;

import java.util.List;
import java.util.Map;


public interface GoodsDao {
	public int insert(Map<String,Object> map);
	
	public int update(Map<String,Object> map);
	
	public int upstatus(Map<String,Object> map);
	
	public int upisrec(Map<String,Object> map);
	
	public List<Goods> list(Goods goods); 
	
	public int count(Goods goods); 
	
	public List<Goods> listById(Goods goods);

	Goods selGoodsById(Goods goods);

	List<Goods> selServiceCollectionList(String oppenId);
}
